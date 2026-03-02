import 'package:customtemplate/core/usecases/usecase.dart';
import 'package:customtemplate/features/auth/domain/repositories/auth_repository.dart';
import 'package:customtemplate/features/auth/domain/usecases/api_auth_me_get_use_case/api_auth_me_get_params.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:openapi/openapi.dart';

// GENERATED START - auth - use_case_api_auth_me_get_use_case
// This section is auto-generated. Do not edit manually.

@injectable
class ApiAuthMeGetUseCase extends UseCase<CurrentUserDto?, ApiAuthMeGetParams> {
  final AuthRepository repository;

  ApiAuthMeGetUseCase(this.repository);

  @override
  Future<Either> call(ApiAuthMeGetParams params) => repository.apiAuthMeGet(params: params);
}

// GENERATED END - auth - use_case_api_auth_me_get_use_case