import 'package:customtemplate/core/usecases/usecase.dart';
import 'package:customtemplate/features/auth/domain/repositories/auth_repository.dart';
import 'package:customtemplate/features/auth/domain/usecases/api_auth_change_password_post_use_case/api_auth_change_password_post_params.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:openapi/openapi.dart';

// GENERATED START - auth - use_case_api_auth_change_password_post_use_case
// This section is auto-generated. Do not edit manually.

@injectable
class ApiAuthChangePasswordPostUseCase extends UseCase<MessageResponseDto?, ApiAuthChangePasswordPostParams> {
  final AuthRepository repository;

  ApiAuthChangePasswordPostUseCase(this.repository);

  @override
  Future<Either> call(ApiAuthChangePasswordPostParams params) => repository.apiAuthChangePasswordPost(params: params);
}

// GENERATED END - auth - use_case_api_auth_change_password_post_use_case