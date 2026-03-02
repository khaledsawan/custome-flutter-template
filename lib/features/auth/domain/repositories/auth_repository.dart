// ignore: unused_import
import 'package:customtemplate/features/auth/domain/usecases/params.dart';
import 'package:dartz/dartz.dart';
import 'package:openapi/openapi.dart';

// GENERATED START - auth - repository_interface
// This section is auto-generated. Do not edit manually.

abstract class AuthRepository {
  Future<Either<dynamic, void>> apiAuthAdminUsersUserIdStatusPatch({required ApiAuthAdminUsersUserIdStatusPatchParams params});
  Future<Either<dynamic, MessageResponseDto?>> apiAuthChangeEmailConfirmPost({required ApiAuthChangeEmailConfirmPostParams params});
  Future<Either<dynamic, MessageResponseDto?>> apiAuthChangeEmailRequestPost({required ApiAuthChangeEmailRequestPostParams params});
  Future<Either<dynamic, MessageResponseDto?>> apiAuthChangePasswordPost({required ApiAuthChangePasswordPostParams params});
  Future<Either<dynamic, MessageResponseDto?>> apiAuthConfirmEmailPost({required ApiAuthConfirmEmailPostParams params});
  Future<Either<dynamic, void>> apiAuthDeleteAccountPost({required ApiAuthDeleteAccountPostParams params});
  Future<Either<dynamic, MessageResponseDto?>> apiAuthForgotPasswordPost({required ApiAuthForgotPasswordPostParams params});
  Future<Either<dynamic, AuthResult?>> apiAuthLoginPost({required ApiAuthLoginPostParams params});
  Future<Either<dynamic, void>> apiAuthLogoutPost({required ApiAuthLogoutPostParams params});
  Future<Either<dynamic, CurrentUserDto?>> apiAuthMeGet({required ApiAuthMeGetParams params});
  Future<Either<dynamic, AuthResult?>> apiAuthRefreshPost({required ApiAuthRefreshPostParams params});
  Future<Either<dynamic, RegisterResponseDto?>> apiAuthRegisterPost({required ApiAuthRegisterPostParams params});
  Future<Either<dynamic, MessageResponseDto?>> apiAuthResendConfirmationPost({required ApiAuthResendConfirmationPostParams params});
  Future<Either<dynamic, MessageResponseDto?>> apiAuthResetPasswordPost({required ApiAuthResetPasswordPostParams params});
  Future<Either<dynamic, TokenValidationDto?>> apiAuthValidateTokenPost({required ApiAuthValidateTokenPostParams params});
}

// GENERATED END - auth - repository_interface