import 'package:customtemplate/core/cache/cache_type.dart';

const String baseUrl = 'https://localhost:5001/';

const Map<CacheType, Duration> defaultTtlCon = {
  CacheType.memory: Duration(hours: 1),
  CacheType.persistent: Duration(days: 7),
  CacheType.secure: Duration(days: 30),
};

/// Maximum number of items for memory cache.
const int memoryCacheMaxSizeCon = 100;

/// Maximum size in bytes for persistent cache.
const int persistentCacheMaxSizeBytesCon = 50 * 1024 * 1024; // 50 MB

/// Cache directory path for persistent cache.
const String persistentCacheDirectoryCon = 'cache';
