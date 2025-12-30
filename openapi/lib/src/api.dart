//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:openapi/src/serializers.dart';
import 'package:openapi/src/auth/api_key_auth.dart';
import 'package:openapi/src/auth/basic_auth.dart';
import 'package:openapi/src/auth/bearer_auth.dart';
import 'package:openapi/src/auth/oauth.dart';
import 'package:openapi/src/api/account_api.dart';
import 'package:openapi/src/api/addon_api.dart';
import 'package:openapi/src/api/advanced_comment_api.dart';
import 'package:openapi/src/api/app_dashboard_api.dart';
import 'package:openapi/src/api/apps_api.dart';
import 'package:openapi/src/api/audit_log_api.dart';
import 'package:openapi/src/api/automation_api.dart';
import 'package:openapi/src/api/automation_approval_request_api.dart';
import 'package:openapi/src/api/automation_history_api.dart';
import 'package:openapi/src/api/caching_api.dart';
import 'package:openapi/src/api/chat_api.dart';
import 'package:openapi/src/api/common_lookup_api.dart';
import 'package:openapi/src/api/conversation_api.dart';
import 'package:openapi/src/api/dashboards_api.dart';
import 'package:openapi/src/api/data_api.dart';
import 'package:openapi/src/api/edition_api.dart';
import 'package:openapi/src/api/features_api.dart';
import 'package:openapi/src/api/fields_api.dart';
import 'package:openapi/src/api/file_api.dart';
import 'package:openapi/src/api/forms_api.dart';
import 'package:openapi/src/api/formula_api.dart';
import 'package:openapi/src/api/friendship_api.dart';
import 'package:openapi/src/api/global_settings_api.dart';
import 'package:openapi/src/api/hangfire_api.dart';
import 'package:openapi/src/api/hashing_api.dart';
import 'package:openapi/src/api/history_api.dart';
import 'package:openapi/src/api/host_dashboard_api.dart';
import 'package:openapi/src/api/host_settings_api.dart';
import 'package:openapi/src/api/install_api.dart';
import 'package:openapi/src/api/integrations_api.dart';
import 'package:openapi/src/api/language_api.dart';
import 'package:openapi/src/api/layout_setting_api.dart';
import 'package:openapi/src/api/lists_api.dart';
import 'package:openapi/src/api/notification_api.dart';
import 'package:openapi/src/api/open_ai_api.dart';
import 'package:openapi/src/api/permission_api.dart';
import 'package:openapi/src/api/profile_api.dart';
import 'package:openapi/src/api/record_layout_api.dart';
import 'package:openapi/src/api/role_api.dart';
import 'package:openapi/src/api/section_api.dart';
import 'package:openapi/src/api/session_api.dart';
import 'package:openapi/src/api/sso_configuration_manager_api.dart';
import 'package:openapi/src/api/task_api.dart';
import 'package:openapi/src/api/template_api.dart';
import 'package:openapi/src/api/template_category_api.dart';
import 'package:openapi/src/api/tenant_api.dart';
import 'package:openapi/src/api/tenant_dashboard_api.dart';
import 'package:openapi/src/api/tenant_registration_api.dart';
import 'package:openapi/src/api/tenant_settings_api.dart';
import 'package:openapi/src/api/tenant_subscription_api.dart';
import 'package:openapi/src/api/timing_api.dart';
import 'package:openapi/src/api/token_auth_api.dart';
import 'package:openapi/src/api/user_api.dart';
import 'package:openapi/src/api/user_delegation_api.dart';
import 'package:openapi/src/api/user_link_api.dart';
import 'package:openapi/src/api/user_login_api.dart';
import 'package:openapi/src/api/user_settings_api.dart';
import 'package:openapi/src/api/views_api.dart';
import 'package:openapi/src/api/web_log_api.dart';
import 'package:openapi/src/api/webhook_subscription_api.dart';
import 'package:openapi/src/api/zapier_data_api.dart';

