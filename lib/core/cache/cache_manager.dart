import 'package:customtemplate/core/cache/cache_config.dart';
import 'package:customtemplate/core/cache/cache_type.dart';
import 'package:customtemplate/core/cache/i_cache.dart';
import 'package:customtemplate/core/cache/i_memory_cache.dart';
import 'package:customtemplate/core/cache/i_persistent_cache.dart';
import 'package:customtemplate/core/cache/i_secure_cache.dart';
import 'package:customtemplate/core/cache/impl/memory_cache_impl.dart';
import 'package:customtemplate/core/cache/impl/persistent_cache_impl.dart';
import 'package:customtemplate/core/cache/impl/secure_cache_impl.dart';
import 'package:injectable/injectable.dart';

/// Manages all three cache types and provides a unified interface.
@singleton
class CacheManager {
  final IMemoryCache _memoryCache;
  final ISecureCache _secureCache;
  final IPersistentCache _persistentCache;
  final CacheConfig _config;

  CacheManager({
    required CacheConfig config,
    required MemoryCacheImpl memoryCache,
    required SecureCacheImpl secureCache,
    required PersistentCacheImpl persistentCache,
  }) : _config = config,
       _memoryCache = memoryCache,
       _persistentCache = persistentCache,
       _secureCache = secureCache;

  /// Gets the appropriate cache based on cache type.
  ICache _getCache(CacheType cacheType) {
    switch (cacheType) {
      case CacheType.memory:
        return _memoryCache;
      case CacheType.persistent:
        return _persistentCache;
      case CacheType.secure:
        return _secureCache;
    }
  }

  /// Stores a value in the specified cache type.
  Future<void> put<T>(
    CacheType cacheType,
    String key,
    T value, {
    Duration? ttl,
  }) async {
    final cache = _getCache(cacheType);
    final effectiveTtl = ttl ?? _config.getTtl(cacheType);
    await cache.put(key, value, ttl: effectiveTtl);
  }

  /// Retrieves a value from the specified cache type.
  Future<T?> get<T>(CacheType cacheType, String key) async {
    final cache = _getCache(cacheType);
  return await cache.get<T>(key);
  }

  /// Deletes a value from the specified cache type.
  Future<void> delete(CacheType cacheType, String key) async {
    final cache = _getCache(cacheType);
    await cache.delete(key);
  }

  /// Clears all values from the specified cache type.
  Future<void> clear(CacheType cacheType) async {
    final cache = _getCache(cacheType);
    await cache.clear();
  }

  /// Checks if a key exists in the specified cache type.
  Future<bool> exists(CacheType cacheType, String key) async {
    final cache = _getCache(cacheType);
    return await cache.exists(key);
  }

  /// Gets the expiration time for a cached key.
  Future<DateTime?> getExpiration(CacheType cacheType, String key) async {
    final cache = _getCache(cacheType);
    return await cache.getExpiration(key);
  }

  /// Gets the memory cache instance.
  IMemoryCache get memoryCache => _memoryCache;

  /// Gets the persistent cache instance.
  IPersistentCache get persistentCache => _persistentCache;

  /// Gets the secure cache instance.
  ISecureCache get secureCache => _secureCache;
}
