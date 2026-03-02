import 'package:customtemplate/core/usecases/usecase.dart';
import 'package:customtemplate/features/auth/domain/repositories/auth_repository.dart';
import 'package:customtemplate/features/auth/domain/usecases/api_auth_admin_users_user_id_status_patch_use_case/api_auth_admin_users_user_id_status_patch_params.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

// GENERATED START - auth - use_case_api_auth_admin_users_user_id_status_patch_use_case
// This section is auto-generated. Do not edit manually.

@injectable
class ApiAuthAdminUsersUserIdStatusPatchUseCase extends UseCase<void, ApiAuthAdminUsersUserIdStatusPatchParams> {
  final AuthRepository repository;

  ApiAuthAdminUsersUserIdStatusPatchUseCase(this.repository);

  @override
  Future<Either> call(ApiAuthAdminUsersUserIdStatusPatchParams params) => repository.apiAuthAdminUsersUserIdStatusPatch(params: params);
}

// GENERATED END - auth - use_case_api_auth_admin_users_user_id_status_patch_use_case