import 'dart:convert';

import 'package:customtemplate/core/cache/i_secure_cache.dart';
import 'package:customtemplate/core/error/exceptions.dart';
import 'package:customtemplate/core/extension/model_converter_helper.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

/// Secure cache implementation using flutter_secure_storage.
///
/// Stores data in encrypted storage (platform keychain/keystore).
/// This is the safest cache type for sensitive data.
@singleton
class SecureCacheImpl implements ISecureCache {
  final FlutterSecureStorage _storage;
  static const String _expirationPrefix = '_exp_';
  static const String _createdAtPrefix = '_created_';
  final ModelConverterHelper _helper;
  SecureCacheImpl({required ModelConverterHelper helper})
    : _helper = helper,
      _storage = const FlutterSecureStorage(
        aOptions: AndroidOptions(),
        iOptions: IOSOptions(
          accessibility: KeychainAccessibility.first_unlock_this_device,
        ),
      );

  @override
  Future<bool> isAvailable() async {
    try {
      // Try to write and read a test value
      const testKey = '_test_availability_';
      const testValue = 'test';
      await _storage.write(key: testKey, value: testValue);
      final readValue = await _storage.read(key: testKey);
      await _storage.delete(key: testKey);
      return readValue == testValue;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<void> put<T>(String key, T value, {Duration? ttl}) async {
    try {
      final jsonString = jsonEncode(_helper.toCacheValue(value));
      await _storage.write(key: key, value: jsonString);

      // Store expiration time if TTL is provided
      if (ttl != null) {
        final expiration = DateTime.now().add(ttl);
        await _storage.write(
          key: '$_expirationPrefix$key',
          value: expiration.toIso8601String(),
        );
      } else {
        // Remove expiration if no TTL
        await _storage.delete(key: '$_expirationPrefix$key');
      }

      // Store creation time
      await _storage.write(
        key: '$_createdAtPrefix$key',
        value: DateTime.now().toIso8601String(),
      );
    } catch (e) {
      throw CacheException('Failed to store value in secure cache: $e');
    }
  }

  @override
  Future<T?> get<T>(String key) async {
    try {
      // Check expiration
      final expirationStr = await _storage.read(key: '$_expirationPrefix$key');
      if (expirationStr != null) {
        final expiration = DateTime.parse(expirationStr);
        if (DateTime.now().isAfter(expiration)) {
          await delete(key);
          return null;
        }
      }

      // Read the value
      final jsonString = await _storage.read(key: key);
      if (jsonString == null) return null;

      final jsonData = jsonDecode(jsonString);
      return _helper.fromCacheValue<T>(jsonData);
    } catch (e) {
      // Corrupted data or parse error
      await delete(key);
      return null;
    }
  }

  @override
  Future<void> delete(String key) async {
    try {
      await _storage.delete(key: key);
      await _storage.delete(key: '$_expirationPrefix$key');
      await _storage.delete(key: '$_createdAtPrefix$key');
    } catch (e) {
      // Ignore errors during deletion
    }
  }

  @override
  Future<void> clear() async {
    try {
      await _storage.deleteAll();
    } catch (e) {
      throw CacheException('Failed to clear secure cache: $e');
    }
  }

  @override
  Future<bool> exists(String key) async {
    try {
      final value = await _storage.read(key: key);
      if (value == null) return false;

      // Check expiration
      final expirationStr = await _storage.read(key: '$_expirationPrefix$key');
      if (expirationStr != null) {
        final expiration = DateTime.parse(expirationStr);
        if (DateTime.now().isAfter(expiration)) {
          await delete(key);
          return false;
        }
      }

      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<DateTime?> getExpiration(String key) async {
    try {
      final expirationStr = await _storage.read(key: '$_expirationPrefix$key');
      if (expirationStr == null) return null;

      final expiration = DateTime.parse(expirationStr);
      if (DateTime.now().isAfter(expiration)) {
        await delete(key);
        return null;
      }

      return expiration;
    } catch (e) {
      return null;
    }
  }
}
