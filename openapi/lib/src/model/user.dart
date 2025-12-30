//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/user_permission_setting.dart';
import 'package:openapi/src/model/user_login.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/user_claim.dart';
import 'package:openapi/src/model/user_token.dart';
import 'package:openapi/src/model/user_type.dart';
import 'package:openapi/src/model/setting.dart';
import 'package:openapi/src/model/user_role.dart';
import 'package:openapi/src/model/user_organization_unit.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

/// User
///
/// Properties:
/// * [userType] 
/// * [profilePictureId] 
/// * [shouldChangePasswordOnNextLogin] 
/// * [signInTokenExpireTimeUtc] 
/// * [signInToken] 
/// * [isPayed] 
/// * [googleAuthenticatorKey] 
/// * [apiKey] 
/// * [apiKeyLastGenerationDate] 
/// * [userToken] 
/// * [allowSetPassword] 
/// * [passwordExpirationDate] 
/// * [passwordLastChangeDate] 
/// * [title] 
/// * [isSystemUser] 
/// * [organizationUnits] 
/// * [normalizedUserName] 
/// * [normalizedEmailAddress] 
/// * [concurrencyStamp] 
/// * [tokens] 
/// * [deleterUser] 
/// * [creatorUser] 
/// * [lastModifierUser] 
/// * [authenticationSource] 
/// * [userName] 
/// * [tenantId] 
/// * [emailAddress] 
/// * [name] 
/// * [surname] 
/// * [fullName] 
/// * [password] 
/// * [emailConfirmationCode] 
/// * [passwordResetCode] 
/// * [lockoutEndDateUtc] 
/// * [accessFailedCount] 
/// * [isLockoutEnabled] 
/// * [phoneNumber] 
/// * [isPhoneNumberConfirmed] 
/// * [securityStamp] 
/// * [isTwoFactorEnabled] 
/// * [logins] 
/// * [roles] 
/// * [claims] 
/// * [permissions] 
/// * [settings] 
/// * [isEmailConfirmed] 
/// * [isActive] 
/// * [isDeleted] 
/// * [deleterUserId] 
/// * [deletionTime] 
/// * [lastModificationTime] 
/// * [lastModifierUserId] 
/// * [creationTime] 
/// * [creatorUserId] 
/// * [id] 
@BuiltValue()
abstract class User implements Built<User, UserBuilder> {
  @BuiltValueField(wireName: r'userType')
  UserType? get userType;
  // enum userTypeEnum {  0,  1,  };

  @BuiltValueField(wireName: r'profilePictureId')
  String? get profilePictureId;

  @BuiltValueField(wireName: r'shouldChangePasswordOnNextLogin')
  bool? get shouldChangePasswordOnNextLogin;

  @BuiltValueField(wireName: r'signInTokenExpireTimeUtc')
  DateTime? get signInTokenExpireTimeUtc;

  @BuiltValueField(wireName: r'signInToken')
  String? get signInToken;

  @BuiltValueField(wireName: r'isPayed')
  bool? get isPayed;

  @BuiltValueField(wireName: r'googleAuthenticatorKey')
  String? get googleAuthenticatorKey;

  @BuiltValueField(wireName: r'apiKey')
  String? get apiKey;

  @BuiltValueField(wireName: r'apiKeyLastGenerationDate')
  DateTime? get apiKeyLastGenerationDate;

  @BuiltValueField(wireName: r'userToken')
  String? get userToken;

  @BuiltValueField(wireName: r'allowSetPassword')
  bool? get allowSetPassword;

  @BuiltValueField(wireName: r'passwordExpirationDate')
  DateTime? get passwordExpirationDate;

