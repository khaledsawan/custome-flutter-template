import 'package:customtemplate/core/base/i_base_repo.dart';
import 'package:customtemplate/core/extension/core_extension.dart';
import 'package:customtemplate/core/model/fetch_data_params.dart';
import 'package:customtemplate/core/model/i_params.dart';
import 'package:dartz/dartz.dart';

/// Base repository implementation that provides common data fetching logic.
///
/// Handles:
/// - Network connectivity checking
/// - Error handling via Task.attempt()
/// - Optional caching support
/// - Offline fallback to cached data
///
/// Usage example:
/// ```dart
/// return fetchData<ReturnType, ParamsClass>(
///   params: FetchDataParams(
///     getData: (params) async {
///       final response = await remoteDataSource.method(params.field);
///       return response.data; // Extract data from Response
///     },
///     requestParams: ParamsClass(value),
///   ),
/// );
/// ```
class BaseRepository extends IBaseRepo {
  BaseRepository({required super.networkInfo});

  /// Fetches data from remote source or cache based on network connectivity.
  ///
  /// When network is available:
  /// - Calls `params.getData(params.requestParams)` to fetch from remote
  /// - Optionally caches the result if `needCache` is true
  ///
  /// When offline:
  /// - Falls back to `params.cachedData()` if available
  ///
  /// The `getData` function should extract data from Response objects:
  /// - For non-void types: `return response.data;`
  /// - For void types: `await remoteDataSource.method(); return;`
  @override
  Future<Either<Object, T>> fetchData<T, P extends Params>({
    required FetchDataParams<T, P> params,
  }) async {
    // Fetch from API if connected or no cache available
    final bool fromApi = networkInfo.isConnected || params.cachedData == null;

    if (fromApi) {
      return Task(
        () => params.getData(params.requestParams),
      ).attempt().mapLeftToFailure().run().then(
        (value) => _handleResult(value, params.cacheData, params.needCache),
      );
    } else {
      // Use cached data when offline
      return Task(
        () => params.cachedData!(),
      ).attempt().mapLeftToFailure().run();
    }
  }

  /// Handles caching of successful results.
  ///
  /// Caching is fire-and-forget (not awaited) for performance.
  /// Failures are not cached.
  Either<Object, T> _handleResult<T>(
    Either<Object, T> value,
    Future<void> Function(T data)? cacheData,
    bool needCache,
  ) {
    if (needCache && cacheData != null) {
      value.fold((_) {}, (data) => cacheData(data));
    }
    return value;
  }
}
