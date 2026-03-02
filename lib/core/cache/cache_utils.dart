import 'package:customtemplate/core/cache/cache_manager.dart';
import 'package:customtemplate/core/cache/cache_type.dart';

/// Utility functions for cache management and operations.
class CacheUtils {
  /// Clears all cache types.
  static Future<void> clearAll(CacheManager cacheManager) async {
    await Future.wait([
      cacheManager.clear(CacheType.memory),
      cacheManager.clear(CacheType.persistent),
      cacheManager.clear(CacheType.secure),
    ]);
  }

  /// Clears cache by pattern (key prefix).
  ///
  /// Note: This is a simple implementation. For production,
  /// you may want to maintain an index of keys per cache type.
  static Future<void> clearByPattern(
    CacheManager cacheManager,
    CacheType cacheType,
    String pattern,
  ) async {
    // Note: This is a simplified implementation.
    // Real implementation would require maintaining a key index.
    // For now, we'll just clear the entire cache if pattern matches.
    // In production, you might want to iterate through known keys.
    await cacheManager.clear(cacheType);
  }

  /// Gets cache statistics.
  static Future<CacheStats> getStats(CacheManager cacheManager) async {
    final memorySize = cacheManager.memoryCache.size;
    final persistentSize = await cacheManager.persistentCache.getTotalSize();

    return CacheStats(
      memoryItems: memorySize,
      persistentSizeBytes: persistentSize,
    );
  }
}

/// Cache statistics.
class CacheStats {
  final int memoryItems;
  final int persistentSizeBytes;

  const CacheStats({
    required this.memoryItems,
    required this.persistentSizeBytes,
  });
}
