// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (Serializers().toBuilder()
      ..add(AIChatFieldDto.serializer)
      ..add(AIChatHistoryOutput.serializer)
      ..add(AIChatListDto.serializer)
      ..add(AIChatReactionInput.serializer)
      ..add(AIOperation.serializer)
      ..add(AIPromptsSetting.serializer)
      ..add(AIRequestHistory.serializer)
      ..add(AIResultReaction.serializer)
      ..add(AISettings.serializer)
      ..add(AIUsageDto.serializer)
      ..add(AcceptFiltersInput.serializer)
      ..add(AcceptFriendshipRequestInput.serializer)
      ..add(AcceptUserInvitationDto.serializer)
      ..add(AcceptUserInvitationFromExternalLoginDto.serializer)
      ..add(ActivateEmailInput.serializer)
      ..add(AddonDefinitionDto.serializer)
      ..add(AddonDto.serializer)
      ..add(AddonSubscribeInputDto.serializer)
      ..add(AddonSubscribeOutputDto.serializer)
      ..add(AddressModel.serializer)
      ..add(AggregationType.serializer)
      ..add(AiChatRawDataInput.serializer)
      ..add(AiSuggestionInput.serializer)
      ..add(ApiModel.serializer)
      ..add(ApiModelOptions.serializer)
      ..add(AppAccessLevel.serializer)
      ..add(AppDto.serializer)
      ..add(AppEditOutput.serializer)
      ..add(AppLookupTableDto.serializer)
      ..add(AppPermission.serializer)
      ..add(AppSettingsJsonDto.serializer)
      ..add(AppSuggestionInput.serializer)
      ..add(AppSuggestionOutput.serializer)
      ..add(ApplicationInfoDto.serializer)
      ..add(ApplicationLanguageEditDto.serializer)
      ..add(ApplicationLanguageListDto.serializer)
      ..add(ApprovalActionExecuteStatus.serializer)
      ..add(ApprovalRequestHistoryItem.serializer)
      ..add(ApprovalRequestStatus.serializer)
      ..add(AsnEncodedData.serializer)
      ..add(AsymmetricAlgorithm.serializer)
      ..add(AuditLogListDto.serializer)
      ..add(AuthenticateModel.serializer)
      ..add(AuthenticateResultModel.serializer)
      ..add(AutomationActionType.serializer)
      ..add(AutomationApprovalRequestDto.serializer)
      ..add(AutomationDto.serializer)
      ..add(AutomationExecutionLog.serializer)
      ..add(AutomationExecutionLogSeverity.serializer)
      ..add(AutomationExecutionStatus.serializer)
      ..add(AutomationExpressionValidationOutput.serializer)
      ..add(AutomationExpressionsValidationResult.serializer)
      ..add(AutomationHistory.serializer)
      ..add(AutomationHistoryFilter.serializer)
      ..add(AutomationHistoryStatistics.serializer)
      ..add(AutomationHistoryStatisticsFilter.serializer)
      ..add(AutomationOnErrorNotificationSettings.serializer)
      ..add(AutomationTriggerType.serializer)
      ..add(AzureAIClientSetting.serializer)
      ..add(BlockUserInput.serializer)
      ..add(BulkCalculateExpressionInput.serializer)
      ..add(BulkDeleteInput.serializer)
      ..add(BulkUpdateInput.serializer)
      ..add(CacheDto.serializer)
      ..add(CalculateCalculatedFieldsInput.serializer)
      ..add(CalulcateExpressionOutput.serializer)
      ..add(CaptchaResult.serializer)
      ..add(CardPaymentMethodModel.serializer)
      ..add(CardPaymentMethodUpdateModel.serializer)
      ..add(ChangeFieldTypeResult.serializer)
      ..add(ChangePasswordInput.serializer)
      ..add(ChangeUserLanguageDto.serializer)
      ..add(ChangeUserTypeInput.serializer)
      ..add(ChartDateInterval.serializer)
      ..add(ChatInput.serializer)
      ..add(ChatMessageDto.serializer)
      ..add(ChatMessageInput.serializer)
      ..add(ChatMessageReadState.serializer)
      ..add(ChatOutput.serializer)
      ..add(ChatSide.serializer)
      ..add(CheckDatabaseOutput.serializer)
      ..add(ClaimKeyValue.serializer)
      ..add(ClearCacheNotification.serializer)
      ..add(CloneTenantAppsEto.serializer)
      ..add(ComboboxItemDto.serializer)
      ..add(CommentItemStatus.serializer)
      ..add(ConversationItem.serializer)
      ..add(ConversationType.serializer)
      ..add(CouponModel.serializer)
      ..add(CreateAppFromExternalAppInput.serializer)
      ..add(CreateAppFromTemplateInput.serializer)
      ..add(CreateAppsFromTemplateCategoryInput.serializer)
      ..add(CreateAutomationInput.serializer)
      ..add(CreateConversationInput.serializer)
      ..add(CreateDashboardWidgetInput.serializer)
      ..add(CreateEditAppInput.serializer)
      ..add(CreateEditCommentDto.serializer)
      ..add(CreateEditDashboardInput.serializer)
      ..add(CreateEditViewInput.serializer)
      ..add(CreateEditWidgetInput.serializer)
      ..add(CreateEditionDtoOfCustomEditionCreateDto.serializer)
      ..add(CreateEditionDtoOfFreeEditionCreateDto.serializer)
      ..add(CreateEditionDtoOfSubscribableEditionCreateDto.serializer)
      ..add(CreateFieldInput.serializer)
      ..add(CreateFormDto.serializer)
      ..add(CreateFriendshipRequestByUserNameInput.serializer)
      ..add(CreateFriendshipRequestInput.serializer)
      ..add(CreateGmailIntegrationInput.serializer)
      ..add(CreateInvitationDto.serializer)
      ..add(CreateLayoutSettingInput.serializer)
      ..add(CreateListInput.serializer)
      ..add(CreateOrEditTemplateCategoryDto.serializer)
      ..add(CreateOrEditTemplateDto.serializer)
      ..add(CreateOrUpdateLanguageInput.serializer)
      ..add(CreateOrUpdateRoleInput.serializer)
      ..add(CreateOrUpdateUserInput.serializer)
      ..add(CreateOutlookIntegrationInput.serializer)
      ..add(CreateRecordLayoutInput.serializer)
      ..add(CreateSmtpIntegrationInput.serializer)
      ..add(CreateTenantInput.serializer)
      ..add(CreateTwilioIntegrationInput.serializer)
      ..add(CreateUnifonicIntegrationInput.serializer)
      ..add(CreateUserDelegationDto.serializer)
      ..add(CreateUserInvitationDto.serializer)
      ..add(CurrentTenantInfoDto.serializer)
      ..add(CurrentUserProfileEditDto.serializer)
      ..add(CustomEditionCreateDto.serializer)
      ..add(CustomerBalanceModel.serializer)
      ..add(CustomerModel.serializer)
      ..add(DashboardAccessLevel.serializer)
      ..add(DashboardDto.serializer)
      ..add(DashboardPermission.serializer)
      ..add(DashboardWidgetDto.serializer)
      ..add(DataAccessMode.serializer)
      ..add(DataFilter.serializer)
      ..add(DataLookupInput.serializer)
      ..add(DateTimeSettingsEditDto.serializer)
      ..add(DateType.serializer)
      ..add(DelegatedImpersonateInput.serializer)
      ..add(DeserializeAppInput.serializer)
      ..add(DeviceType.serializer)
      ..add(DistributionScaleType.serializer)
      ..add(DowngradeTenantSubscriptionInputDto.serializer)
      ..add(EditDashboardWidgetInput.serializer)
      ..add(EditFieldInput.serializer)
      ..add(EditLayoutSettingInput.serializer)
      ..add(EditRecordLayoutInput.serializer)
      ..add(Edition.serializer)
      ..add(EditionComboboxItemDto.serializer)
      ..add(EditionDto.serializer)
      ..add(EditionEditDto.serializer)
      ..add(EditionInfoDto.serializer)
      ..add(EditionType.serializer)
      ..add(EditionWithFeaturesDto.serializer)
      ..add(EditionsSelectOutput.serializer)
      ..add(EmailSettingsEditDto.serializer)
      ..add(EmojiItem.serializer)
      ..add(EntityChangeListDto.serializer)
      ..add(EntityChangeType.serializer)
      ..add(EntityDto.serializer)
      ..add(EntityDtoOfGuid.serializer)
      ..add(EntityDtoOfInt64.serializer)
      ..add(EntityPropertyChangeDto.serializer)
      ..add(EntityType.serializer)
      ..add(ExpiringEditionDto.serializer)
      ..add(ExpiringTenant.serializer)
      ..add(ExportDataInput.serializer)
      ..add(ExportHistoryDataInput.serializer)
      ..add(ExpressionListInput.serializer)
      ..add(ExpressionValidationResult.serializer)
      ..add(ExternalAuthUserInfo.serializer)
      ..add(ExternalAuthenticateModel.serializer)
      ..add(ExternalAuthenticateResultModel.serializer)
      ..add(ExternalFileUploadConfirmationRequest.serializer)
      ..add(ExternalFileUploadRequest.serializer)
      ..add(ExternalLoginProviderInfoModel.serializer)
      ..add(ExternalLoginProviderSettingsEditDto.serializer)
      ..add(ExternalLoginSettingsDto.serializer)
      ..add(FacebookExternalLoginProviderSettings.serializer)
      ..add(FavoriteLinkDto.serializer)
      ..add(FeatureDataType.serializer)
      ..add(FeatureDto.serializer)
      ..add(FeatureInputTypeDto.serializer)
      ..add(FeatureMetadataDto.serializer)
      ..add(FeatureUsageInfoDto.serializer)
      ..add(FeatureValueDto.serializer)
      ..add(FieldAccessLevel.serializer)
      ..add(FieldDataType.serializer)
      ..add(FieldDto.serializer)
      ..add(FieldEditOutput.serializer)
      ..add(FileContentType.serializer)
      ..add(FileData.serializer)
      ..add(FileDto.serializer)
      ..add(FileMetadataDto.serializer)
      ..add(FileType.serializer)
      ..add(FilterCollectionOperator.serializer)
      ..add(FilterDateType.serializer)
      ..add(FilterDto.serializer)
      ..add(FilterOperator.serializer)
      ..add(FilterPermission.serializer)
      ..add(FilterValueMappingType.serializer)
      ..add(FindUsersInput.serializer)
      ..add(FormAccessLevel.serializer)
      ..add(FormDto.serializer)
      ..add(FormField.serializer)
      ..add(FormFieldDto.serializer)
      ..add(FormPermissionAccessLevel.serializer)
      ..add(FormTokens.serializer)
      ..add(FormulaDoc.serializer)
      ..add(FreeEditionCreateDto.serializer)
      ..add(FriendDto.serializer)
      ..add(FriendshipState.serializer)
      ..add(GatewayConfigModel.serializer)
      ..add(GenerateJsonInput.serializer)
      ..add(GenerateJsonOutput.serializer)
      ..add(GeneratedWebhookInfoDto.serializer)
      ..add(GetCurrentLoginInformationsOutput.serializer)
      ..add(GetDailySalesOutput.serializer)
      ..add(GetDashboardDataOutput.serializer)
      ..add(GetDataInput.serializer)
      ..add(GetDefaultEditionNameOutput.serializer)
      ..add(GetEditionEditOutput.serializer)
      ..add(GetEditionTenantStatisticsOutput.serializer)
      ..add(GetExpiringTenantsOutput.serializer)
      ..add(GetGeneralStatsOutput.serializer)
      ..add(GetGrantedAppsOutPut.serializer)
      ..add(GetGrantedDashboardsOutPut.serializer)
      ..add(GetGrantedFormsOutput.serializer)
      ..add(GetGroupingDataInput.serializer)
      ..add(GetGroupingPagedDataInput.serializer)
      ..add(GetIncomeStatisticsDataOutput.serializer)
      ..add(GetLanguageForEditOutput.serializer)
      ..add(GetLanguagesOutput.serializer)
      ..add(GetLatestWebLogsOutput.serializer)
      ..add(GetMemberActivityOutput.serializer)
      ..add(GetNotificationSettingsOutput.serializer)
      ..add(GetNotificationsOutput.serializer)
      ..add(GetPasswordComplexitySettingOutput.serializer)
      ..add(GetProfilePictureOutput.serializer)
      ..add(GetProfitShareOutput.serializer)
      ..add(GetRecentTenantsOutput.serializer)
      ..add(GetRegionalStatsOutput.serializer)
      ..add(GetRoleForEditOutput.serializer)
      ..add(GetSalesSummaryOutput.serializer)
      ..add(GetTemplateCategoryForEditOutput.serializer)
      ..add(GetTemplateForEditOutput.serializer)
      ..add(GetTenantCurrentPeriodInfoOutputDto.serializer)
      ..add(GetTenantFeaturesEditOutput.serializer)
      ..add(GetTenantInvoicesOutputDto.serializer)
      ..add(GetTenantPaymentMethodsOutputDto.serializer)
      ..add(GetTenantSubscriptionInfoOutputDto.serializer)
      ..add(GetTopStatsOutput.serializer)
      ..add(GetUserChatFriendsWithSettingsOutput.serializer)
      ..add(GetUserForEditOutput.serializer)
      ..add(GmailIntegrationSettings.serializer)
      ..add(GmailIntegrationTestArgs.serializer)
      ..add(GoogleExternalLoginProviderSettings.serializer)
      ..add(GrantDashboardMemberInput.serializer)
      ..add(GrantDashboardMembersInput.serializer)
      ..add(GrantFormMembersInput.serializer)
      ..add(GrantListMemberInput.serializer)
      ..add(GrantListMembersInput.serializer)
      ..add(GrantMemberInput.serializer)
      ..add(GrantMembersInput.serializer)
      ..add(GrantedMember.serializer)
      ..add(GroupOfJObject.serializer)
      ..add(GroupingDateFrequency.serializer)
      ..add(GroupingResultOfJObject.serializer)
      ..add(HistoryAction.serializer)
      ..add(HistoryFilter.serializer)
      ..add(HistoryRecord.serializer)
      ..add(HostBillingSettingsEditDto.serializer)
      ..add(HostDashboardData.serializer)
      ..add(HostSettingsEditDto.serializer)
      ..add(HostUserManagementSettingsEditDto.serializer)
      ..add(ICommentItem.serializer)
      ..add(IValueValidator.serializer)
      ..add(IdsFilterOperator.serializer)
      ..add(ImpersonateInput.serializer)
      ..add(ImpersonateOutput.serializer)
      ..add(ImpersonatedAuthenticateResultModel.serializer)
      ..add(ImprtDataInput.serializer)
      ..add(IncomeStastistic.serializer)
      ..add(InstallDto.serializer)
      ..add(IntegrationDto.serializer)
      ..add(IntegrationGroup.serializer)
      ..add(IntegrationType.serializer)
      ..add(InvoiceModel.serializer)
      ..add(IsTenantAvailableByFormTokenInput.serializer)
      ..add(IsTenantAvailableInput.serializer)
      ..add(IsTenantAvailableOutput.serializer)
      ..add(JobHistoryLogItem.serializer)
      ..add(JsonClaimMapDto.serializer)
      ..add(KeySizes.serializer)
      ..add(KeyValueMap.serializer)
      ..add(KeyValuePairOfStringObject.serializer)
      ..add(LanguageTextListDto.serializer)
      ..add(LayoutSettingDto.serializer)
      ..add(LinkToUserInput.serializer)
      ..add(LinkType.serializer)
      ..add(LinkedRecord.serializer)
      ..add(LinkedUserDto.serializer)
      ..add(ListAccessLevel.serializer)
      ..add(ListDto.serializer)
      ..add(ListPermission.serializer)
      ..add(ListPermissionsGroup.serializer)
      ..add(ListResultDtoOfAppDto.serializer)
      ..add(ListResultDtoOfAutomationDto.serializer)
      ..add(ListResultDtoOfCacheDto.serializer)
      ..add(ListResultDtoOfChatMessageDto.serializer)
      ..add(ListResultDtoOfEditionDto.serializer)
      ..add(ListResultDtoOfFieldDto.serializer)
      ..add(ListResultDtoOfLayoutSettingDto.serializer)
      ..add(ListResultDtoOfLinkedUserDto.serializer)
      ..add(ListResultDtoOfListDto.serializer)
      ..add(ListResultDtoOfListureWebHookDto.serializer)
      ..add(ListResultDtoOfNameValueDto.serializer)
      ..add(ListResultDtoOfRecordLayoutDto.serializer)
      ..add(ListResultDtoOfRoleListDto.serializer)
      ..add(ListResultDtoOfTemplateCategoryDto.serializer)
      ..add(ListResultDtoOfTemplateDto.serializer)
      ..add(ListResultDtoOfUserListDto.serializer)
      ..add(ListResultDtoOfUserListWithInvitedDto.serializer)
      ..add(ListResultDtoOfUserLoginAttemptDto.serializer)
      ..add(ListResultDtoOfViewDto.serializer)
      ..add(ListResultDtoOfWidgetDto.serializer)
      ..add(ListType.serializer)
      ..add(ListViewVisibilityDto.serializer)
      ..add(ListVisibility.serializer)
      ..add(ListVisibilityInput.serializer)
      ..add(ListureActivateWebhookSubscriptionInput.serializer)
      ..add(ListureAddWebHookDto.serializer)
      ..add(ListureNotificationSubscriptionDto.serializer)
      ..add(ListureNotificationSubscriptionWithDisplayNameDto.serializer)
      ..add(ListureUpdateWebHookDto.serializer)
      ..add(ListureUserNotification.serializer)
      ..add(ListureWebHookDto.serializer)
      ..add(ListureWebhookIsSubscribedInput.serializer)
      ..add(LocalizableComboboxItemDto.serializer)
      ..add(LocalizableComboboxItemSourceDto.serializer)
      ..add(LookupUserDto.serializer)
      ..add(MarkAllUnreadMessagesOfUserAsReadInput.serializer)
      ..add(MaxLinkedListAllowedSettingsEditDto.serializer)
      ..add(MemberActivity.serializer)
      ..add(MergeFieldsInput.serializer)
      ..add(MicrosoftExternalLoginProviderSettings.serializer)
      ..add(MoveTenantToEditionInputDto.serializer)
      ..add(MoveTenantsToAnotherEditionDto.serializer)
      ..add(NameValue.serializer)
      ..add(NameValueDto.serializer)
      ..add(NotificationData.serializer)
      ..add(NotificationSeverity.serializer)
      ..add(NotificationSummary.serializer)
      ..add(Oid.serializer)
      ..add(OpenAIChatMessage.serializer)
      ..add(OpenAIClientSetting.serializer)
      ..add(OpenIdConnectExternalLoginProviderSettings.serializer)
      ..add(OtherSettingsEditDto.serializer)
      ..add(OutlookIntegrationSettings.serializer)
      ..add(OutlookIntegrationTestArgs.serializer)
      ..add(PagedResultDtoOfAppLookupTableDto.serializer)
      ..add(PagedResultDtoOfAuditLogListDto.serializer)
      ..add(PagedResultDtoOfEntityChangeListDto.serializer)
      ..add(PagedResultDtoOfJObject.serializer)
      ..add(PagedResultDtoOfKeyValueMap.serializer)
      ..add(PagedResultDtoOfLanguageTextListDto.serializer)
      ..add(PagedResultDtoOfLinkedUserDto.serializer)
      ..add(PagedResultDtoOfLookupUserDto.serializer)
      ..add(PagedResultDtoOfNameValueDto.serializer)
      ..add(PagedResultDtoOfSettingDto.serializer)
      ..add(PagedResultDtoOfTemplateCategoryDto.serializer)
      ..add(PagedResultDtoOfTemplateCategoryLookupTableDto.serializer)
      ..add(PagedResultDtoOfTemplateDto.serializer)
      ..add(PagedResultDtoOfTenantClaim.serializer)
      ..add(PagedResultDtoOfTenantListDto.serializer)
      ..add(PagedResultDtoOfUserDelegationDto.serializer)
      ..add(PagedResultDtoOfUserListDto.serializer)
      ..add(PagedTasksDto.serializer)
      ..add(PasswordComplexitySetting.serializer)
      ..add(PaymentPeriodType.serializer)
      ..add(PermissionTree.serializer)
      ..add(PriceModel.serializer)
      ..add(PublicFormDataLookupInput.serializer)
      ..add(PublicFormDto.serializer)
      ..add(PublicKey.serializer)
      ..add(ReadOnlyMemoryOfByte.serializer)
      ..add(RecentTenant.serializer)
      ..add(RecordIdentifierDto.serializer)
      ..add(RecordLayoutColumnDto.serializer)
      ..add(RecordLayoutDto.serializer)
      ..add(RecordLayoutTabDto.serializer)
      ..add(RecordNotificationDto.serializer)
      ..add(RefreshTokenModel.serializer)
      ..add(RefreshTokenResult.serializer)
      ..add(RegionalStatCountry.serializer)
      ..add(RegisterInput.serializer)
      ..add(RegisterOutput.serializer)
      ..add(RegisterTenantInput.serializer)
      ..add(RegisterTenantOutput.serializer)
      ..add(RelationType.serializer)
      ..add(RemoteLinkedFieldStatus.serializer)
      ..add(ReplyItem.serializer)
      ..add(ReportAccessLevel.serializer)
      ..add(ReportPermissionAccessLevel.serializer)
      ..add(ResetPasswordInput.serializer)
      ..add(ResetPasswordOutput.serializer)
      ..add(ResolveTenantIdInput.serializer)
      ..add(RoleEditDto.serializer)
      ..add(RoleListDto.serializer)
      ..add(SalesSummaryData.serializer)
      ..add(SalesSummaryDatePeriod.serializer)
      ..add(Saml2AuthnResponseSignTypes.serializer)
      ..add(Saml2Configuration.serializer)
      ..add(Saml2IndexedEndpoint.serializer)
      ..add(SecuritySettingsEditDto.serializer)
      ..add(SendEmailActivationLinkInput.serializer)
      ..add(SendPasswordResetCodeInput.serializer)
      ..add(SendTestEmailInput.serializer)
      ..add(SendTwoFactorAuthCodeModel.serializer)
      ..add(SendVerificationSmsInputDto.serializer)
      ..add(SerializeAppInput.serializer)
      ..add(SessionTimeOutSettingsEditDto.serializer)
      ..add(SetAllArchivedUserNotificationsInput.serializer)
      ..add(SetDefaultLanguageInput.serializer)
      ..add(SetPasswordInput.serializer)
      ..add(SetUserPasswordInput.serializer)
      ..add(Setting.serializer)
      ..add(SettingDto.serializer)
      ..add(SettingScopes.serializer)
      ..add(SmtpIntegrationSettings.serializer)
      ..add(SmtpIntegrationTestArgs.serializer)
      ..add(SortingType.serializer)
      ..add(SourceFieldOutput.serializer)
      ..add(SsoConfigModel.serializer)
      ..add(StaticListItem.serializer)
      ..add(SubscribableEditionCreateDto.serializer)
      ..add(SubscribeTenantInputDto.serializer)
      ..add(SubscriptionDetailsDto.serializer)
      ..add(SubscriptionModel.serializer)
      ..add(SubscriptionPayType.serializer)
      ..add(SummaryMode.serializer)
      ..add(SwitchToLinkedAccountInput.serializer)
      ..add(SwitchToLinkedAccountOutput.serializer)
      ..add(SwitchedAccountAuthenticateResultModel.serializer)
      ..add(SystemFieldType.serializer)
      ..add(TaskDueDateFilter.serializer)
      ..add(TaskRecordDto.serializer)
      ..add(TaskSectionDto.serializer)
      ..add(TemplateCategoryDto.serializer)
      ..add(TemplateCategoryLookupTableDto.serializer)
      ..add(TemplateDto.serializer)
      ..add(Tenant.serializer)
      ..add(TenantAvailabilityState.serializer)
      ..add(TenantClaim.serializer)
      ..add(TenantCustomerBillingInfoUpdateDto.serializer)
      ..add(TenantEditDto.serializer)
      ..add(TenantEdition.serializer)
      ..add(TenantListDto.serializer)
      ..add(TenantLoginInfoDto.serializer)
      ..add(TenantManagementSettingsEditDto.serializer)
      ..add(TenantNamesEditDto.serializer)
      ..add(TenantNotification.serializer)
      ..add(TenantPublicInfoDto.serializer)
      ..add(TenantSubscriptionInfoDto.serializer)
      ..add(TenantUseStatus.serializer)
      ..add(TestGmailIntegrationConnectionInput.serializer)
      ..add(TestOutlookIntegrationConnectionInput.serializer)
      ..add(TestSmtpIntegrationConnectionInput.serializer)
      ..add(TestTwilioIntegrationConnectionInput.serializer)
      ..add(TestUnifonicIntegrationConnectionInput.serializer)
      ..add(TimezoneSettingsEditDto.serializer)
      ..add(TopStatsData.serializer)
      ..add(TwilioSettings.serializer)
      ..add(TwitterExternalLoginProviderSettings.serializer)
      ..add(TwoFactorLoginTenantSettingsEditDto.serializer)
      ..add(TwoFactorLoginUserSettingsEditDto.serializer)
      ..add(UnblockUserInput.serializer)
      ..add(UnifonicSettings.serializer)
      ..add(UnlinkUserInput.serializer)
      ..add(UpdateAutomationInput.serializer)
      ..add(UpdateCardPositionInput.serializer)
      ..add(UpdateCardPositionOutput.serializer)
      ..add(UpdateEditionDto.serializer)
      ..add(UpdateFormDto.serializer)
      ..add(UpdateGmailIntegrationInput.serializer)
      ..add(UpdateGoogleAuthenticatorKeyOutput.serializer)
      ..add(UpdateLanguageTextInput.serializer)
      ..add(UpdateListInput.serializer)
      ..add(UpdateNotificationSettingsInput.serializer)
      ..add(UpdateOutlookIntegrationInput.serializer)
      ..add(UpdateSmtpIntegrationInput.serializer)
      ..add(UpdateStateInput.serializer)
      ..add(UpdateTenantFeaturesInput.serializer)
      ..add(UpdateTwilioIntegrationInput.serializer)
      ..add(UpdateUnifonicIntegrationInput.serializer)
      ..add(UpdateUserSignInTokenOutput.serializer)
      ..add(UpgradeTenantSubscriptionInputDto.serializer)
      ..add(UrlInfo.serializer)
      ..add(User.serializer)
      ..add(UserClaim.serializer)
      ..add(UserDelegationDto.serializer)
      ..add(UserDeviceDto.serializer)
      ..add(UserEditDto.serializer)
      ..add(UserIdentityFlag.serializer)
      ..add(UserInvitationDto.serializer)
      ..add(UserListDto.serializer)
      ..add(UserListRoleDto.serializer)
      ..add(UserListWithInvitedDto.serializer)
      ..add(UserLockOutSettingsEditDto.serializer)
      ..add(UserLogin.serializer)
      ..add(UserLoginAttemptDto.serializer)
      ..add(UserLoginInfoDto.serializer)
      ..add(UserNotificationState.serializer)
      ..add(UserOrganizationUnit.serializer)
      ..add(UserPermissionSetting.serializer)
      ..add(UserRole.serializer)
      ..add(UserRoleDto.serializer)
      ..add(UserToken.serializer)
      ..add(UserType.serializer)
      ..add(ValueTupleOfIEnumerableOfAutomationHistoryInt64.serializer)
      ..add(ValueTupleOfIListOfTaskRecordDtoInt64.serializer)
      ..add(ValueTupleOfNullableOfDateTimeNullableOfDateTime.serializer)
      ..add(VerifySmsCodeInputDto.serializer)
      ..add(ViewAccessibility.serializer)
      ..add(ViewAccessibilityDto.serializer)
      ..add(ViewDto.serializer)
      ..add(ViewType.serializer)
      ..add(WebHookEventType.serializer)
      ..add(WebhookInfoDto.serializer)
      ..add(WebhookPayloadInfoDto.serializer)
      ..add(WidgetDataDto.serializer)
      ..add(WidgetDto.serializer)
      ..add(WidgetEditOutput.serializer)
      ..add(WidgetSortingType.serializer)
      ..add(WidgetType.serializer)
      ..add(WidgetValue.serializer)
      ..add(WorkerHistoryLogItem.serializer)
      ..add(WsFederationExternalLoginProviderSettings.serializer)
      ..add(X500DistinguishedName.serializer)
      ..add(X509Certificate2.serializer)
      ..add(X509CertificateValidationMode.serializer)
      ..add(X509Extension.serializer)
      ..add(X509RevocationMode.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AIChatFieldDto)]),
          () => ListBuilder<AIChatFieldDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AIChatListDto)]),
          () => ListBuilder<AIChatListDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AppDto)]),
          () => ListBuilder<AppDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AppLookupTableDto)]),
          () => ListBuilder<AppLookupTableDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AppPermission)]),
          () => ListBuilder<AppPermission>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(DashboardPermission)]),
          () => ListBuilder<DashboardPermission>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ApplicationLanguageListDto)]),
          () => ListBuilder<ApplicationLanguageListDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AuditLogListDto)]),
          () => ListBuilder<AuditLogListDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AutomationDto)]),
          () => ListBuilder<AutomationDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(AutomationExecutionLog)]),
          () => ListBuilder<AutomationExecutionLog>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(AutomationExecutionStatus)]),
          () => ListBuilder<AutomationExecutionStatus>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(AutomationExecutionStatus)]),
          () => ListBuilder<AutomationExecutionStatus>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(AutomationExpressionValidationOutput)]),
          () => ListBuilder<AutomationExpressionValidationOutput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AutomationHistory)]),
          () => ListBuilder<AutomationHistory>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CacheDto)]),
          () => ListBuilder<CacheDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(CardPaymentMethodModel)]),
          () => ListBuilder<CardPaymentMethodModel>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(CardPaymentMethodModel)]),
          () => ListBuilder<CardPaymentMethodModel>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ChatMessageDto)]),
          () => ListBuilder<ChatMessageDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ChatMessageInput)]),
          () => ListBuilder<ChatMessageInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ClaimKeyValue)]),
          () => ListBuilder<ClaimKeyValue>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ComboboxItemDto)]),
          () => ListBuilder<ComboboxItemDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ComboboxItemDto)]),
          () => ListBuilder<ComboboxItemDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CreateFieldInput)]),
          () => ListBuilder<CreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CreateFieldInput)]),
          () => ListBuilder<CreateFieldInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(CreateUserInvitationDto)]),
          () => ListBuilder<CreateUserInvitationDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(EditionDto)]),
          () => ListBuilder<EditionDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(EmojiItem)]),
          () => ListBuilder<EmojiItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FileMetadataDto)]),
          () => ListBuilder<FileMetadataDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(EmojiItem)]),
          () => ListBuilder<EmojiItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FileMetadataDto)]),
          () => ListBuilder<FileMetadataDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(EntityChangeListDto)]),
          () => ListBuilder<EntityChangeListDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ExpiringTenant)]),
          () => ListBuilder<ExpiringTenant>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ExpressionListInput)]),
          () => ListBuilder<ExpressionListInput>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FeatureDto)]),
          () => ListBuilder<FeatureDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(EditionWithFeaturesDto)]),
          () => ListBuilder<EditionWithFeaturesDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FeatureDto)]),
          () => ListBuilder<FeatureDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FeatureValueDto)]),
          () => ListBuilder<FeatureValueDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FieldDto)]),
          () => ListBuilder<FieldDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FileMetadataDto)]),
          () => ListBuilder<FileMetadataDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterDto)]),
          () => ListBuilder<FilterDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterDto)]),
          () => ListBuilder<FilterDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterDto)]),
          () => ListBuilder<FilterDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterDto)]),
          () => ListBuilder<FilterDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterDto)]),
          () => ListBuilder<FilterDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterDto)]),
          () => ListBuilder<FilterDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterDto)]),
          () => ListBuilder<FilterDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterDto)]),
          () => ListBuilder<FilterDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterDto)]),
          () => ListBuilder<FilterDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterDto)]),
          () => ListBuilder<FilterDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterDto)]),
          () => ListBuilder<FilterDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterDto)]),
          () => ListBuilder<FilterDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterDto)]),
          () => ListBuilder<FilterDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterDto)]),
          () => ListBuilder<FilterDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterDto)]),
          () => ListBuilder<FilterDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterDto)]),
          () => ListBuilder<FilterDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterDto)]),
          () => ListBuilder<FilterDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterDto)]),
          () => ListBuilder<FilterDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterDto)]),
          () => ListBuilder<FilterDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterPermission)]),
          () => ListBuilder<FilterPermission>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(FieldAccessLevel)]),
          () => MapBuilder<String, FieldAccessLevel>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ListPermissionsGroup)]),
          () => ListBuilder<ListPermissionsGroup>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FormField)]),
          () => ListBuilder<FormField>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FormField)]),
          () => ListBuilder<FormField>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FormFieldDto)]),
          () => ListBuilder<FormFieldDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FormFieldDto)]),
          () => ListBuilder<FormFieldDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FriendDto)]),
          () => ListBuilder<FriendDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GrantedMember)]),
          () => ListBuilder<GrantedMember>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GrantedMember)]),
          () => ListBuilder<GrantedMember>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GrantedMember)]),
          () => ListBuilder<GrantedMember>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GrantedMember)]),
          () => ListBuilder<GrantedMember>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GrantedMember)]),
          () => ListBuilder<GrantedMember>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GrantedMember)]),
          () => ListBuilder<GrantedMember>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GrantedMember)]),
          () => ListBuilder<GrantedMember>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GrantedMember)]),
          () => ListBuilder<GrantedMember>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GrantedMember)]),
          () => ListBuilder<GrantedMember>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(GroupOfJObject)]),
          () => ListBuilder<GroupOfJObject>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(IncomeStastistic)]),
          () => ListBuilder<IncomeStastistic>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(IncomeStastistic)]),
          () => ListBuilder<IncomeStastistic>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TenantEdition)]),
          () => ListBuilder<TenantEdition>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ExpiringTenant)]),
          () => ListBuilder<ExpiringTenant>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(RecentTenant)]),
          () => ListBuilder<RecentTenant>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(InvoiceModel)]),
          () => ListBuilder<InvoiceModel>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JsonClaimMapDto)]),
          () => ListBuilder<JsonClaimMapDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JsonClaimMapDto)]),
          () => ListBuilder<JsonClaimMapDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JsonObject)]),
          () => ListBuilder<JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JsonObject)]),
          () => ListBuilder<JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JsonObject)]),
          () => ListBuilder<JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JsonObject)]),
          () => ListBuilder<JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JsonObject)]),
          () => ListBuilder<JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JsonObject)]),
          () => ListBuilder<JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JsonObject)]),
          () => ListBuilder<JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JsonObject)]),
          () => ListBuilder<JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JsonObject)]),
          () => ListBuilder<JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(KeySizes)]),
          () => ListBuilder<KeySizes>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(KeyValueMap)]),
          () => ListBuilder<KeyValueMap>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(LanguageTextListDto)]),
          () => ListBuilder<LanguageTextListDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(LayoutSettingDto)]),
          () => ListBuilder<LayoutSettingDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(LinkedUserDto)]),
          () => ListBuilder<LinkedUserDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(LinkedUserDto)]),
          () => ListBuilder<LinkedUserDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ListDto)]),
          () => ListBuilder<ListDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ListDto)]),
          () => ListBuilder<ListDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ListPermission)]),
          () => ListBuilder<ListPermission>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(ReportAccessLevel)
          ]),
          () => MapBuilder<String, ReportAccessLevel>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(FormAccessLevel)]),
          () => MapBuilder<String, FormAccessLevel>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ListViewVisibilityDto)]),
          () => ListBuilder<ListViewVisibilityDto>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(ListureNotificationSubscriptionDto)]),
          () => ListBuilder<ListureNotificationSubscriptionDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(ListureNotificationSubscriptionWithDisplayNameDto)
          ]),
          () =>
              ListBuilder<ListureNotificationSubscriptionWithDisplayNameDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ListureUserNotification)]),
          () => ListBuilder<ListureUserNotification>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ListureWebHookDto)]),
          () => ListBuilder<ListureWebHookDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(LocalizableComboboxItemDto)]),
          () => ListBuilder<LocalizableComboboxItemDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(LookupUserDto)]),
          () => ListBuilder<LookupUserDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(MemberActivity)]),
          () => ListBuilder<MemberActivity>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NameValue)]),
          () => ListBuilder<NameValue>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NameValueDto)]),
          () => ListBuilder<NameValueDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NameValueDto)]),
          () => ListBuilder<NameValueDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NameValueDto)]),
          () => ListBuilder<NameValueDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NameValueDto)]),
          () => ListBuilder<NameValueDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NameValueDto)]),
          () => ListBuilder<NameValueDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NameValueDto)]),
          () => ListBuilder<NameValueDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NameValueDto)]),
          () => ListBuilder<NameValueDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NameValueDto)]),
          () => ListBuilder<NameValueDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NameValueDto)]),
          () => ListBuilder<NameValueDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FeatureDto)]),
          () => ListBuilder<FeatureDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NameValueDto)]),
          () => ListBuilder<NameValueDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FeatureDto)]),
          () => ListBuilder<FeatureDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(OpenAIChatMessage)]),
          () => ListBuilder<OpenAIChatMessage>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(String)]),
          () => MapBuilder<String, String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(OpenAIChatMessage)]),
          () => ListBuilder<OpenAIChatMessage>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(String)]),
          () => MapBuilder<String, String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(RecentTenant)]),
          () => ListBuilder<RecentTenant>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(RecordLayoutColumnDto)]),
          () => ListBuilder<RecordLayoutColumnDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(RecordLayoutDto)]),
          () => ListBuilder<RecordLayoutDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(RecordLayoutTabDto)]),
          () => ListBuilder<RecordLayoutTabDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(RecordLayoutTabDto)]),
          () => ListBuilder<RecordLayoutTabDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(RecordLayoutTabDto)]),
          () => ListBuilder<RecordLayoutTabDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(LayoutSettingDto)]),
          () => ListBuilder<LayoutSettingDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(RegionalStatCountry)]),
          () => ListBuilder<RegionalStatCountry>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(RoleListDto)]),
          () => ListBuilder<RoleListDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(SalesSummaryData)]),
          () => ListBuilder<SalesSummaryData>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(SalesSummaryData)]),
          () => ListBuilder<SalesSummaryData>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(SettingDto)]),
          () => ListBuilder<SettingDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(StaticListItem)]),
          () => ListBuilder<StaticListItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(DataFilter)]),
          () => ListBuilder<DataFilter>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(StaticListItem)]),
          () => ListBuilder<StaticListItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(DataFilter)]),
          () => ListBuilder<DataFilter>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(StaticListItem)]),
          () => ListBuilder<StaticListItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(DataFilter)]),
          () => ListBuilder<DataFilter>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TaskRecordDto)]),
          () => ListBuilder<TaskRecordDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TaskRecordDto)]),
          () => ListBuilder<TaskRecordDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(TemplateCategoryDto)]),
          () => ListBuilder<TemplateCategoryDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(TemplateCategoryDto)]),
          () => ListBuilder<TemplateCategoryDto>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(TemplateCategoryLookupTableDto)]),
          () => ListBuilder<TemplateCategoryLookupTableDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TemplateDto)]),
          () => ListBuilder<TemplateDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TemplateDto)]),
          () => ListBuilder<TemplateDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TemplateDto)]),
          () => ListBuilder<TemplateDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TenantClaim)]),
          () => ListBuilder<TenantClaim>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TenantEdition)]),
          () => ListBuilder<TenantEdition>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TenantListDto)]),
          () => ListBuilder<TenantListDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(UserDelegationDto)]),
          () => ListBuilder<UserDelegationDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(UserListDto)]),
          () => ListBuilder<UserListDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(UserListDto)]),
          () => ListBuilder<UserListDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(UserListRoleDto)]),
          () => ListBuilder<UserListRoleDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(UserListRoleDto)]),
          () => ListBuilder<UserListRoleDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(UserListWithInvitedDto)]),
          () => ListBuilder<UserListWithInvitedDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(UserLoginAttemptDto)]),
          () => ListBuilder<UserLoginAttemptDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(UserOrganizationUnit)]),
          () => ListBuilder<UserOrganizationUnit>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(UserToken)]),
          () => ListBuilder<UserToken>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(UserLogin)]),
          () => ListBuilder<UserLogin>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(UserRole)]),
          () => ListBuilder<UserRole>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(UserClaim)]),
          () => ListBuilder<UserClaim>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(UserPermissionSetting)]),
          () => ListBuilder<UserPermissionSetting>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Setting)]),
          () => ListBuilder<Setting>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(UserRoleDto)]),
          () => ListBuilder<UserRoleDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ViewDto)]),
          () => ListBuilder<ViewDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ViewDto)]),
          () => ListBuilder<ViewDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FieldDto)]),
          () => ListBuilder<FieldDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(WidgetDto)]),
          () => ListBuilder<WidgetDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(WidgetValue)]),
          () => ListBuilder<WidgetValue>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(KeyValuePairOfStringObject)]),
          () => ListBuilder<KeyValuePairOfStringObject>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(X509Certificate2)]),
          () => ListBuilder<X509Certificate2>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(X509Certificate2)]),
          () => ListBuilder<X509Certificate2>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(X509Extension)]),
          () => ListBuilder<X509Extension>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(LinkedRecord)]),
          () => ListBuilder<LinkedRecord>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(HistoryAction)]),
          () => ListBuilder<HistoryAction>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ViewAccessibilityDto)]),
          () => ListBuilder<ViewAccessibilityDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(FieldAccessLevel)]),
          () => MapBuilder<String, FieldAccessLevel>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterPermission)]),
          () => ListBuilder<FilterPermission>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(JsonObject)]),
          () => MapBuilder<String, JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(JsonObject)]),
          () => MapBuilder<String, JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(JsonObject)]),
          () => MapBuilder<String, JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(JsonObject)]),
          () => MapBuilder<String, JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(JsonObject)]),
          () => MapBuilder<String, JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(JsonObject)]),
          () => MapBuilder<String, JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(JsonObject)]),
          () => MapBuilder<String, JsonObject>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ReplyItem)]),
          () => ListBuilder<ReplyItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(EmojiItem)]),
          () => ListBuilder<EmojiItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FileMetadataDto)]),
          () => ListBuilder<FileMetadataDto>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(String)]),
          () => MapBuilder<String, String>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(String)]),
          () => MapBuilder<String, String>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(String)]),
          () => MapBuilder<String, String>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(String)]),
          () => MapBuilder<String, String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(bool)]),
          () => MapBuilder<String, bool>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
