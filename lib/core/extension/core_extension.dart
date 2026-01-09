import 'package:dartz/dartz.dart';

/// Extension for Task to handle error mapping.
///
/// Currently maps errors to themselves. Can be extended in the future
/// to transform errors (e.g., convert HTTP exceptions to domain errors).
extension TaskX<T extends Either<Object, U>, U> on Task<T> {
  /// Maps left (error) side of Either to failure.
  ///
  /// This is a placeholder for potential future error transformation logic.
  Task<Either<Object, U>> mapLeftToFailure() {
    return map(
      (either) => either.leftMap((obj) {
        return obj;
      }),
    );
  }
}
