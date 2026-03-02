import 'package:customtemplate/core/usecases/usecase.dart';
import 'package:customtemplate/features/auth/domain/repositories/auth_repository.dart';
import 'package:customtemplate/features/auth/domain/usecases/api_auth_change_email_request_post_use_case/api_auth_change_email_request_post_params.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:openapi/openapi.dart';

// GENERATED START - auth - use_case_api_auth_change_email_request_post_use_case
// This section is auto-generated. Do not edit manually.

@injectable
class ApiAuthChangeEmailRequestPostUseCase extends UseCase<MessageResponseDto?, ApiAuthChangeEmailRequestPostParams> {
  final AuthRepository repository;

  ApiAuthChangeEmailRequestPostUseCase(this.repository);

  @override
  Future<Either> call(ApiAuthChangeEmailRequestPostParams params) => repository.apiAuthChangeEmailRequestPost(params: params);
}

// GENERATED END - auth - use_case_api_auth_change_email_request_post_use_case