  @BuiltValueField(wireName: r'passwordLastChangeDate')
  DateTime? get passwordLastChangeDate;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'isSystemUser')
  bool? get isSystemUser;

  @BuiltValueField(wireName: r'organizationUnits')
  BuiltList<UserOrganizationUnit>? get organizationUnits;

  @BuiltValueField(wireName: r'normalizedUserName')
  String get normalizedUserName;

  @BuiltValueField(wireName: r'normalizedEmailAddress')
  String get normalizedEmailAddress;

  @BuiltValueField(wireName: r'concurrencyStamp')
  String? get concurrencyStamp;

  @BuiltValueField(wireName: r'tokens')
  BuiltList<UserToken>? get tokens;

  @BuiltValueField(wireName: r'deleterUser')
  User? get deleterUser;

  @BuiltValueField(wireName: r'creatorUser')
  User? get creatorUser;

  @BuiltValueField(wireName: r'lastModifierUser')
  User? get lastModifierUser;

  @BuiltValueField(wireName: r'authenticationSource')
  String? get authenticationSource;

  @BuiltValueField(wireName: r'userName')
  String get userName;

  @BuiltValueField(wireName: r'tenantId')
  int? get tenantId;

  @BuiltValueField(wireName: r'emailAddress')
  String get emailAddress;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'surname')
  String get surname;

  @BuiltValueField(wireName: r'fullName')
  String? get fullName;

  @BuiltValueField(wireName: r'password')
  String get password;

  @BuiltValueField(wireName: r'emailConfirmationCode')
  String? get emailConfirmationCode;

  @BuiltValueField(wireName: r'passwordResetCode')
  String? get passwordResetCode;

  @BuiltValueField(wireName: r'lockoutEndDateUtc')
  DateTime? get lockoutEndDateUtc;

  @BuiltValueField(wireName: r'accessFailedCount')
  int? get accessFailedCount;

  @BuiltValueField(wireName: r'isLockoutEnabled')
  bool? get isLockoutEnabled;

  @BuiltValueField(wireName: r'phoneNumber')
  String? get phoneNumber;

  @BuiltValueField(wireName: r'isPhoneNumberConfirmed')
  bool? get isPhoneNumberConfirmed;

  @BuiltValueField(wireName: r'securityStamp')
  String? get securityStamp;

  @BuiltValueField(wireName: r'isTwoFactorEnabled')
  bool? get isTwoFactorEnabled;

  @BuiltValueField(wireName: r'logins')
  BuiltList<UserLogin>? get logins;

  @BuiltValueField(wireName: r'roles')
  BuiltList<UserRole>? get roles;

  @BuiltValueField(wireName: r'claims')
  BuiltList<UserClaim>? get claims;

  @BuiltValueField(wireName: r'permissions')
  BuiltList<UserPermissionSetting>? get permissions;

  @BuiltValueField(wireName: r'settings')
  BuiltList<Setting>? get settings;

  @BuiltValueField(wireName: r'isEmailConfirmed')
  bool? get isEmailConfirmed;

  @BuiltValueField(wireName: r'isActive')
  bool? get isActive;

  @BuiltValueField(wireName: r'isDeleted')
  bool? get isDeleted;

  @BuiltValueField(wireName: r'deleterUserId')
  int? get deleterUserId;

  @BuiltValueField(wireName: r'deletionTime')
  DateTime? get deletionTime;

  @BuiltValueField(wireName: r'lastModificationTime')
  DateTime? get lastModificationTime;

  @BuiltValueField(wireName: r'lastModifierUserId')
  int? get lastModifierUserId;

  @BuiltValueField(wireName: r'creationTime')
  DateTime? get creationTime;

  @BuiltValueField(wireName: r'creatorUserId')
  int? get creatorUserId;

  @BuiltValueField(wireName: r'id')
  int? get id;

  User._();

  factory User([void updates(UserBuilder b)]) = _$User;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<User> get serializer => _$UserSerializer();
}

