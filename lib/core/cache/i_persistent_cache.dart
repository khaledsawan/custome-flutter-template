import 'package:customtemplate/core/cache/i_cache.dart';

/// Interface for persistent cache operations.
///
/// Persistent cache stores data on disk and survives app restarts.
/// This is slower than memory cache but provides persistence.
abstract class IPersistentCache extends ICache {
  /// Gets the total size of the cache in bytes.
  Future<int> getTotalSize();

  /// Gets the maximum cache size in bytes.
  int get maxSizeBytes;

  /// Sets the maximum cache size in bytes.
  set maxSizeBytes(int value);

  /// Removes old entries if cache exceeds max size.
  Future<void> evictIfNeeded();
}
