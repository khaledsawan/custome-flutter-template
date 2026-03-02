import 'package:customtemplate/core/cache/cache_type.dart';
import 'package:customtemplate/core/model/i_params.dart';

/// Parameters for fetching data through BaseRepository.fetchData().
///
/// The `getData` function must:
/// - Call the remote data source (which returns `Future<Response<T>>`)
/// - Extract data from the Response: `return response.data;`
/// - For void return types: `await remoteDataSource.method(); return;`
///
/// Example for non-void return type:
/// ```dart
/// getData: (params) async {
///   final response = await remoteDataSource.method(input: params.input);
///   return response.data; // Extract data here
/// }
/// ```
///
/// Example for void return type:
/// ```dart
/// getData: (params) async {
///   await remoteDataSource.method(input: params.input);
///   return; // No data to extract
/// }
/// ```
class FetchDataParams<T, P extends Params> extends Params {
  /// Function that fetches data from remote source.
  ///
  /// Must return `Future<T>` (not `Future<Response<T>>`).
  /// Extract `.data` from Response inside this function.
  final Future<T> Function(P params) getData;

  /// Request parameters passed to `getData` function.
  final P requestParams;

  /// Cache type to use for storing/retrieving data.
  /// If null, caching is disabled.
  final CacheType? cacheType;

  /// Time-to-live duration for cached data.
  /// If null, uses default TTL for the cache type.
  final Duration? ttl;

  /// If true, bypasses cache and always fetches from API.
  final bool forceRefresh;

  /// Custom cache key. If null, will be auto-generated from method name and params.
  final String? cacheKey;

  /// Hash checker function that validates cache freshness.
  /// Returns `true` if hash changed (should fetch from API),
  /// `false` if hash unchanged (can use cached data).

  const FetchDataParams({
    required this.getData,
    required this.requestParams,
    this.cacheType,
    this.ttl,
    this.forceRefresh = false,
    this.cacheKey,
  });
}
