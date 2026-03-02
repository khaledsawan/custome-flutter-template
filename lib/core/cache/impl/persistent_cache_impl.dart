import 'dart:convert';
import 'dart:io';

import 'package:customtemplate/core/cache/cache_config.dart';
import 'package:customtemplate/core/cache/i_persistent_cache.dart';
import 'package:customtemplate/core/extension/model_converter_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_ce/hive_ce.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as path;

@singleton
class PersistentCacheImpl implements IPersistentCache {
  static const _boxName = 'persistent_cache';

  final CacheConfig _config;
  final ModelConverterHelper _helper;

  Box<dynamic>? _box;
  int _maxSizeBytes;

  PersistentCacheImpl({
    required CacheConfig config,
    required ModelConverterHelper helper,
  }) : _config = config,
       _helper = helper,
       _maxSizeBytes = config.persistentCacheMaxSizeBytes;

  Future<Box<dynamic>> _ensureBox() async {
    if (_box != null && _box!.isOpen) return _box!;

    if (!kIsWeb && !Hive.isBoxOpen(_boxName)) {
      final cacheDir = Directory(
        path.join(_config.persistentCacheDirectory, 'customtemplate_cache'),
      );
      if (!await cacheDir.exists()) {
        await cacheDir.create(recursive: true);
      }
      Hive.init(cacheDir.path);
    }

    _box = await Hive.openBox<dynamic>(_boxName);
    return _box!;
  }

  Map<String, dynamic>? _entryFromRaw(dynamic raw) {
    if (raw is Map) {
      return raw.map(
        (key, value) => MapEntry(key.toString(), value),
      );
    }
    return null;
  }

  bool _isExpired(Map<String, dynamic> entry) {
    final exp = entry['expiration'];
    if (exp == null) return false;
    final expiration = DateTime.tryParse(exp.toString());
    if (expiration == null) return false;
    return DateTime.now().isAfter(expiration);
  }

  DateTime _createdAt(Map<String, dynamic> entry) {
    final createdAt = DateTime.tryParse(entry['createdAt']?.toString() ?? '');
    return createdAt ?? DateTime.fromMillisecondsSinceEpoch(0);
  }

  @override
  int get maxSizeBytes => _maxSizeBytes;

  @override
  set maxSizeBytes(int value) {
    _maxSizeBytes = value;
    evictIfNeeded();
  }

  @override
  Future<int> getTotalSize() async {
    final box = await _ensureBox();
    var total = 0;
    for (final key in box.keys) {
      final raw = box.get(key);
      if (raw == null) continue;
      try {
        total += utf8.encode(jsonEncode(raw)).length;
      } catch (_) {
        total += raw.toString().length;
      }
    }
    return total;
  }

  @override
  Future<void> put<T>(String key, T value, {Duration? ttl}) async {
    final box = await _ensureBox();
    final createdAt = DateTime.now();
    final expiration = ttl != null ? createdAt.add(ttl) : null;

    await box.put(key, {
      'value': _helper.toCacheValue(value),
      'createdAt': createdAt.toIso8601String(),
      'expiration': expiration?.toIso8601String(),
    });

    await evictIfNeeded();
  }

  @override
  Future<T?> get<T>(String key) async {
    final box = await _ensureBox();
    final raw = box.get(key);
    final entry = _entryFromRaw(raw);
    if (entry == null) return null;

    if (_isExpired(entry)) {
      await delete(key);
      return null;
    }

    return _helper.fromCacheValue<T>(entry['value']);
  }

  @override
  Future<void> delete(String key) async {
    final box = await _ensureBox();
    await box.delete(key);
  }

  @override
  Future<void> clear() async {
    final box = await _ensureBox();
    await box.clear();
  }

  @override
  Future<bool> exists(String key) async {
    final box = await _ensureBox();
    final raw = box.get(key);
    final entry = _entryFromRaw(raw);
    if (entry == null) return false;

    if (_isExpired(entry)) {
      await delete(key);
      return false;
    }

    return true;
  }

  @override
  Future<DateTime?> getExpiration(String key) async {
    final box = await _ensureBox();
    final raw = box.get(key);
    final entry = _entryFromRaw(raw);
    if (entry == null) return null;

    if (_isExpired(entry)) {
      await delete(key);
      return null;
    }

    final exp = entry['expiration'];
    if (exp == null) return null;
    return DateTime.tryParse(exp.toString());
  }

  @override
  Future<void> evictIfNeeded() async {
    final box = await _ensureBox();

    // Remove expired entries first.
    final keysToDelete = <dynamic>[];
    for (final key in box.keys) {
      final entry = _entryFromRaw(box.get(key));
      if (entry == null || _isExpired(entry)) {
        keysToDelete.add(key);
      }
    }
    if (keysToDelete.isNotEmpty) {
      await box.deleteAll(keysToDelete);
    }

    var totalSize = await getTotalSize();
    if (totalSize <= _maxSizeBytes) return;

    final entries = <MapEntry<dynamic, Map<String, dynamic>>>[];
    for (final key in box.keys) {
      final entry = _entryFromRaw(box.get(key));
      if (entry != null) {
        entries.add(MapEntry(key, entry));
      }
    }

    entries.sort((a, b) => _createdAt(a.value).compareTo(_createdAt(b.value)));

    for (final item in entries) {
      if (totalSize <= _maxSizeBytes) break;
      final raw = box.get(item.key);
      await box.delete(item.key);
      if (raw != null) {
        try {
          totalSize -= utf8.encode(jsonEncode(raw)).length;
        } catch (_) {
          totalSize -= raw.toString().length;
        }
      }
    }
  }
}
