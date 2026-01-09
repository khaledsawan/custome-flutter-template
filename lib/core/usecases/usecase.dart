import 'package:customtemplate/core/model/i_params.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

// ignore: avoid_types_as_parameter_names
abstract class UseCase<Type, Params> {
  Future<Either> call(Params params);
}

/// Parameters class for methods that don't require any input.
class NoParams extends Equatable implements Params {
  const NoParams();

  @override
  List<Object> get props => [];
}
