/// Cache type enum for selecting the appropriate cache storage.
enum CacheType {
  /// In-memory cache (lost on app restart) - fastest access.
  memory,

  /// Persistent cache (survives app restart) - local file/database storage.
  persistent,

  /// Secure cache (survives restart + encrypted) - for sensitive data.
  secure,
}
