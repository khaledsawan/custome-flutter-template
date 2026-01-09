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

  /// Optional: Function to cache successful data locally.
  /// Called asynchronously (fire-and-forget) after successful fetch.
  final Future<void> Function(T data)? cacheData;

  /// Optional: Function to retrieve cached data.
  /// Used when network is unavailable.
  final Future<T> Function()? cachedData;

  /// Whether to cache the fetched data.
  /// Only effective if `cacheData` is provided.
  final bool needCache;

  /// Request parameters passed to `getData` function.
  final P requestParams;

  const FetchDataParams({
    required this.getData,
    required this.requestParams,
    this.cacheData,
    this.cachedData,
    this.needCache = false,
  });
}
