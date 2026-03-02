import 'package:customtemplate/core/usecases/usecase.dart';
import 'package:customtemplate/features/auth/domain/repositories/auth_repository.dart';
import 'package:customtemplate/features/auth/domain/usecases/api_auth_delete_account_post_use_case/api_auth_delete_account_post_params.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

// GENERATED START - auth - use_case_api_auth_delete_account_post_use_case
// This section is auto-generated. Do not edit manually.

@injectable
class ApiAuthDeleteAccountPostUseCase extends UseCase<void, ApiAuthDeleteAccountPostParams> {
  final AuthRepository repository;

  ApiAuthDeleteAccountPostUseCase(this.repository);

  @override
  Future<Either> call(ApiAuthDeleteAccountPostParams params) => repository.apiAuthDeleteAccountPost(params: params);
}

// GENERATED END - auth - use_case_api_auth_delete_account_post_use_case