import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:customtemplate/core/model/i_params.dart';
import 'package:customtemplate/core/usecases/usecase.dart';

/// Utility for generating cache keys from request parameters.
class CacheKeyGenerator {
  /// Generates a cache key from a method name and parameters.
  ///
  /// [methodName] - Name of the method/endpoint.
  /// [params] - Request parameters (must extend Params).
  ///
  /// Returns a unique cache key string.
  static String generateKey(String methodName, Params params) {
    // Convert params to JSON string for hashing
    final paramsJson = _paramsToJsonString(params);
    final hash = sha256
        .convert(utf8.encode('$methodName:$paramsJson'))
        .toString();
    return '${methodName}_$hash';
  }

  /// Generates a simple cache key from method name and custom identifier.
  ///
  /// [methodName] - Name of the method/endpoint.
  /// [identifier] - Custom identifier (e.g., user ID, resource ID).
  static String generateSimpleKey(String methodName, String identifier) {
    return '${methodName}_$identifier';
  }

  /// Generates a cache key with custom prefix.
  ///
  /// [prefix] - Prefix for the cache key (e.g., feature name).
  /// [methodName] - Name of the method/endpoint.
  /// [params] - Request parameters.
  static String generateKeyWithPrefix(
    String prefix,
    String methodName,
    Params params,
  ) {
    final key = generateKey(methodName, params);
    return '${prefix}_$key';
  }

  /// Converts params to a JSON string representation for hashing.
  static String _paramsToJsonString(Params params) {
    if (params is NoParams) {
      return '{}';
    }

    // Try to convert to map representation
    try {
      // For objects with toString() or toJson(), use that
      // Otherwise, use runtimeType and hashCode
      if (params.toString() != params.runtimeType.toString()) {
        return params.toString();
      }
      return '${params.runtimeType}_${params.hashCode}';
    } catch (e) {
      // Fallback to type and hashCode
      return '${params.runtimeType}_${params.hashCode}';
    }
  }
}
