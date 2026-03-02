// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/serializer.dart' as _i138;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:openapi/openapi.dart' as _i711;

import '../core/cache/cache_config.dart' as _i606;
import '../core/cache/cache_manager.dart' as _i210;
import '../core/cache/impl/memory_cache_impl.dart' as _i130;
import '../core/cache/impl/persistent_cache_impl.dart' as _i498;
import '../core/cache/impl/secure_cache_impl.dart' as _i817;
import '../core/extension/model_converter_helper.dart' as _i927;
import '../core/lifecycle/app_lifecycle_service.dart' as _i1073;
import '../core/network/network_info.dart' as _i6;
import '../core/network/network_info_impl.dart' as _i927;
import '../features/auth/data/implements/auth_repository_imp.dart' as _i146;
import '../features/auth/data/sources/auth_remote_data_source.dart' as _i162;
import '../features/auth/domain/repositories/auth_repository.dart' as _i869;
import '../features/auth/domain/usecases/api_auth_admin_users_user_id_status_patch_use_case/api_auth_admin_users_user_id_status_patch_use_case.dart'
    as _i950;
import '../features/auth/domain/usecases/api_auth_change_email_confirm_post_use_case/api_auth_change_email_confirm_post_use_case.dart'
    as _i131;
import '../features/auth/domain/usecases/api_auth_change_email_request_post_use_case/api_auth_change_email_request_post_use_case.dart'
    as _i980;
import '../features/auth/domain/usecases/api_auth_change_password_post_use_case/api_auth_change_password_post_use_case.dart'
    as _i864;
import '../features/auth/domain/usecases/api_auth_confirm_email_post_use_case/api_auth_confirm_email_post_use_case.dart'
    as _i567;
import '../features/auth/domain/usecases/api_auth_delete_account_post_use_case/api_auth_delete_account_post_use_case.dart'
    as _i485;
import '../features/auth/domain/usecases/api_auth_forgot_password_post_use_case/api_auth_forgot_password_post_use_case.dart'
    as _i120;
import '../features/auth/domain/usecases/api_auth_login_post_use_case/api_auth_login_post_use_case.dart'
    as _i668;
import '../features/auth/domain/usecases/api_auth_logout_post_use_case/api_auth_logout_post_use_case.dart'
    as _i976;
import '../features/auth/domain/usecases/api_auth_me_get_use_case/api_auth_me_get_use_case.dart'
    as _i958;
import '../features/auth/domain/usecases/api_auth_refresh_post_use_case/api_auth_refresh_post_use_case.dart'
    as _i888;
import '../features/auth/domain/usecases/api_auth_register_post_use_case/api_auth_register_post_use_case.dart'
    as _i865;
import '../features/auth/domain/usecases/api_auth_resend_confirmation_post_use_case/api_auth_resend_confirmation_post_use_case.dart'
    as _i487;
import '../features/auth/domain/usecases/api_auth_reset_password_post_use_case/api_auth_reset_password_post_use_case.dart'
    as _i948;
import '../features/auth/domain/usecases/api_auth_validate_token_post_use_case/api_auth_validate_token_post_use_case.dart'
    as _i1001;
