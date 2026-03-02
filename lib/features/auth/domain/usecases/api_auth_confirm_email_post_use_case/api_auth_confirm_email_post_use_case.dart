import 'package:customtemplate/core/usecases/usecase.dart';
import 'package:customtemplate/features/auth/domain/repositories/auth_repository.dart';
import 'package:customtemplate/features/auth/domain/usecases/api_auth_confirm_email_post_use_case/api_auth_confirm_email_post_params.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:openapi/openapi.dart';

// GENERATED START - auth - use_case_api_auth_confirm_email_post_use_case
// This section is auto-generated. Do not edit manually.

@injectable
class ApiAuthConfirmEmailPostUseCase extends UseCase<MessageResponseDto?, ApiAuthConfirmEmailPostParams> {
  final AuthRepository repository;

  ApiAuthConfirmEmailPostUseCase(this.repository);

  @override
  Future<Either> call(ApiAuthConfirmEmailPostParams params) => repository.apiAuthConfirmEmailPost(params: params);
}

// GENERATED END - auth - use_case_api_auth_confirm_email_post_use_case