import 'package:customtemplate/core/cache/cache_type.dart';
import 'package:customtemplate/core/config.dart';
import 'package:injectable/injectable.dart';

/// Configuration for cache behavior.
@singleton
class CacheConfig {
  /// Default TTL values for each cache type.
  final Map<CacheType, Duration> defaultTtl;

  /// Maximum number of items for memory cache.
  final int memoryCacheMaxSize;

  /// Maximum size in bytes for persistent cache.
  final int persistentCacheMaxSizeBytes;

  /// Cache directory path for persistent cache.
  final String persistentCacheDirectory;

  const CacheConfig({
    this.defaultTtl = defaultTtlCon,
    this.memoryCacheMaxSize = memoryCacheMaxSizeCon,
    this.persistentCacheMaxSizeBytes = persistentCacheMaxSizeBytesCon,
    this.persistentCacheDirectory = persistentCacheDirectoryCon,
  });

  /// Factory method for dependency injection.
  /// Returns a default configuration instance.
  @factoryMethod
  static CacheConfig create() => const CacheConfig();

  /// Gets the default TTL for a cache type.
  Duration getTtl(CacheType cacheType) {
    return defaultTtl[cacheType] ?? const Duration(hours: 1);
  }
}