import 'modules/api_module.dart' as _i145;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final apiModule = _$ApiModule();
  gh.singleton<_i606.CacheConfig>(() => _i606.CacheConfig.create());
  gh.singleton<_i1073.AppLifecycleService>(() => _i1073.AppLifecycleService());
  gh.singleton<_i711.Openapi>(() => apiModule.openapi);
  gh.singleton<_i6.INetworkInfo>(() => _i927.NetworkInfoImpl.create());
  gh.lazySingleton<_i361.Dio>(() => apiModule.dio(gh<_i711.Openapi>()));
  gh.lazySingleton<_i138.Serializers>(
    () => apiModule.serializers(gh<_i711.Openapi>()),
  );
  gh.singleton<_i130.MemoryCacheImpl>(
    () => _i130.MemoryCacheImpl(gh<_i606.CacheConfig>()),
  );
  gh.singleton<_i927.ModelConverterHelper>(
    () => _i927.ModelConverterHelper(gh<_i138.Serializers>()),
  );
  gh.singleton<_i162.AuthRemoteDataSource>(
    () => _i162.AuthRemoteDataSource(gh<_i361.Dio>(), gh<_i138.Serializers>()),
  );
  gh.singleton<_i498.PersistentCacheImpl>(
    () => _i498.PersistentCacheImpl(
      config: gh<_i606.CacheConfig>(),
      helper: gh<_i927.ModelConverterHelper>(),
    ),
  );
  gh.singleton<_i817.SecureCacheImpl>(
    () => _i817.SecureCacheImpl(helper: gh<_i927.ModelConverterHelper>()),
  );
  gh.lazySingleton<_i869.AuthRepository>(
    () => _i146.AuthRepositoryImp(
      remoteDataSource: gh<_i162.AuthRemoteDataSource>(),
      networkInfo: gh<_i6.INetworkInfo>(),
      cacheManager: gh<_i210.CacheManager>(),
    ),
  );
  gh.singleton<_i210.CacheManager>(
    () => _i210.CacheManager(
      config: gh<_i606.CacheConfig>(),
      memoryCache: gh<_i130.MemoryCacheImpl>(),
      secureCache: gh<_i817.SecureCacheImpl>(),
      persistentCache: gh<_i498.PersistentCacheImpl>(),
    ),
  );
  gh.factory<_i950.ApiAuthAdminUsersUserIdStatusPatchUseCase>(
    () => _i950.ApiAuthAdminUsersUserIdStatusPatchUseCase(
      gh<_i869.AuthRepository>(),
    ),
  );
  gh.factory<_i131.ApiAuthChangeEmailConfirmPostUseCase>(
    () =>
        _i131.ApiAuthChangeEmailConfirmPostUseCase(gh<_i869.AuthRepository>()),
  );
  gh.factory<_i980.ApiAuthChangeEmailRequestPostUseCase>(
    () =>
        _i980.ApiAuthChangeEmailRequestPostUseCase(gh<_i869.AuthRepository>()),
  );
  gh.factory<_i864.ApiAuthChangePasswordPostUseCase>(
    () => _i864.ApiAuthChangePasswordPostUseCase(gh<_i869.AuthRepository>()),
  );
  gh.factory<_i567.ApiAuthConfirmEmailPostUseCase>(
    () => _i567.ApiAuthConfirmEmailPostUseCase(gh<_i869.AuthRepository>()),
  );
  gh.factory<_i485.ApiAuthDeleteAccountPostUseCase>(
    () => _i485.ApiAuthDeleteAccountPostUseCase(gh<_i869.AuthRepository>()),
  );
  gh.factory<_i120.ApiAuthForgotPasswordPostUseCase>(
    () => _i120.ApiAuthForgotPasswordPostUseCase(gh<_i869.AuthRepository>()),
  );
  gh.factory<_i668.ApiAuthLoginPostUseCase>(
    () => _i668.ApiAuthLoginPostUseCase(gh<_i869.AuthRepository>()),
  );
  gh.factory<_i976.ApiAuthLogoutPostUseCase>(
    () => _i976.ApiAuthLogoutPostUseCase(gh<_i869.AuthRepository>()),
  );
  gh.factory<_i958.ApiAuthMeGetUseCase>(
    () => _i958.ApiAuthMeGetUseCase(gh<_i869.AuthRepository>()),
  );
  gh.factory<_i888.ApiAuthRefreshPostUseCase>(
    () => _i888.ApiAuthRefreshPostUseCase(gh<_i869.AuthRepository>()),
  );
  gh.factory<_i865.ApiAuthRegisterPostUseCase>(
    () => _i865.ApiAuthRegisterPostUseCase(gh<_i869.AuthRepository>()),
  );
  gh.factory<_i487.ApiAuthResendConfirmationPostUseCase>(
    () =>
        _i487.ApiAuthResendConfirmationPostUseCase(gh<_i869.AuthRepository>()),
  );
  gh.factory<_i948.ApiAuthResetPasswordPostUseCase>(
    () => _i948.ApiAuthResetPasswordPostUseCase(gh<_i869.AuthRepository>()),
  );
  gh.factory<_i1001.ApiAuthValidateTokenPostUseCase>(
    () => _i1001.ApiAuthValidateTokenPostUseCase(gh<_i869.AuthRepository>()),
  );
  return getIt;
}

class _$ApiModule extends _i145.ApiModule {}
