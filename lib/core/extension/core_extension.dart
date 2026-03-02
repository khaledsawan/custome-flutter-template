import 'package:customtemplate/core/dio/dio_error_mapper.dart';
import 'package:customtemplate/core/error/exceptions.dart';
import 'package:customtemplate/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart' show DioException;

/// Extension for Task to handle error mapping.
extension TaskX<T extends Either<Object, U>, U> on Task<T> {
  Task<Either<Object, U>> mapLeftToFailure() {
    return map((either) => either.leftMap(_mapErrorToFailure));
  }

  Failure _mapErrorToFailure(Object error) {
    // If already a Failure, return as-is
    if (error is Failure) return error;

    // Handle DioException through mapper
    if (error is DioException) {
      return DioErrorMapper.map(error);
    }

    // Handle CacheException
    if (error is CacheException) {
      return const CacheFailure();
    }

    // Handle ServerException
    if (error is ServerException) {
      return const ServerFailure(message: 'Server error occurred');
    }

    // Handle parsing errors
    if (error is FormatException) {
      return const ParsingFailure();
    }

    // Fallback for unknown errors
    return UnknownFailure(error.toString());
  }
}
