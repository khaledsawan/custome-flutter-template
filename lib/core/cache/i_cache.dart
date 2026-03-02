/// Base interface for all cache types.
///
/// Provides common cache operations that all cache implementations must support.
abstract class ICache {
  /// Stores a value in the cache with the given key.
  ///
  /// [key] - Unique identifier for the cached value.
  /// [value] - The value to cache (must be serializable).
  /// [ttl] - Optional time-to-live duration. If provided, the cache entry will expire after this duration.
  Future<void> put<T>(String key, T value, {Duration? ttl});

  /// Retrieves a value from the cache.
  ///
  /// Returns the cached value if it exists and hasn't expired, otherwise returns null.
  Future<T?> get<T>(String key);

  /// Removes a value from the cache.
  Future<void> delete(String key);

  /// Clears all cached values.
  Future<void> clear();

  /// Checks if a key exists in the cache and hasn't expired.
  Future<bool> exists(String key);

  /// Gets the expiration time for a cached key (if TTL was set).
  Future<DateTime?> getExpiration(String key);
}