class Openapi {
  static const String basePath = r'http://localhost';

  final Dio dio;
  final Serializers serializers;

  Openapi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get AccountApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AccountApi getAccountApi() {
    return AccountApi(dio, serializers);
  }

  /// Get AddonApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AddonApi getAddonApi() {
    return AddonApi(dio, serializers);
  }

  /// Get AdvancedCommentApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AdvancedCommentApi getAdvancedCommentApi() {
    return AdvancedCommentApi(dio, serializers);
  }

  /// Get AppDashboardApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AppDashboardApi getAppDashboardApi() {
    return AppDashboardApi(dio, serializers);
  }

  /// Get AppsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AppsApi getAppsApi() {
    return AppsApi(dio, serializers);
  }

  /// Get AuditLogApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuditLogApi getAuditLogApi() {
    return AuditLogApi(dio, serializers);
  }

  /// Get AutomationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AutomationApi getAutomationApi() {
    return AutomationApi(dio, serializers);
  }

  /// Get AutomationApprovalRequestApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AutomationApprovalRequestApi getAutomationApprovalRequestApi() {
    return AutomationApprovalRequestApi(dio, serializers);
  }

  /// Get AutomationHistoryApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AutomationHistoryApi getAutomationHistoryApi() {
    return AutomationHistoryApi(dio, serializers);
  }

  /// Get CachingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CachingApi getCachingApi() {
    return CachingApi(dio, serializers);
  }

  /// Get ChatApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ChatApi getChatApi() {
    return ChatApi(dio, serializers);
  }

  /// Get CommonLookupApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CommonLookupApi getCommonLookupApi() {
    return CommonLookupApi(dio, serializers);
  }

  /// Get ConversationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConversationApi getConversationApi() {
    return ConversationApi(dio, serializers);
  }

  /// Get DashboardsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DashboardsApi getDashboardsApi() {
    return DashboardsApi(dio, serializers);
  }

  /// Get DataApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DataApi getDataApi() {
    return DataApi(dio, serializers);
  }

  /// Get EditionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EditionApi getEditionApi() {
    return EditionApi(dio, serializers);
  }

  /// Get FeaturesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FeaturesApi getFeaturesApi() {
    return FeaturesApi(dio, serializers);
  }

  /// Get FieldsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FieldsApi getFieldsApi() {
    return FieldsApi(dio, serializers);
  }

  /// Get FileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FileApi getFileApi() {
    return FileApi(dio, serializers);
  }

  /// Get FormsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FormsApi getFormsApi() {
    return FormsApi(dio, serializers);
  }

  /// Get FormulaApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FormulaApi getFormulaApi() {
    return FormulaApi(dio, serializers);
  }

  /// Get FriendshipApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FriendshipApi getFriendshipApi() {
    return FriendshipApi(dio, serializers);
  }

  /// Get GlobalSettingsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  GlobalSettingsApi getGlobalSettingsApi() {
    return GlobalSettingsApi(dio, serializers);
  }

  /// Get HangfireApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  HangfireApi getHangfireApi() {
    return HangfireApi(dio, serializers);
  }

  /// Get HashingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  HashingApi getHashingApi() {
    return HashingApi(dio, serializers);
  }

  /// Get HistoryApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  HistoryApi getHistoryApi() {
    return HistoryApi(dio, serializers);
  }

  /// Get HostDashboardApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  HostDashboardApi getHostDashboardApi() {
    return HostDashboardApi(dio, serializers);
  }

  /// Get HostSettingsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  HostSettingsApi getHostSettingsApi() {
    return HostSettingsApi(dio, serializers);
  }

  /// Get InstallApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  InstallApi getInstallApi() {
    return InstallApi(dio, serializers);
  }

  /// Get IntegrationsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  IntegrationsApi getIntegrationsApi() {
    return IntegrationsApi(dio, serializers);
  }

  /// Get LanguageApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LanguageApi getLanguageApi() {
    return LanguageApi(dio, serializers);
  }

  /// Get LayoutSettingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LayoutSettingApi getLayoutSettingApi() {
    return LayoutSettingApi(dio, serializers);
  }

  /// Get ListsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ListsApi getListsApi() {
    return ListsApi(dio, serializers);
  }

  /// Get NotificationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  NotificationApi getNotificationApi() {
    return NotificationApi(dio, serializers);
  }

  /// Get OpenAIApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OpenAIApi getOpenAIApi() {
    return OpenAIApi(dio, serializers);
  }

  /// Get PermissionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PermissionApi getPermissionApi() {
    return PermissionApi(dio, serializers);
  }

  /// Get ProfileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ProfileApi getProfileApi() {
    return ProfileApi(dio, serializers);
  }

  /// Get RecordLayoutApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RecordLayoutApi getRecordLayoutApi() {
    return RecordLayoutApi(dio, serializers);
  }

  /// Get RoleApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RoleApi getRoleApi() {
    return RoleApi(dio, serializers);
  }

  /// Get SectionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SectionApi getSectionApi() {
    return SectionApi(dio, serializers);
  }

  /// Get SessionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SessionApi getSessionApi() {
    return SessionApi(dio, serializers);
  }

  /// Get SsoConfigurationManagerApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SsoConfigurationManagerApi getSsoConfigurationManagerApi() {
    return SsoConfigurationManagerApi(dio, serializers);
  }

  /// Get TaskApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TaskApi getTaskApi() {
    return TaskApi(dio, serializers);
  }

  /// Get TemplateApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TemplateApi getTemplateApi() {
    return TemplateApi(dio, serializers);
  }

  /// Get TemplateCategoryApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TemplateCategoryApi getTemplateCategoryApi() {
    return TemplateCategoryApi(dio, serializers);
  }

  /// Get TenantApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TenantApi getTenantApi() {
    return TenantApi(dio, serializers);
  }

  /// Get TenantDashboardApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TenantDashboardApi getTenantDashboardApi() {
    return TenantDashboardApi(dio, serializers);
  }

  /// Get TenantRegistrationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TenantRegistrationApi getTenantRegistrationApi() {
    return TenantRegistrationApi(dio, serializers);
  }

  /// Get TenantSettingsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TenantSettingsApi getTenantSettingsApi() {
    return TenantSettingsApi(dio, serializers);
  }

  /// Get TenantSubscriptionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TenantSubscriptionApi getTenantSubscriptionApi() {
    return TenantSubscriptionApi(dio, serializers);
  }

  /// Get TimingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TimingApi getTimingApi() {
    return TimingApi(dio, serializers);
  }

  /// Get TokenAuthApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TokenAuthApi getTokenAuthApi() {
    return TokenAuthApi(dio, serializers);
  }

  /// Get UserApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserApi getUserApi() {
    return UserApi(dio, serializers);
  }

  /// Get UserDelegationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserDelegationApi getUserDelegationApi() {
    return UserDelegationApi(dio, serializers);
  }

  /// Get UserLinkApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserLinkApi getUserLinkApi() {
    return UserLinkApi(dio, serializers);
  }

  /// Get UserLoginApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserLoginApi getUserLoginApi() {
    return UserLoginApi(dio, serializers);
  }

  /// Get UserSettingsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserSettingsApi getUserSettingsApi() {
    return UserSettingsApi(dio, serializers);
  }

  /// Get ViewsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ViewsApi getViewsApi() {
    return ViewsApi(dio, serializers);
  }

  /// Get WebLogApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WebLogApi getWebLogApi() {
    return WebLogApi(dio, serializers);
  }

  /// Get WebhookSubscriptionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WebhookSubscriptionApi getWebhookSubscriptionApi() {
    return WebhookSubscriptionApi(dio, serializers);
  }

  /// Get ZapierDataApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ZapierDataApi getZapierDataApi() {
    return ZapierDataApi(dio, serializers);
  }
}
