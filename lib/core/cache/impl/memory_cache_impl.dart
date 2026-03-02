import 'dart:async';
import 'dart:collection';

import 'package:customtemplate/core/cache/cache_config.dart';
import 'package:customtemplate/core/cache/i_memory_cache.dart';
import 'package:injectable/injectable.dart';

/// Cache entry with expiration support.
class _CacheEntry<T> {
  final T value;
  final DateTime? expiration;

  _CacheEntry(this.value, {Duration? ttl})
    : expiration = ttl != null ? DateTime.now().add(ttl) : null;

  bool get isExpired =>
      expiration != null && DateTime.now().isAfter(expiration!);
}

/// In-memory cache implementation using LinkedHashMap for LRU behavior.
@singleton
class MemoryCacheImpl implements IMemoryCache {
  final LinkedHashMap<String, _CacheEntry> _cache = LinkedHashMap();
  int _maxSize;

  MemoryCacheImpl(CacheConfig config) : _maxSize = config.memoryCacheMaxSize;

  @override
  int get size => _cache.length;

  @override
  int get maxSize => _maxSize;

  @override
  set maxSize(int value) {
    _maxSize = value;
    evictIfNeeded();
  }

  @override
  Future<void> put<T>(String key, T value, {Duration? ttl}) async {
    // Remove expired entries
    _removeExpired();

    // Evict if needed before adding
    await evictIfNeeded();

    // Add to cache (move to end for LRU)
    _cache.remove(key); // Remove if exists
    _cache[key] = _CacheEntry(value, ttl: ttl);
  }

  @override
  Future<T?> get<T>(String key) async {
    final entry = _cache[key];
    if (entry == null) return null;

    // Check expiration
    if (entry.isExpired) {
      _cache.remove(key);
      return null;
    }

    // Move to end for LRU (access order)
    _cache.remove(key);
    _cache[key] = entry;

    return entry.value as T;
  }

  @override
  Future<void> delete(String key) async {
    _cache.remove(key);
  }

  @override
  Future<void> clear() async {
    _cache.clear();
  }

  @override
  Future<bool> exists(String key) async {
    final entry = _cache[key];
    if (entry == null) return false;
    if (entry.isExpired) {
      _cache.remove(key);
      return false;
    }
    return true;
  }

  @override
  Future<DateTime?> getExpiration(String key) async {
    final entry = _cache[key];
    if (entry == null || entry.isExpired) {
      if (entry?.isExpired == true) {
        _cache.remove(key);
      }
      return null;
    }
    return entry.expiration;
  }

  @override
  Future<void> evictIfNeeded() async {
    _removeExpired();

    while (_cache.length >= _maxSize && _cache.isNotEmpty) {
      // Remove first item (least recently used)
      _cache.remove(_cache.keys.first);
    }
  }

  void _removeExpired() {
    final expiredKeys = _cache.entries
        .where((entry) => entry.value.isExpired)
        .map((entry) => entry.key)
        .toList();
    for (final key in expiredKeys) {
      _cache.remove(key);
    }
  }
}