class _$UserSerializer implements PrimitiveSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];

  @override
  final String wireName = r'User';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    User object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.userType != null) {
      yield r'userType';
      yield serializers.serialize(
        object.userType,
        specifiedType: const FullType(UserType),
      );
    }
    if (object.profilePictureId != null) {
      yield r'profilePictureId';
      yield serializers.serialize(
        object.profilePictureId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.shouldChangePasswordOnNextLogin != null) {
      yield r'shouldChangePasswordOnNextLogin';
      yield serializers.serialize(
        object.shouldChangePasswordOnNextLogin,
        specifiedType: const FullType(bool),
      );
    }
    if (object.signInTokenExpireTimeUtc != null) {
      yield r'signInTokenExpireTimeUtc';
      yield serializers.serialize(
        object.signInTokenExpireTimeUtc,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.signInToken != null) {
      yield r'signInToken';
      yield serializers.serialize(
        object.signInToken,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isPayed != null) {
      yield r'isPayed';
      yield serializers.serialize(
        object.isPayed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.googleAuthenticatorKey != null) {
      yield r'googleAuthenticatorKey';
      yield serializers.serialize(
        object.googleAuthenticatorKey,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.apiKey != null) {
      yield r'apiKey';
      yield serializers.serialize(
        object.apiKey,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.apiKeyLastGenerationDate != null) {
      yield r'apiKeyLastGenerationDate';
      yield serializers.serialize(
        object.apiKeyLastGenerationDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.userToken != null) {
      yield r'userToken';
      yield serializers.serialize(
        object.userToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.allowSetPassword != null) {
      yield r'allowSetPassword';
      yield serializers.serialize(
        object.allowSetPassword,
        specifiedType: const FullType(bool),
      );
    }
    if (object.passwordExpirationDate != null) {
      yield r'passwordExpirationDate';
      yield serializers.serialize(
        object.passwordExpirationDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.passwordLastChangeDate != null) {
      yield r'passwordLastChangeDate';
      yield serializers.serialize(
        object.passwordLastChangeDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isSystemUser != null) {
      yield r'isSystemUser';
      yield serializers.serialize(
        object.isSystemUser,
        specifiedType: const FullType(bool),
      );
    }
    if (object.organizationUnits != null) {
      yield r'organizationUnits';
      yield serializers.serialize(
        object.organizationUnits,
        specifiedType: const FullType.nullable(BuiltList, [FullType(UserOrganizationUnit)]),
      );
    }
    yield r'normalizedUserName';
    yield serializers.serialize(
      object.normalizedUserName,
      specifiedType: const FullType(String),
    );
    yield r'normalizedEmailAddress';
    yield serializers.serialize(
      object.normalizedEmailAddress,
      specifiedType: const FullType(String),
    );
    if (object.concurrencyStamp != null) {
      yield r'concurrencyStamp';
      yield serializers.serialize(
        object.concurrencyStamp,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.tokens != null) {
      yield r'tokens';
      yield serializers.serialize(
        object.tokens,
        specifiedType: const FullType.nullable(BuiltList, [FullType(UserToken)]),
      );
    }
    if (object.deleterUser != null) {
      yield r'deleterUser';
      yield serializers.serialize(
        object.deleterUser,
        specifiedType: const FullType(User),
      );
    }
    if (object.creatorUser != null) {
      yield r'creatorUser';
      yield serializers.serialize(
        object.creatorUser,
        specifiedType: const FullType(User),
      );
    }
    if (object.lastModifierUser != null) {
      yield r'lastModifierUser';
      yield serializers.serialize(
        object.lastModifierUser,
        specifiedType: const FullType(User),
      );
    }
    if (object.authenticationSource != null) {
      yield r'authenticationSource';
      yield serializers.serialize(
        object.authenticationSource,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'userName';
    yield serializers.serialize(
      object.userName,
      specifiedType: const FullType(String),
    );
    if (object.tenantId != null) {
      yield r'tenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType.nullable(int),
      );
    }
    yield r'emailAddress';
    yield serializers.serialize(
      object.emailAddress,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'surname';
    yield serializers.serialize(
      object.surname,
      specifiedType: const FullType(String),
    );
    if (object.fullName != null) {
      yield r'fullName';
      yield serializers.serialize(
        object.fullName,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
    if (object.emailConfirmationCode != null) {
      yield r'emailConfirmationCode';
      yield serializers.serialize(
        object.emailConfirmationCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.passwordResetCode != null) {
      yield r'passwordResetCode';
      yield serializers.serialize(
        object.passwordResetCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.lockoutEndDateUtc != null) {
      yield r'lockoutEndDateUtc';
      yield serializers.serialize(
        object.lockoutEndDateUtc,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.accessFailedCount != null) {
      yield r'accessFailedCount';
      yield serializers.serialize(
        object.accessFailedCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.isLockoutEnabled != null) {
      yield r'isLockoutEnabled';
      yield serializers.serialize(
        object.isLockoutEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.phoneNumber != null) {
      yield r'phoneNumber';
      yield serializers.serialize(
        object.phoneNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isPhoneNumberConfirmed != null) {
      yield r'isPhoneNumberConfirmed';
      yield serializers.serialize(
        object.isPhoneNumberConfirmed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.securityStamp != null) {
      yield r'securityStamp';
      yield serializers.serialize(
        object.securityStamp,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isTwoFactorEnabled != null) {
      yield r'isTwoFactorEnabled';
      yield serializers.serialize(
        object.isTwoFactorEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.logins != null) {
      yield r'logins';
      yield serializers.serialize(
        object.logins,
        specifiedType: const FullType.nullable(BuiltList, [FullType(UserLogin)]),
      );
    }
    if (object.roles != null) {
      yield r'roles';
      yield serializers.serialize(
        object.roles,
        specifiedType: const FullType.nullable(BuiltList, [FullType(UserRole)]),
      );
    }
    if (object.claims != null) {
      yield r'claims';
      yield serializers.serialize(
        object.claims,
        specifiedType: const FullType.nullable(BuiltList, [FullType(UserClaim)]),
      );
    }
    if (object.permissions != null) {
      yield r'permissions';
      yield serializers.serialize(
        object.permissions,
        specifiedType: const FullType.nullable(BuiltList, [FullType(UserPermissionSetting)]),
      );
    }
    if (object.settings != null) {
      yield r'settings';
      yield serializers.serialize(
        object.settings,
        specifiedType: const FullType.nullable(BuiltList, [FullType(Setting)]),
      );
    }
    if (object.isEmailConfirmed != null) {
      yield r'isEmailConfirmed';
      yield serializers.serialize(
        object.isEmailConfirmed,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isActive != null) {
      yield r'isActive';
      yield serializers.serialize(
        object.isActive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.isDeleted != null) {
      yield r'isDeleted';
      yield serializers.serialize(
        object.isDeleted,
        specifiedType: const FullType(bool),
      );
    }
    if (object.deleterUserId != null) {
      yield r'deleterUserId';
      yield serializers.serialize(
        object.deleterUserId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.deletionTime != null) {
      yield r'deletionTime';
      yield serializers.serialize(
        object.deletionTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastModificationTime != null) {
      yield r'lastModificationTime';
      yield serializers.serialize(
        object.lastModificationTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.lastModifierUserId != null) {
      yield r'lastModifierUserId';
      yield serializers.serialize(
        object.lastModifierUserId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.creationTime != null) {
      yield r'creationTime';
      yield serializers.serialize(
        object.creationTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.creatorUserId != null) {
      yield r'creatorUserId';
      yield serializers.serialize(
        object.creatorUserId,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    User object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'userType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserType),
          ) as UserType;
          result.userType = valueDes;
          break;
        case r'profilePictureId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.profilePictureId = valueDes;
          break;
        case r'shouldChangePasswordOnNextLogin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.shouldChangePasswordOnNextLogin = valueDes;
          break;
        case r'signInTokenExpireTimeUtc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.signInTokenExpireTimeUtc = valueDes;
          break;
        case r'signInToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.signInToken = valueDes;
          break;
        case r'isPayed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPayed = valueDes;
          break;
        case r'googleAuthenticatorKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.googleAuthenticatorKey = valueDes;
          break;
        case r'apiKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.apiKey = valueDes;
          break;
        case r'apiKeyLastGenerationDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.apiKeyLastGenerationDate = valueDes;
          break;
        case r'userToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userToken = valueDes;
          break;
        case r'allowSetPassword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowSetPassword = valueDes;
          break;
        case r'passwordExpirationDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.passwordExpirationDate = valueDes;
          break;
        case r'passwordLastChangeDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.passwordLastChangeDate = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'isSystemUser':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isSystemUser = valueDes;
          break;
        case r'organizationUnits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(UserOrganizationUnit)]),
          ) as BuiltList<UserOrganizationUnit>?;
          if (valueDes == null) continue;
          result.organizationUnits.replace(valueDes);
          break;
        case r'normalizedUserName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.normalizedUserName = valueDes;
          break;
        case r'normalizedEmailAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.normalizedEmailAddress = valueDes;
          break;
        case r'concurrencyStamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.concurrencyStamp = valueDes;
          break;
        case r'tokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(UserToken)]),
          ) as BuiltList<UserToken>?;
          if (valueDes == null) continue;
          result.tokens.replace(valueDes);
          break;
        case r'deleterUser':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.deleterUser.replace(valueDes);
          break;
        case r'creatorUser':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.creatorUser.replace(valueDes);
          break;
        case r'lastModifierUser':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.lastModifierUser.replace(valueDes);
          break;
        case r'authenticationSource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.authenticationSource = valueDes;
          break;
        case r'userName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userName = valueDes;
          break;
        case r'tenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.tenantId = valueDes;
          break;
        case r'emailAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.emailAddress = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'surname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.surname = valueDes;
          break;
        case r'fullName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fullName = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'emailConfirmationCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.emailConfirmationCode = valueDes;
          break;
        case r'passwordResetCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.passwordResetCode = valueDes;
          break;
        case r'lockoutEndDateUtc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lockoutEndDateUtc = valueDes;
          break;
        case r'accessFailedCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.accessFailedCount = valueDes;
          break;
        case r'isLockoutEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isLockoutEnabled = valueDes;
          break;
        case r'phoneNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phoneNumber = valueDes;
          break;
        case r'isPhoneNumberConfirmed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPhoneNumberConfirmed = valueDes;
          break;
        case r'securityStamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.securityStamp = valueDes;
          break;
        case r'isTwoFactorEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isTwoFactorEnabled = valueDes;
          break;
        case r'logins':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(UserLogin)]),
          ) as BuiltList<UserLogin>?;
          if (valueDes == null) continue;
          result.logins.replace(valueDes);
          break;
        case r'roles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(UserRole)]),
          ) as BuiltList<UserRole>?;
          if (valueDes == null) continue;
          result.roles.replace(valueDes);
          break;
        case r'claims':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(UserClaim)]),
          ) as BuiltList<UserClaim>?;
          if (valueDes == null) continue;
          result.claims.replace(valueDes);
          break;
        case r'permissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(UserPermissionSetting)]),
          ) as BuiltList<UserPermissionSetting>?;
          if (valueDes == null) continue;
          result.permissions.replace(valueDes);
          break;
        case r'settings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(Setting)]),
          ) as BuiltList<Setting>?;
          if (valueDes == null) continue;
          result.settings.replace(valueDes);
          break;
        case r'isEmailConfirmed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isEmailConfirmed = valueDes;
          break;
        case r'isActive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isActive = valueDes;
          break;
        case r'isDeleted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDeleted = valueDes;
          break;
        case r'deleterUserId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.deleterUserId = valueDes;
          break;
        case r'deletionTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.deletionTime = valueDes;
          break;
        case r'lastModificationTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.lastModificationTime = valueDes;
          break;
        case r'lastModifierUserId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.lastModifierUserId = valueDes;
          break;
        case r'creationTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.creationTime = valueDes;
          break;
        case r'creatorUserId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.creatorUserId = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  User deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

