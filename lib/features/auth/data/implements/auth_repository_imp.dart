// ignore: unused_import
import 'package:customtemplate/core/base/base_repo.dart';
import 'package:customtemplate/core/cache/cache_type.dart';
import 'package:customtemplate/core/model/fetch_data_params.dart';
import 'package:customtemplate/features/auth/data/sources/auth_remote_data_source.dart';
import 'package:customtemplate/features/auth/domain/repositories/auth_repository.dart';
import 'package:customtemplate/features/auth/domain/usecases/params.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:openapi/openapi.dart';

// GENERATED START - auth - repository_implementation
// This section is auto-generated. Do not edit manually.

@LazySingleton(as: AuthRepository)
class AuthRepositoryImp extends BaseRepository implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImp({
    required this.remoteDataSource,
    required super.networkInfo,
    super.cacheManager,
  });

  @override
  Future<Either<dynamic, void>> apiAuthAdminUsersUserIdStatusPatch({
    required ApiAuthAdminUsersUserIdStatusPatchParams params,
  }) async {
    return fetchData<void, ApiAuthAdminUsersUserIdStatusPatchParams>(
      params: FetchDataParams(
        getData: (p) async {
          await remoteDataSource.apiAuthAdminUsersUserIdStatusPatch(
            userId: p.userId,
            apiVersion: p.apiVersion,
            setUserActiveStatusRequest: p.setUserActiveStatusRequest,
          );
          return;
        },
        requestParams: params,
      ),
    );
  }

  @override
  Future<Either<dynamic, MessageResponseDto?>> apiAuthChangeEmailConfirmPost({
    required ApiAuthChangeEmailConfirmPostParams params,
  }) async {
    return fetchData<MessageResponseDto?, ApiAuthChangeEmailConfirmPostParams>(
      params: FetchDataParams(
        getData: (p) async {
          final response = await remoteDataSource.apiAuthChangeEmailConfirmPost(
            apiVersion: p.apiVersion,
            confirmEmailChangeCommand: p.confirmEmailChangeCommand,
          );
          return response.data;
        },
        requestParams: params,
      ),
    );
  }

  @override
  Future<Either<dynamic, MessageResponseDto?>> apiAuthChangeEmailRequestPost({
    required ApiAuthChangeEmailRequestPostParams params,
  }) async {
    return fetchData<MessageResponseDto?, ApiAuthChangeEmailRequestPostParams>(
      params: FetchDataParams(
        getData: (p) async {
          final response = await remoteDataSource.apiAuthChangeEmailRequestPost(
            apiVersion: p.apiVersion,
            requestEmailChangeCommand: p.requestEmailChangeCommand,
          );
          return response.data;
        },
        requestParams: params,
      ),
    );
  }

  @override
  Future<Either<dynamic, MessageResponseDto?>> apiAuthChangePasswordPost({
    required ApiAuthChangePasswordPostParams params,
  }) async {
    return fetchData<MessageResponseDto?, ApiAuthChangePasswordPostParams>(
      params: FetchDataParams(
        getData: (p) async {
          final response = await remoteDataSource.apiAuthChangePasswordPost(
            apiVersion: p.apiVersion,
            changePasswordCommand: p.changePasswordCommand,
          );
          return response.data;
        },
        requestParams: params,
      ),
    );
  }

  @override
  Future<Either<dynamic, MessageResponseDto?>> apiAuthConfirmEmailPost({
    required ApiAuthConfirmEmailPostParams params,
  }) async {
    return fetchData<MessageResponseDto?, ApiAuthConfirmEmailPostParams>(
      params: FetchDataParams(
        getData: (p) async {
          final response = await remoteDataSource.apiAuthConfirmEmailPost(
            apiVersion: p.apiVersion,
            confirmEmailCommand: p.confirmEmailCommand,
          );
          return response.data;
        },
        requestParams: params,
      ),
    );
  }

  @override
  Future<Either<dynamic, void>> apiAuthDeleteAccountPost({
    required ApiAuthDeleteAccountPostParams params,
  }) async {
    return fetchData<void, ApiAuthDeleteAccountPostParams>(
      params: FetchDataParams(
        getData: (p) async {
          await remoteDataSource.apiAuthDeleteAccountPost(
            apiVersion: p.apiVersion,
          );
          return;
        },
        requestParams: params,
      ),
    );
  }

  @override
  Future<Either<dynamic, MessageResponseDto?>> apiAuthForgotPasswordPost({
    required ApiAuthForgotPasswordPostParams params,
  }) async {
    return fetchData<MessageResponseDto?, ApiAuthForgotPasswordPostParams>(
      params: FetchDataParams(
        getData: (p) async {
          final response = await remoteDataSource.apiAuthForgotPasswordPost(
            apiVersion: p.apiVersion,
            forgotPasswordCommand: p.forgotPasswordCommand,
          );
          return response.data;
        },
        requestParams: params,
      ),
    );
  }

  @override
  Future<Either<dynamic, AuthResult?>> apiAuthLoginPost({
    required ApiAuthLoginPostParams params,
  }) async {
    return fetchData<AuthResult?, ApiAuthLoginPostParams>(
      params: FetchDataParams(
        getData: (p) async {
          final response = await remoteDataSource.apiAuthLoginPost(
            apiVersion: p.apiVersion,
            loginCommand: p.loginCommand,
          );
          return response.data;
        },
        cacheType: CacheType.secure,
        requestParams: params,
        forceRefresh: true,
      ),
    );
  }

  @override
  Future<Either<dynamic, void>> apiAuthLogoutPost({
    required ApiAuthLogoutPostParams params,
  }) async {
    return fetchData<void, ApiAuthLogoutPostParams>(
      params: FetchDataParams(
        getData: (p) async {
          await remoteDataSource.apiAuthLogoutPost(
            apiVersion: p.apiVersion,
            logoutCommand: p.logoutCommand,
          );
          return;
        },
        requestParams: params,
      ),
    );
  }

  @override
  Future<Either<dynamic, CurrentUserDto?>> apiAuthMeGet({
    required ApiAuthMeGetParams params,
  }) async {
    return fetchData<CurrentUserDto?, ApiAuthMeGetParams>(
      params: FetchDataParams(
        getData: (p) async {
          final response = await remoteDataSource.apiAuthMeGet(
            apiVersion: p.apiVersion,
          );
          return response.data;
        },
        requestParams: params,
      ),
    );
  }

  @override
  Future<Either<dynamic, AuthResult?>> apiAuthRefreshPost({
    required ApiAuthRefreshPostParams params,
  }) async {
    return fetchData<AuthResult?, ApiAuthRefreshPostParams>(
      params: FetchDataParams(
        getData: (p) async {
          final response = await remoteDataSource.apiAuthRefreshPost(
            apiVersion: p.apiVersion,
            refreshTokenCommand: p.refreshTokenCommand,
          );
          return response.data;
        },
        requestParams: params,
      ),
    );
  }

  @override
  Future<Either<dynamic, RegisterResponseDto?>> apiAuthRegisterPost({
    required ApiAuthRegisterPostParams params,
  }) async {
    return fetchData<RegisterResponseDto?, ApiAuthRegisterPostParams>(
      params: FetchDataParams(
        getData: (p) async {
          final response = await remoteDataSource.apiAuthRegisterPost(
            apiVersion: p.apiVersion,
            registerCommand: p.registerCommand,
          );
          return response.data;
        },
        requestParams: params,
      ),
    );
  }

  @override
  Future<Either<dynamic, MessageResponseDto?>> apiAuthResendConfirmationPost({
    required ApiAuthResendConfirmationPostParams params,
  }) async {
    return fetchData<MessageResponseDto?, ApiAuthResendConfirmationPostParams>(
      params: FetchDataParams(
        getData: (p) async {
          final response = await remoteDataSource.apiAuthResendConfirmationPost(
            apiVersion: p.apiVersion,
            resendConfirmationCommand: p.resendConfirmationCommand,
          );
          return response.data;
        },
        requestParams: params,
      ),
    );
  }

  @override
  Future<Either<dynamic, MessageResponseDto?>> apiAuthResetPasswordPost({
    required ApiAuthResetPasswordPostParams params,
  }) async {
    return fetchData<MessageResponseDto?, ApiAuthResetPasswordPostParams>(
      params: FetchDataParams(
        getData: (p) async {
          final response = await remoteDataSource.apiAuthResetPasswordPost(
            apiVersion: p.apiVersion,
            resetPasswordCommand: p.resetPasswordCommand,
          );
          return response.data;
        },
        requestParams: params,
      ),
    );
  }

  @override
  Future<Either<dynamic, TokenValidationDto?>> apiAuthValidateTokenPost({
    required ApiAuthValidateTokenPostParams params,
  }) async {
    return fetchData<TokenValidationDto?, ApiAuthValidateTokenPostParams>(
      params: FetchDataParams(
        getData: (p) async {
          final response = await remoteDataSource.apiAuthValidateTokenPost(
            apiVersion: p.apiVersion,
            validateTokenQuery: p.validateTokenQuery,
          );
          return response.data;
        },
        requestParams: params,
      ),
    );
  }
}

// GENERATED END - auth - repository_implementation
