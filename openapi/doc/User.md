# openapi.model.User

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userType** | [**UserType**](UserType.md) |  | [optional] 
**profilePictureId** | **String** |  | [optional] 
**shouldChangePasswordOnNextLogin** | **bool** |  | [optional] 
**signInTokenExpireTimeUtc** | [**DateTime**](DateTime.md) |  | [optional] 
**signInToken** | **String** |  | [optional] 
**isPayed** | **bool** |  | [optional] 
**googleAuthenticatorKey** | **String** |  | [optional] 
**apiKey** | **String** |  | [optional] 
**apiKeyLastGenerationDate** | [**DateTime**](DateTime.md) |  | [optional] 
**userToken** | **String** |  | [optional] 
**allowSetPassword** | **bool** |  | [optional] 
**passwordExpirationDate** | [**DateTime**](DateTime.md) |  | [optional] 
**passwordLastChangeDate** | [**DateTime**](DateTime.md) |  | [optional] 
**title** | **String** |  | [optional] 
**isSystemUser** | **bool** |  | [optional] 
**organizationUnits** | [**BuiltList&lt;UserOrganizationUnit&gt;**](UserOrganizationUnit.md) |  | [optional] 
**normalizedUserName** | **String** |  | 
**normalizedEmailAddress** | **String** |  | 
**concurrencyStamp** | **String** |  | [optional] 
**tokens** | [**BuiltList&lt;UserToken&gt;**](UserToken.md) |  | [optional] 
**deleterUser** | [**User**](User.md) |  | [optional] 
**creatorUser** | [**User**](User.md) |  | [optional] 
**lastModifierUser** | [**User**](User.md) |  | [optional] 
**authenticationSource** | **String** |  | [optional] 
**userName** | **String** |  | 
**tenantId** | **int** |  | [optional] 
**emailAddress** | **String** |  | 
**name** | **String** |  | 
**surname** | **String** |  | 
**fullName** | **String** |  | [optional] 
**password** | **String** |  | 
**emailConfirmationCode** | **String** |  | [optional] 
**passwordResetCode** | **String** |  | [optional] 
**lockoutEndDateUtc** | [**DateTime**](DateTime.md) |  | [optional] 
**accessFailedCount** | **int** |  | [optional] 
**isLockoutEnabled** | **bool** |  | [optional] 
**phoneNumber** | **String** |  | [optional] 
**isPhoneNumberConfirmed** | **bool** |  | [optional] 
**securityStamp** | **String** |  | [optional] 
**isTwoFactorEnabled** | **bool** |  | [optional] 
**logins** | [**BuiltList&lt;UserLogin&gt;**](UserLogin.md) |  | [optional] 
**roles** | [**BuiltList&lt;UserRole&gt;**](UserRole.md) |  | [optional] 
**claims** | [**BuiltList&lt;UserClaim&gt;**](UserClaim.md) |  | [optional] 
**permissions** | [**BuiltList&lt;UserPermissionSetting&gt;**](UserPermissionSetting.md) |  | [optional] 
**settings** | [**BuiltList&lt;Setting&gt;**](Setting.md) |  | [optional] 
**isEmailConfirmed** | **bool** |  | [optional] 
**isActive** | **bool** |  | [optional] 
**isDeleted** | **bool** |  | [optional] 
**deleterUserId** | **int** |  | [optional] 
**deletionTime** | [**DateTime**](DateTime.md) |  | [optional] 
**lastModificationTime** | [**DateTime**](DateTime.md) |  | [optional] 
**lastModifierUserId** | **int** |  | [optional] 
**creationTime** | [**DateTime**](DateTime.md) |  | [optional] 
**creatorUserId** | **int** |  | [optional] 
**id** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


