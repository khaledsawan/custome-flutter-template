import 'package:customtemplate/core/cache/i_cache.dart';

/// Interface for in-memory cache operations.
///
/// Memory cache stores data in RAM and is lost when the app is closed.
/// This is the fastest cache type but has limited capacity.
abstract class IMemoryCache extends ICache {
  /// Gets the current number of items in the cache.
  int get size;

  /// Gets the maximum number of items allowed in the cache.
  int get maxSize;

  /// Sets the maximum number of items allowed in the cache.
  set maxSize(int value);

  /// Removes the least recently used (LRU) items if cache is full.
  Future<void> evictIfNeeded();
}
