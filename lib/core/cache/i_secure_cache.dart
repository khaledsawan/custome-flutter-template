import 'package:customtemplate/core/cache/i_cache.dart';

/// Interface for secure cache operations.
///
/// Secure cache stores data in encrypted storage (platform keychain/keystore).
/// This is the safest cache type for sensitive data like tokens, passwords, etc.
abstract class ISecureCache extends ICache {
  /// Checks if secure storage is available on the current platform.
  Future<bool> isAvailable();
}
