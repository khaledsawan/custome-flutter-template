import 'package:customtemplate/core/usecases/usecase.dart';
import 'package:customtemplate/features/auth/domain/repositories/auth_repository.dart';
import 'package:customtemplate/features/auth/domain/usecases/api_auth_logout_post_use_case/api_auth_logout_post_params.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

// GENERATED START - auth - use_case_api_auth_logout_post_use_case
// This section is auto-generated. Do not edit manually.

@injectable
class ApiAuthLogoutPostUseCase extends UseCase<void, ApiAuthLogoutPostParams> {
  final AuthRepository repository;

  ApiAuthLogoutPostUseCase(this.repository);

  @override
  Future<Either> call(ApiAuthLogoutPostParams params) => repository.apiAuthLogoutPost(params: params);
}

// GENERATED END - auth - use_case_api_auth_logout_post_use_case