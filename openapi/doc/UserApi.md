# openapi.api.UserApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppUserAcceptuserinvitationPost**](UserApi.md#apiservicesappuseracceptuserinvitationpost) | **POST** /api/services/app/User/AcceptUserInvitation | 
[**apiServicesAppUserAcceptuserinvitationfromexternalloginPost**](UserApi.md#apiservicesappuseracceptuserinvitationfromexternalloginpost) | **POST** /api/services/app/User/AcceptUserInvitationFromExternalLogin | 
[**apiServicesAppUserChangeusertypePost**](UserApi.md#apiservicesappuserchangeusertypepost) | **POST** /api/services/app/User/ChangeUserType | 
[**apiServicesAppUserCreateorupdateuserPost**](UserApi.md#apiservicesappusercreateorupdateuserpost) | **POST** /api/services/app/User/CreateOrUpdateUser | 
[**apiServicesAppUserDeleteuserinvitationDelete**](UserApi.md#apiservicesappuserdeleteuserinvitationdelete) | **DELETE** /api/services/app/User/DeleteUserInvitation | 
[**apiServicesAppUserGetalluserinvitationsGet**](UserApi.md#apiservicesappusergetalluserinvitationsget) | **GET** /api/services/app/User/GetAllUserInvitations | 
[**apiServicesAppUserGetallusersGet**](UserApi.md#apiservicesappusergetallusersget) | **GET** /api/services/app/User/GetAllUsers | 
[**apiServicesAppUserGetalluserswithinvitedGet**](UserApi.md#apiservicesappusergetalluserswithinvitedget) | **GET** /api/services/app/User/GetAllUsersWithInvited | 
[**apiServicesAppUserGetcurrentusersactiveGet**](UserApi.md#apiservicesappusergetcurrentusersactiveget) | **GET** /api/services/app/User/GetCurrentUsersActive | 
[**apiServicesAppUserGetinvitationlinkGet**](UserApi.md#apiservicesappusergetinvitationlinkget) | **GET** /api/services/app/User/GetInvitationLink | 
[**apiServicesAppUserGetuserforeditGet**](UserApi.md#apiservicesappusergetuserforeditget) | **GET** /api/services/app/User/GetUserForEdit | 
[**apiServicesAppUserGetuserinvitationGet**](UserApi.md#apiservicesappusergetuserinvitationget) | **GET** /api/services/app/User/GetUserInvitation | 
[**apiServicesAppUserGetusersGet**](UserApi.md#apiservicesappusergetusersget) | **GET** /api/services/app/User/GetUsers | 
[**apiServicesAppUserGetuserstoexcelGet**](UserApi.md#apiservicesappusergetuserstoexcelget) | **GET** /api/services/app/User/GetUsersToExcel | 
[**apiServicesAppUserGetvalueforuseridentityflagGet**](UserApi.md#apiservicesappusergetvalueforuseridentityflagget) | **GET** /api/services/app/User/GetValueForUserIdentityFlag | 
[**apiServicesAppUserInviteusersPost**](UserApi.md#apiservicesappuserinviteuserspost) | **POST** /api/services/app/User/InviteUsers | 
[**apiServicesAppUserResenduserinvitationPost**](UserApi.md#apiservicesappuserresenduserinvitationpost) | **POST** /api/services/app/User/ResendUserInvitation | 
[**apiServicesAppUserUnlockuserPost**](UserApi.md#apiservicesappuserunlockuserpost) | **POST** /api/services/app/User/UnlockUser | 


# **apiServicesAppUserAcceptuserinvitationPost**
> CaptchaResult apiServicesAppUserAcceptuserinvitationPost(acceptUserInvitationDto)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final AcceptUserInvitationDto acceptUserInvitationDto = ; // AcceptUserInvitationDto | 

try {
    final response = api.apiServicesAppUserAcceptuserinvitationPost(acceptUserInvitationDto);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UserApi->apiServicesAppUserAcceptuserinvitationPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acceptUserInvitationDto** | [**AcceptUserInvitationDto**](AcceptUserInvitationDto.md)|  | [optional] 

### Return type

[**CaptchaResult**](CaptchaResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserAcceptuserinvitationfromexternalloginPost**
> apiServicesAppUserAcceptuserinvitationfromexternalloginPost(acceptUserInvitationFromExternalLoginDto)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final AcceptUserInvitationFromExternalLoginDto acceptUserInvitationFromExternalLoginDto = ; // AcceptUserInvitationFromExternalLoginDto | 

try {
    api.apiServicesAppUserAcceptuserinvitationfromexternalloginPost(acceptUserInvitationFromExternalLoginDto);
} on DioException catch (e) {
    print('Exception when calling UserApi->apiServicesAppUserAcceptuserinvitationfromexternalloginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acceptUserInvitationFromExternalLoginDto** | [**AcceptUserInvitationFromExternalLoginDto**](AcceptUserInvitationFromExternalLoginDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserChangeusertypePost**
> apiServicesAppUserChangeusertypePost(changeUserTypeInput)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final ChangeUserTypeInput changeUserTypeInput = ; // ChangeUserTypeInput | 

try {
    api.apiServicesAppUserChangeusertypePost(changeUserTypeInput);
} on DioException catch (e) {
    print('Exception when calling UserApi->apiServicesAppUserChangeusertypePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **changeUserTypeInput** | [**ChangeUserTypeInput**](ChangeUserTypeInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserCreateorupdateuserPost**
> LookupUserDto apiServicesAppUserCreateorupdateuserPost(createOrUpdateUserInput)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final CreateOrUpdateUserInput createOrUpdateUserInput = ; // CreateOrUpdateUserInput | 

try {
    final response = api.apiServicesAppUserCreateorupdateuserPost(createOrUpdateUserInput);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UserApi->apiServicesAppUserCreateorupdateuserPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createOrUpdateUserInput** | [**CreateOrUpdateUserInput**](CreateOrUpdateUserInput.md)|  | [optional] 

### Return type

[**LookupUserDto**](LookupUserDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserDeleteuserinvitationDelete**
> apiServicesAppUserDeleteuserinvitationDelete(invitationId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final String invitationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.apiServicesAppUserDeleteuserinvitationDelete(invitationId);
} on DioException catch (e) {
    print('Exception when calling UserApi->apiServicesAppUserDeleteuserinvitationDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invitationId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserGetalluserinvitationsGet**
> BuiltList<UserInvitationDto> apiServicesAppUserGetalluserinvitationsGet()



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();

try {
    final response = api.apiServicesAppUserGetalluserinvitationsGet();
    print(response);
} on DioException catch (e) {
    print('Exception when calling UserApi->apiServicesAppUserGetalluserinvitationsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UserInvitationDto&gt;**](UserInvitationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserGetallusersGet**
> ListResultDtoOfUserListDto apiServicesAppUserGetallusersGet(filter, permissions, role, onlyLockedUsers, sorting)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final String filter = filter_example; // String | 
final BuiltList<String> permissions = ; // BuiltList<String> | 
final int role = 56; // int | 
final bool onlyLockedUsers = true; // bool | 
final String sorting = sorting_example; // String | 

try {
    final response = api.apiServicesAppUserGetallusersGet(filter, permissions, role, onlyLockedUsers, sorting);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UserApi->apiServicesAppUserGetallusersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **permissions** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional] 
 **role** | **int**|  | [optional] 
 **onlyLockedUsers** | **bool**|  | [optional] 
 **sorting** | **String**|  | [optional] 

### Return type

[**ListResultDtoOfUserListDto**](ListResultDtoOfUserListDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserGetalluserswithinvitedGet**
> ListResultDtoOfUserListWithInvitedDto apiServicesAppUserGetalluserswithinvitedGet(filter, permissions, role, onlyLockedUsers, sorting)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final String filter = filter_example; // String | 
final BuiltList<String> permissions = ; // BuiltList<String> | 
final int role = 56; // int | 
final bool onlyLockedUsers = true; // bool | 
final String sorting = sorting_example; // String | 

try {
    final response = api.apiServicesAppUserGetalluserswithinvitedGet(filter, permissions, role, onlyLockedUsers, sorting);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UserApi->apiServicesAppUserGetalluserswithinvitedGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **permissions** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional] 
 **role** | **int**|  | [optional] 
 **onlyLockedUsers** | **bool**|  | [optional] 
 **sorting** | **String**|  | [optional] 

### Return type

[**ListResultDtoOfUserListWithInvitedDto**](ListResultDtoOfUserListWithInvitedDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserGetcurrentusersactiveGet**
> int apiServicesAppUserGetcurrentusersactiveGet(tenantId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final int tenantId = 56; // int | 

try {
    final response = api.apiServicesAppUserGetcurrentusersactiveGet(tenantId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UserApi->apiServicesAppUserGetcurrentusersactiveGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **int**|  | [optional] 

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserGetinvitationlinkGet**
> String apiServicesAppUserGetinvitationlinkGet(invitationId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final String invitationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiServicesAppUserGetinvitationlinkGet(invitationId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UserApi->apiServicesAppUserGetinvitationlinkGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invitationId** | **String**|  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserGetuserforeditGet**
> GetUserForEditOutput apiServicesAppUserGetuserforeditGet(id)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final int id = 789; // int | 

try {
    final response = api.apiServicesAppUserGetuserforeditGet(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UserApi->apiServicesAppUserGetuserforeditGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetUserForEditOutput**](GetUserForEditOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserGetuserinvitationGet**
> UserInvitationDto apiServicesAppUserGetuserinvitationGet(invitationId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final String invitationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiServicesAppUserGetuserinvitationGet(invitationId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UserApi->apiServicesAppUserGetuserinvitationGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invitationId** | **String**|  | [optional] 

### Return type

[**UserInvitationDto**](UserInvitationDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserGetusersGet**
> PagedResultDtoOfUserListDto apiServicesAppUserGetusersGet(maxResultCount, skipCount, filter, permissions, role, onlyLockedUsers, sorting)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final int maxResultCount = 56; // int | 
final int skipCount = 56; // int | 
final String filter = filter_example; // String | 
final BuiltList<String> permissions = ; // BuiltList<String> | 
final int role = 56; // int | 
final bool onlyLockedUsers = true; // bool | 
final String sorting = sorting_example; // String | 

try {
    final response = api.apiServicesAppUserGetusersGet(maxResultCount, skipCount, filter, permissions, role, onlyLockedUsers, sorting);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UserApi->apiServicesAppUserGetusersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxResultCount** | **int**|  | [optional] 
 **skipCount** | **int**|  | [optional] 
 **filter** | **String**|  | [optional] 
 **permissions** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional] 
 **role** | **int**|  | [optional] 
 **onlyLockedUsers** | **bool**|  | [optional] 
 **sorting** | **String**|  | [optional] 

### Return type

[**PagedResultDtoOfUserListDto**](PagedResultDtoOfUserListDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserGetuserstoexcelGet**
> FileDto apiServicesAppUserGetuserstoexcelGet(filter, permissions, role, onlyLockedUsers, sorting)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final String filter = filter_example; // String | 
final BuiltList<String> permissions = ; // BuiltList<String> | 
final int role = 56; // int | 
final bool onlyLockedUsers = true; // bool | 
final String sorting = sorting_example; // String | 

try {
    final response = api.apiServicesAppUserGetuserstoexcelGet(filter, permissions, role, onlyLockedUsers, sorting);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UserApi->apiServicesAppUserGetuserstoexcelGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **permissions** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional] 
 **role** | **int**|  | [optional] 
 **onlyLockedUsers** | **bool**|  | [optional] 
 **sorting** | **String**|  | [optional] 

### Return type

[**FileDto**](FileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserGetvalueforuseridentityflagGet**
> int apiServicesAppUserGetvalueforuseridentityflagGet(flag)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final UserIdentityFlag flag = ; // UserIdentityFlag | 

try {
    final response = api.apiServicesAppUserGetvalueforuseridentityflagGet(flag);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UserApi->apiServicesAppUserGetvalueforuseridentityflagGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flag** | [**UserIdentityFlag**](.md)|  | [optional] 

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserInviteusersPost**
> apiServicesAppUserInviteusersPost(createInvitationDto)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final CreateInvitationDto createInvitationDto = ; // CreateInvitationDto | 

try {
    api.apiServicesAppUserInviteusersPost(createInvitationDto);
} on DioException catch (e) {
    print('Exception when calling UserApi->apiServicesAppUserInviteusersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createInvitationDto** | [**CreateInvitationDto**](CreateInvitationDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserResenduserinvitationPost**
> apiServicesAppUserResenduserinvitationPost(invitationId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final String invitationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.apiServicesAppUserResenduserinvitationPost(invitationId);
} on DioException catch (e) {
    print('Exception when calling UserApi->apiServicesAppUserResenduserinvitationPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invitationId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppUserUnlockuserPost**
> apiServicesAppUserUnlockuserPost(entityDtoOfInt64)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final EntityDtoOfInt64 entityDtoOfInt64 = ; // EntityDtoOfInt64 | 

try {
    api.apiServicesAppUserUnlockuserPost(entityDtoOfInt64);
} on DioException catch (e) {
    print('Exception when calling UserApi->apiServicesAppUserUnlockuserPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityDtoOfInt64** | [**EntityDtoOfInt64**](EntityDtoOfInt64.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

