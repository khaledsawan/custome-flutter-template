import 'package:customtemplate/core/base/i_base_repo.dart';
import 'package:customtemplate/core/cache/cache_key_generator.dart';
import 'package:customtemplate/core/cache/cache_manager.dart';
import 'package:customtemplate/core/error/failure.dart';
import 'package:customtemplate/core/extension/core_extension.dart';
import 'package:customtemplate/core/model/fetch_data_params.dart';
import 'package:customtemplate/core/model/i_params.dart';
import 'package:dartz/dartz.dart';

class BaseRepository extends IBaseRepo {
  final CacheManager? _cacheManager;

  BaseRepository({required super.networkInfo, CacheManager? cacheManager})
    : _cacheManager = cacheManager;

  @override
  Future<Either<Object, T>> fetchData<T, P extends Params>({
    required FetchDataParams<T, P> params,
  }) async {
    // Backward compatibility: use old cache methods if new cache system not available
    if (_cacheManager == null || params.cacheType == null) {
      return await _fetchDataLegacy(params);
    }

    final isOffline = !networkInfo.isConnected;

    // When offline: prioritize cache
    if (isOffline) {
      return await _fetchFromCache<T, P>(params);
    }

    // When online: check cache first (unless forceRefresh)
    if (!params.forceRefresh) {
      final cachedResult = await _fetchFromCache<T, P>(params);

      // If cache hit and valid, check hash if provided
      final cachedData = cachedResult.fold((_) => null, (data) => data);
      if (cachedData != null) {
        // No hash checker, return cached data
        return cachedResult;
      }
      // Cache miss or expired, continue to fetch from API
    }

    // Fetch from API
    final result = await Task(
      () => params.getData(params.requestParams),
    ).attempt().mapLeftToFailure().run();
    return _handleResult(_normalizeEither(result), params);
  }

  /// Fetches data from cache.
  Future<Either<Object, T>> _fetchFromCache<T, P extends Params>(
    FetchDataParams<T, P> params,
  ) async {
    if (_cacheManager == null || params.cacheType == null) {
      return const Left(CacheFailure('No cache available'));
    }

    try {
      final cacheKey =
          params.cacheKey ??
          CacheKeyGenerator.generateKey('fetchData', params.requestParams);

      final cachedData = await _cacheManager.get<T>(
        params.cacheType!,
        cacheKey,
      );

      if (cachedData != null) {
        return Right(cachedData);
      }

      return const Left(CacheFailure('Cache miss'));
    } catch (e) {
      return Left(CacheFailure('Cache read error: $e'));
    }
  }

  /// Stores data in cache.
  Future<void> _storeInCache<T, P extends Params>(
    FetchDataParams<T, P> params,
    T data,
  ) async {
    if (_cacheManager == null || params.cacheType == null) {
      // Fallback to legacy cache methods

      return;
    }

    try {
      final cacheKey =
          params.cacheKey ??
          CacheKeyGenerator.generateKey('fetchData', params.requestParams);

      // Fire-and-forget caching for performance
      _cacheManager.put(params.cacheType!, cacheKey, data, ttl: params.ttl);
    } catch (e) {
      // Ignore cache errors - don't fail the request
    }
  }

  /// Handles caching of successful results.
  ///
  /// Caching is fire-and-forget (not awaited) for performance.
  /// Failures are not cached.
  Either<Object, T> _handleResult<T, P extends Params>(
    Either<Object, T> value,
    FetchDataParams<T, P> params,
  ) {
    value.fold((_) {}, (data) => _storeInCache(params, data));

    return value;
  }

  /// Legacy fetch data method for backward compatibility.
  Future<Either<Object, T>> _fetchDataLegacy<T, P extends Params>(
    FetchDataParams<T, P> params,
  ) async {
    final isOffline = !networkInfo.isConnected;

    if (isOffline) {
      return const Left(CacheFailure('No cache available'));
    }

    final apiResult = _normalizeEither(
      await Task(
        () => params.getData(params.requestParams),
      ).attempt().mapLeftToFailure().run().then((value) => value),
    );

    return apiResult;
  }

  /// Normalizes nested Either results (e.g., Left(Left(Failure))).
  Either<Object, T> _normalizeEither<T>(Either<Object, T> value) {
    return value.fold((error) {
      if (error is Either<Object, T>) {
        return error;
      }
      return Left(error);
    }, (data) => Right(data));
  }
}
