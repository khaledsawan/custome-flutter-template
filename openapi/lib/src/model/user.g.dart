// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$User extends User {
  @override
  final UserType? userType;
  @override
  final String? profilePictureId;
  @override
  final bool? shouldChangePasswordOnNextLogin;
  @override
  final DateTime? signInTokenExpireTimeUtc;
  @override
  final String? signInToken;
  @override
  final bool? isPayed;
  @override
  final String? googleAuthenticatorKey;
  @override
  final String? apiKey;
  @override
  final DateTime? apiKeyLastGenerationDate;
  @override
  final String? userToken;
  @override
  final bool? allowSetPassword;
  @override
  final DateTime? passwordExpirationDate;
  @override
  final DateTime? passwordLastChangeDate;
  @override
  final String? title;
  @override
  final bool? isSystemUser;
  @override
  final BuiltList<UserOrganizationUnit>? organizationUnits;
  @override
  final String normalizedUserName;
  @override
  final String normalizedEmailAddress;
  @override
  final String? concurrencyStamp;
  @override
  final BuiltList<UserToken>? tokens;
  @override
  final User? deleterUser;
  @override
  final User? creatorUser;
  @override
  final User? lastModifierUser;
  @override
  final String? authenticationSource;
  @override
  final String userName;
  @override
  final int? tenantId;
  @override
  final String emailAddress;
  @override
  final String name;
  @override
  final String surname;
  @override
  final String? fullName;
  @override
  final String password;
  @override
  final String? emailConfirmationCode;
  @override
  final String? passwordResetCode;
  @override
  final DateTime? lockoutEndDateUtc;
  @override
  final int? accessFailedCount;
  @override
  final bool? isLockoutEnabled;
  @override
  final String? phoneNumber;
  @override
  final bool? isPhoneNumberConfirmed;
  @override
  final String? securityStamp;
  @override
  final bool? isTwoFactorEnabled;
  @override
  final BuiltList<UserLogin>? logins;
  @override
  final BuiltList<UserRole>? roles;
  @override
  final BuiltList<UserClaim>? claims;
  @override
  final BuiltList<UserPermissionSetting>? permissions;
  @override
  final BuiltList<Setting>? settings;
  @override
  final bool? isEmailConfirmed;
  @override
  final bool? isActive;
  @override
  final bool? isDeleted;
  @override
  final int? deleterUserId;
  @override
  final DateTime? deletionTime;
  @override
  final DateTime? lastModificationTime;
  @override
  final int? lastModifierUserId;
  @override
  final DateTime? creationTime;
  @override
  final int? creatorUserId;
  @override
  final int? id;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (UserBuilder()..update(updates))._build();

  _$User._(
      {this.userType,
      this.profilePictureId,
      this.shouldChangePasswordOnNextLogin,
      this.signInTokenExpireTimeUtc,
      this.signInToken,
      this.isPayed,
      this.googleAuthenticatorKey,
      this.apiKey,
      this.apiKeyLastGenerationDate,
      this.userToken,
      this.allowSetPassword,
      this.passwordExpirationDate,
      this.passwordLastChangeDate,
      this.title,
      this.isSystemUser,
      this.organizationUnits,
      required this.normalizedUserName,
      required this.normalizedEmailAddress,
      this.concurrencyStamp,
      this.tokens,
      this.deleterUser,
      this.creatorUser,
      this.lastModifierUser,
      this.authenticationSource,
      required this.userName,
      this.tenantId,
      required this.emailAddress,
      required this.name,
      required this.surname,
      this.fullName,
      required this.password,
      this.emailConfirmationCode,
      this.passwordResetCode,
      this.lockoutEndDateUtc,
      this.accessFailedCount,
      this.isLockoutEnabled,
      this.phoneNumber,
      this.isPhoneNumberConfirmed,
      this.securityStamp,
      this.isTwoFactorEnabled,
      this.logins,
      this.roles,
      this.claims,
      this.permissions,
      this.settings,
      this.isEmailConfirmed,
      this.isActive,
      this.isDeleted,
      this.deleterUserId,
      this.deletionTime,
      this.lastModificationTime,
      this.lastModifierUserId,
      this.creationTime,
      this.creatorUserId,
      this.id})
      : super._();
  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        userType == other.userType &&
        profilePictureId == other.profilePictureId &&
        shouldChangePasswordOnNextLogin ==
            other.shouldChangePasswordOnNextLogin &&
        signInTokenExpireTimeUtc == other.signInTokenExpireTimeUtc &&
        signInToken == other.signInToken &&
        isPayed == other.isPayed &&
        googleAuthenticatorKey == other.googleAuthenticatorKey &&
        apiKey == other.apiKey &&
        apiKeyLastGenerationDate == other.apiKeyLastGenerationDate &&
        userToken == other.userToken &&
        allowSetPassword == other.allowSetPassword &&
        passwordExpirationDate == other.passwordExpirationDate &&
        passwordLastChangeDate == other.passwordLastChangeDate &&
        title == other.title &&
        isSystemUser == other.isSystemUser &&
        organizationUnits == other.organizationUnits &&
        normalizedUserName == other.normalizedUserName &&
        normalizedEmailAddress == other.normalizedEmailAddress &&
        concurrencyStamp == other.concurrencyStamp &&
        tokens == other.tokens &&
        deleterUser == other.deleterUser &&
        creatorUser == other.creatorUser &&
        lastModifierUser == other.lastModifierUser &&
        authenticationSource == other.authenticationSource &&
        userName == other.userName &&
        tenantId == other.tenantId &&
        emailAddress == other.emailAddress &&
        name == other.name &&
        surname == other.surname &&
        fullName == other.fullName &&
        password == other.password &&
        emailConfirmationCode == other.emailConfirmationCode &&
        passwordResetCode == other.passwordResetCode &&
        lockoutEndDateUtc == other.lockoutEndDateUtc &&
        accessFailedCount == other.accessFailedCount &&
        isLockoutEnabled == other.isLockoutEnabled &&
        phoneNumber == other.phoneNumber &&
        isPhoneNumberConfirmed == other.isPhoneNumberConfirmed &&
        securityStamp == other.securityStamp &&
        isTwoFactorEnabled == other.isTwoFactorEnabled &&
        logins == other.logins &&
        roles == other.roles &&
        claims == other.claims &&
        permissions == other.permissions &&
        settings == other.settings &&
        isEmailConfirmed == other.isEmailConfirmed &&
        isActive == other.isActive &&
        isDeleted == other.isDeleted &&
        deleterUserId == other.deleterUserId &&
        deletionTime == other.deletionTime &&
        lastModificationTime == other.lastModificationTime &&
        lastModifierUserId == other.lastModifierUserId &&
        creationTime == other.creationTime &&
        creatorUserId == other.creatorUserId &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userType.hashCode);
    _$hash = $jc(_$hash, profilePictureId.hashCode);
    _$hash = $jc(_$hash, shouldChangePasswordOnNextLogin.hashCode);
    _$hash = $jc(_$hash, signInTokenExpireTimeUtc.hashCode);
    _$hash = $jc(_$hash, signInToken.hashCode);
    _$hash = $jc(_$hash, isPayed.hashCode);
    _$hash = $jc(_$hash, googleAuthenticatorKey.hashCode);
    _$hash = $jc(_$hash, apiKey.hashCode);
    _$hash = $jc(_$hash, apiKeyLastGenerationDate.hashCode);
    _$hash = $jc(_$hash, userToken.hashCode);
    _$hash = $jc(_$hash, allowSetPassword.hashCode);
    _$hash = $jc(_$hash, passwordExpirationDate.hashCode);
    _$hash = $jc(_$hash, passwordLastChangeDate.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, isSystemUser.hashCode);
    _$hash = $jc(_$hash, organizationUnits.hashCode);
    _$hash = $jc(_$hash, normalizedUserName.hashCode);
    _$hash = $jc(_$hash, normalizedEmailAddress.hashCode);
    _$hash = $jc(_$hash, concurrencyStamp.hashCode);
    _$hash = $jc(_$hash, tokens.hashCode);
    _$hash = $jc(_$hash, deleterUser.hashCode);
    _$hash = $jc(_$hash, creatorUser.hashCode);
    _$hash = $jc(_$hash, lastModifierUser.hashCode);
    _$hash = $jc(_$hash, authenticationSource.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, emailAddress.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, surname.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, emailConfirmationCode.hashCode);
    _$hash = $jc(_$hash, passwordResetCode.hashCode);
    _$hash = $jc(_$hash, lockoutEndDateUtc.hashCode);
    _$hash = $jc(_$hash, accessFailedCount.hashCode);
    _$hash = $jc(_$hash, isLockoutEnabled.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, isPhoneNumberConfirmed.hashCode);
    _$hash = $jc(_$hash, securityStamp.hashCode);
    _$hash = $jc(_$hash, isTwoFactorEnabled.hashCode);
    _$hash = $jc(_$hash, logins.hashCode);
    _$hash = $jc(_$hash, roles.hashCode);
    _$hash = $jc(_$hash, claims.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, settings.hashCode);
    _$hash = $jc(_$hash, isEmailConfirmed.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, isDeleted.hashCode);
    _$hash = $jc(_$hash, deleterUserId.hashCode);
    _$hash = $jc(_$hash, deletionTime.hashCode);
    _$hash = $jc(_$hash, lastModificationTime.hashCode);
    _$hash = $jc(_$hash, lastModifierUserId.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, creatorUserId.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'User')
          ..add('userType', userType)
          ..add('profilePictureId', profilePictureId)
          ..add('shouldChangePasswordOnNextLogin',
              shouldChangePasswordOnNextLogin)
          ..add('signInTokenExpireTimeUtc', signInTokenExpireTimeUtc)
          ..add('signInToken', signInToken)
          ..add('isPayed', isPayed)
          ..add('googleAuthenticatorKey', googleAuthenticatorKey)
          ..add('apiKey', apiKey)
          ..add('apiKeyLastGenerationDate', apiKeyLastGenerationDate)
          ..add('userToken', userToken)
          ..add('allowSetPassword', allowSetPassword)
          ..add('passwordExpirationDate', passwordExpirationDate)
          ..add('passwordLastChangeDate', passwordLastChangeDate)
          ..add('title', title)
          ..add('isSystemUser', isSystemUser)
          ..add('organizationUnits', organizationUnits)
          ..add('normalizedUserName', normalizedUserName)
          ..add('normalizedEmailAddress', normalizedEmailAddress)
          ..add('concurrencyStamp', concurrencyStamp)
          ..add('tokens', tokens)
          ..add('deleterUser', deleterUser)
          ..add('creatorUser', creatorUser)
          ..add('lastModifierUser', lastModifierUser)
          ..add('authenticationSource', authenticationSource)
          ..add('userName', userName)
          ..add('tenantId', tenantId)
          ..add('emailAddress', emailAddress)
          ..add('name', name)
          ..add('surname', surname)
          ..add('fullName', fullName)
          ..add('password', password)
          ..add('emailConfirmationCode', emailConfirmationCode)
          ..add('passwordResetCode', passwordResetCode)
          ..add('lockoutEndDateUtc', lockoutEndDateUtc)
          ..add('accessFailedCount', accessFailedCount)
          ..add('isLockoutEnabled', isLockoutEnabled)
          ..add('phoneNumber', phoneNumber)
          ..add('isPhoneNumberConfirmed', isPhoneNumberConfirmed)
          ..add('securityStamp', securityStamp)
          ..add('isTwoFactorEnabled', isTwoFactorEnabled)
          ..add('logins', logins)
          ..add('roles', roles)
          ..add('claims', claims)
          ..add('permissions', permissions)
          ..add('settings', settings)
          ..add('isEmailConfirmed', isEmailConfirmed)
          ..add('isActive', isActive)
          ..add('isDeleted', isDeleted)
          ..add('deleterUserId', deleterUserId)
          ..add('deletionTime', deletionTime)
          ..add('lastModificationTime', lastModificationTime)
          ..add('lastModifierUserId', lastModifierUserId)
          ..add('creationTime', creationTime)
          ..add('creatorUserId', creatorUserId)
          ..add('id', id))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  UserType? _userType;
  UserType? get userType => _$this._userType;
  set userType(UserType? userType) => _$this._userType = userType;

  String? _profilePictureId;
  String? get profilePictureId => _$this._profilePictureId;
  set profilePictureId(String? profilePictureId) =>
      _$this._profilePictureId = profilePictureId;

  bool? _shouldChangePasswordOnNextLogin;
  bool? get shouldChangePasswordOnNextLogin =>
      _$this._shouldChangePasswordOnNextLogin;
  set shouldChangePasswordOnNextLogin(bool? shouldChangePasswordOnNextLogin) =>
      _$this._shouldChangePasswordOnNextLogin = shouldChangePasswordOnNextLogin;

  DateTime? _signInTokenExpireTimeUtc;
  DateTime? get signInTokenExpireTimeUtc => _$this._signInTokenExpireTimeUtc;
  set signInTokenExpireTimeUtc(DateTime? signInTokenExpireTimeUtc) =>
      _$this._signInTokenExpireTimeUtc = signInTokenExpireTimeUtc;

  String? _signInToken;
  String? get signInToken => _$this._signInToken;
  set signInToken(String? signInToken) => _$this._signInToken = signInToken;

  bool? _isPayed;
  bool? get isPayed => _$this._isPayed;
  set isPayed(bool? isPayed) => _$this._isPayed = isPayed;

  String? _googleAuthenticatorKey;
  String? get googleAuthenticatorKey => _$this._googleAuthenticatorKey;
  set googleAuthenticatorKey(String? googleAuthenticatorKey) =>
      _$this._googleAuthenticatorKey = googleAuthenticatorKey;

  String? _apiKey;
  String? get apiKey => _$this._apiKey;
  set apiKey(String? apiKey) => _$this._apiKey = apiKey;

  DateTime? _apiKeyLastGenerationDate;
  DateTime? get apiKeyLastGenerationDate => _$this._apiKeyLastGenerationDate;
  set apiKeyLastGenerationDate(DateTime? apiKeyLastGenerationDate) =>
      _$this._apiKeyLastGenerationDate = apiKeyLastGenerationDate;

  String? _userToken;
  String? get userToken => _$this._userToken;
  set userToken(String? userToken) => _$this._userToken = userToken;

  bool? _allowSetPassword;
  bool? get allowSetPassword => _$this._allowSetPassword;
  set allowSetPassword(bool? allowSetPassword) =>
      _$this._allowSetPassword = allowSetPassword;

  DateTime? _passwordExpirationDate;
  DateTime? get passwordExpirationDate => _$this._passwordExpirationDate;
  set passwordExpirationDate(DateTime? passwordExpirationDate) =>
      _$this._passwordExpirationDate = passwordExpirationDate;

  DateTime? _passwordLastChangeDate;
  DateTime? get passwordLastChangeDate => _$this._passwordLastChangeDate;
  set passwordLastChangeDate(DateTime? passwordLastChangeDate) =>
      _$this._passwordLastChangeDate = passwordLastChangeDate;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _isSystemUser;
  bool? get isSystemUser => _$this._isSystemUser;
  set isSystemUser(bool? isSystemUser) => _$this._isSystemUser = isSystemUser;

  ListBuilder<UserOrganizationUnit>? _organizationUnits;
  ListBuilder<UserOrganizationUnit> get organizationUnits =>
      _$this._organizationUnits ??= ListBuilder<UserOrganizationUnit>();
  set organizationUnits(ListBuilder<UserOrganizationUnit>? organizationUnits) =>
      _$this._organizationUnits = organizationUnits;

  String? _normalizedUserName;
  String? get normalizedUserName => _$this._normalizedUserName;
  set normalizedUserName(String? normalizedUserName) =>
      _$this._normalizedUserName = normalizedUserName;

  String? _normalizedEmailAddress;
  String? get normalizedEmailAddress => _$this._normalizedEmailAddress;
  set normalizedEmailAddress(String? normalizedEmailAddress) =>
      _$this._normalizedEmailAddress = normalizedEmailAddress;

  String? _concurrencyStamp;
  String? get concurrencyStamp => _$this._concurrencyStamp;
  set concurrencyStamp(String? concurrencyStamp) =>
      _$this._concurrencyStamp = concurrencyStamp;

  ListBuilder<UserToken>? _tokens;
  ListBuilder<UserToken> get tokens =>
      _$this._tokens ??= ListBuilder<UserToken>();
  set tokens(ListBuilder<UserToken>? tokens) => _$this._tokens = tokens;

  UserBuilder? _deleterUser;
  UserBuilder get deleterUser => _$this._deleterUser ??= UserBuilder();
  set deleterUser(UserBuilder? deleterUser) =>
      _$this._deleterUser = deleterUser;

  UserBuilder? _creatorUser;
  UserBuilder get creatorUser => _$this._creatorUser ??= UserBuilder();
  set creatorUser(UserBuilder? creatorUser) =>
      _$this._creatorUser = creatorUser;

  UserBuilder? _lastModifierUser;
  UserBuilder get lastModifierUser =>
      _$this._lastModifierUser ??= UserBuilder();
  set lastModifierUser(UserBuilder? lastModifierUser) =>
      _$this._lastModifierUser = lastModifierUser;

  String? _authenticationSource;
  String? get authenticationSource => _$this._authenticationSource;
  set authenticationSource(String? authenticationSource) =>
      _$this._authenticationSource = authenticationSource;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  int? _tenantId;
  int? get tenantId => _$this._tenantId;
  set tenantId(int? tenantId) => _$this._tenantId = tenantId;

  String? _emailAddress;
  String? get emailAddress => _$this._emailAddress;
  set emailAddress(String? emailAddress) => _$this._emailAddress = emailAddress;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _surname;
  String? get surname => _$this._surname;
  set surname(String? surname) => _$this._surname = surname;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _emailConfirmationCode;
  String? get emailConfirmationCode => _$this._emailConfirmationCode;
  set emailConfirmationCode(String? emailConfirmationCode) =>
      _$this._emailConfirmationCode = emailConfirmationCode;

  String? _passwordResetCode;
  String? get passwordResetCode => _$this._passwordResetCode;
  set passwordResetCode(String? passwordResetCode) =>
      _$this._passwordResetCode = passwordResetCode;

  DateTime? _lockoutEndDateUtc;
  DateTime? get lockoutEndDateUtc => _$this._lockoutEndDateUtc;
  set lockoutEndDateUtc(DateTime? lockoutEndDateUtc) =>
      _$this._lockoutEndDateUtc = lockoutEndDateUtc;

  int? _accessFailedCount;
  int? get accessFailedCount => _$this._accessFailedCount;
  set accessFailedCount(int? accessFailedCount) =>
      _$this._accessFailedCount = accessFailedCount;

  bool? _isLockoutEnabled;
  bool? get isLockoutEnabled => _$this._isLockoutEnabled;
  set isLockoutEnabled(bool? isLockoutEnabled) =>
      _$this._isLockoutEnabled = isLockoutEnabled;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  bool? _isPhoneNumberConfirmed;
  bool? get isPhoneNumberConfirmed => _$this._isPhoneNumberConfirmed;
  set isPhoneNumberConfirmed(bool? isPhoneNumberConfirmed) =>
      _$this._isPhoneNumberConfirmed = isPhoneNumberConfirmed;

  String? _securityStamp;
  String? get securityStamp => _$this._securityStamp;
  set securityStamp(String? securityStamp) =>
      _$this._securityStamp = securityStamp;

  bool? _isTwoFactorEnabled;
  bool? get isTwoFactorEnabled => _$this._isTwoFactorEnabled;
  set isTwoFactorEnabled(bool? isTwoFactorEnabled) =>
      _$this._isTwoFactorEnabled = isTwoFactorEnabled;

  ListBuilder<UserLogin>? _logins;
  ListBuilder<UserLogin> get logins =>
      _$this._logins ??= ListBuilder<UserLogin>();
  set logins(ListBuilder<UserLogin>? logins) => _$this._logins = logins;

  ListBuilder<UserRole>? _roles;
  ListBuilder<UserRole> get roles => _$this._roles ??= ListBuilder<UserRole>();
  set roles(ListBuilder<UserRole>? roles) => _$this._roles = roles;

  ListBuilder<UserClaim>? _claims;
  ListBuilder<UserClaim> get claims =>
      _$this._claims ??= ListBuilder<UserClaim>();
  set claims(ListBuilder<UserClaim>? claims) => _$this._claims = claims;

  ListBuilder<UserPermissionSetting>? _permissions;
  ListBuilder<UserPermissionSetting> get permissions =>
      _$this._permissions ??= ListBuilder<UserPermissionSetting>();
  set permissions(ListBuilder<UserPermissionSetting>? permissions) =>
      _$this._permissions = permissions;

  ListBuilder<Setting>? _settings;
  ListBuilder<Setting> get settings =>
      _$this._settings ??= ListBuilder<Setting>();
  set settings(ListBuilder<Setting>? settings) => _$this._settings = settings;

  bool? _isEmailConfirmed;
  bool? get isEmailConfirmed => _$this._isEmailConfirmed;
  set isEmailConfirmed(bool? isEmailConfirmed) =>
      _$this._isEmailConfirmed = isEmailConfirmed;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  bool? _isDeleted;
  bool? get isDeleted => _$this._isDeleted;
  set isDeleted(bool? isDeleted) => _$this._isDeleted = isDeleted;

  int? _deleterUserId;
  int? get deleterUserId => _$this._deleterUserId;
  set deleterUserId(int? deleterUserId) =>
      _$this._deleterUserId = deleterUserId;

  DateTime? _deletionTime;
  DateTime? get deletionTime => _$this._deletionTime;
  set deletionTime(DateTime? deletionTime) =>
      _$this._deletionTime = deletionTime;

  DateTime? _lastModificationTime;
  DateTime? get lastModificationTime => _$this._lastModificationTime;
  set lastModificationTime(DateTime? lastModificationTime) =>
      _$this._lastModificationTime = lastModificationTime;

  int? _lastModifierUserId;
  int? get lastModifierUserId => _$this._lastModifierUserId;
  set lastModifierUserId(int? lastModifierUserId) =>
      _$this._lastModifierUserId = lastModifierUserId;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  int? _creatorUserId;
  int? get creatorUserId => _$this._creatorUserId;
  set creatorUserId(int? creatorUserId) =>
      _$this._creatorUserId = creatorUserId;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  UserBuilder() {
    User._defaults(this);
  }

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userType = $v.userType;
      _profilePictureId = $v.profilePictureId;
      _shouldChangePasswordOnNextLogin = $v.shouldChangePasswordOnNextLogin;
      _signInTokenExpireTimeUtc = $v.signInTokenExpireTimeUtc;
      _signInToken = $v.signInToken;
      _isPayed = $v.isPayed;
      _googleAuthenticatorKey = $v.googleAuthenticatorKey;
      _apiKey = $v.apiKey;
      _apiKeyLastGenerationDate = $v.apiKeyLastGenerationDate;
      _userToken = $v.userToken;
      _allowSetPassword = $v.allowSetPassword;
      _passwordExpirationDate = $v.passwordExpirationDate;
      _passwordLastChangeDate = $v.passwordLastChangeDate;
      _title = $v.title;
      _isSystemUser = $v.isSystemUser;
      _organizationUnits = $v.organizationUnits?.toBuilder();
      _normalizedUserName = $v.normalizedUserName;
      _normalizedEmailAddress = $v.normalizedEmailAddress;
      _concurrencyStamp = $v.concurrencyStamp;
      _tokens = $v.tokens?.toBuilder();
      _deleterUser = $v.deleterUser?.toBuilder();
      _creatorUser = $v.creatorUser?.toBuilder();
      _lastModifierUser = $v.lastModifierUser?.toBuilder();
      _authenticationSource = $v.authenticationSource;
      _userName = $v.userName;
      _tenantId = $v.tenantId;
      _emailAddress = $v.emailAddress;
      _name = $v.name;
      _surname = $v.surname;
      _fullName = $v.fullName;
      _password = $v.password;
      _emailConfirmationCode = $v.emailConfirmationCode;
      _passwordResetCode = $v.passwordResetCode;
      _lockoutEndDateUtc = $v.lockoutEndDateUtc;
      _accessFailedCount = $v.accessFailedCount;
      _isLockoutEnabled = $v.isLockoutEnabled;
      _phoneNumber = $v.phoneNumber;
      _isPhoneNumberConfirmed = $v.isPhoneNumberConfirmed;
      _securityStamp = $v.securityStamp;
      _isTwoFactorEnabled = $v.isTwoFactorEnabled;
      _logins = $v.logins?.toBuilder();
      _roles = $v.roles?.toBuilder();
      _claims = $v.claims?.toBuilder();
      _permissions = $v.permissions?.toBuilder();
      _settings = $v.settings?.toBuilder();
      _isEmailConfirmed = $v.isEmailConfirmed;
      _isActive = $v.isActive;
      _isDeleted = $v.isDeleted;
      _deleterUserId = $v.deleterUserId;
      _deletionTime = $v.deletionTime;
      _lastModificationTime = $v.lastModificationTime;
      _lastModifierUserId = $v.lastModifierUserId;
      _creationTime = $v.creationTime;
      _creatorUserId = $v.creatorUserId;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  User build() => _build();

  _$User _build() {
    _$User _$result;
    try {
      _$result = _$v ??
          _$User._(
            userType: userType,
            profilePictureId: profilePictureId,
            shouldChangePasswordOnNextLogin: shouldChangePasswordOnNextLogin,
            signInTokenExpireTimeUtc: signInTokenExpireTimeUtc,
            signInToken: signInToken,
            isPayed: isPayed,
            googleAuthenticatorKey: googleAuthenticatorKey,
            apiKey: apiKey,
            apiKeyLastGenerationDate: apiKeyLastGenerationDate,
            userToken: userToken,
            allowSetPassword: allowSetPassword,
            passwordExpirationDate: passwordExpirationDate,
            passwordLastChangeDate: passwordLastChangeDate,
            title: title,
            isSystemUser: isSystemUser,
            organizationUnits: _organizationUnits?.build(),
            normalizedUserName: BuiltValueNullFieldError.checkNotNull(
                normalizedUserName, r'User', 'normalizedUserName'),
            normalizedEmailAddress: BuiltValueNullFieldError.checkNotNull(
                normalizedEmailAddress, r'User', 'normalizedEmailAddress'),
            concurrencyStamp: concurrencyStamp,
            tokens: _tokens?.build(),
            deleterUser: _deleterUser?.build(),
            creatorUser: _creatorUser?.build(),
            lastModifierUser: _lastModifierUser?.build(),
            authenticationSource: authenticationSource,
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'User', 'userName'),
            tenantId: tenantId,
            emailAddress: BuiltValueNullFieldError.checkNotNull(
                emailAddress, r'User', 'emailAddress'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'User', 'name'),
            surname: BuiltValueNullFieldError.checkNotNull(
                surname, r'User', 'surname'),
            fullName: fullName,
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'User', 'password'),
            emailConfirmationCode: emailConfirmationCode,
            passwordResetCode: passwordResetCode,
            lockoutEndDateUtc: lockoutEndDateUtc,
            accessFailedCount: accessFailedCount,
            isLockoutEnabled: isLockoutEnabled,
            phoneNumber: phoneNumber,
            isPhoneNumberConfirmed: isPhoneNumberConfirmed,
            securityStamp: securityStamp,
            isTwoFactorEnabled: isTwoFactorEnabled,
            logins: _logins?.build(),
            roles: _roles?.build(),
            claims: _claims?.build(),
            permissions: _permissions?.build(),
            settings: _settings?.build(),
            isEmailConfirmed: isEmailConfirmed,
            isActive: isActive,
            isDeleted: isDeleted,
            deleterUserId: deleterUserId,
            deletionTime: deletionTime,
            lastModificationTime: lastModificationTime,
            lastModifierUserId: lastModifierUserId,
            creationTime: creationTime,
            creatorUserId: creatorUserId,
            id: id,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'organizationUnits';
        _organizationUnits?.build();

        _$failedField = 'tokens';
        _tokens?.build();
        _$failedField = 'deleterUser';
        _deleterUser?.build();
        _$failedField = 'creatorUser';
        _creatorUser?.build();
        _$failedField = 'lastModifierUser';
        _lastModifierUser?.build();

        _$failedField = 'logins';
        _logins?.build();
        _$failedField = 'roles';
        _roles?.build();
        _$failedField = 'claims';
        _claims?.build();
        _$failedField = 'permissions';
        _permissions?.build();
        _$failedField = 'settings';
        _settings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
