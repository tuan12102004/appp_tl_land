// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent()';
  }
}

/// @nodoc
class $AuthEventCopyWith<$Res> {
  $AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}

/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_Signup value)? signup,
    TResult Function(_UpdatePass value)? updatePass,
    TResult Function(_Logout value)? logout,
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerificationOtp value)? verificationOtp,
    TResult Function(_TokenExpired value)? tokenExpired,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Login() when login != null:
        return login(_that);
      case _Signup() when signup != null:
        return signup(_that);
      case _UpdatePass() when updatePass != null:
        return updatePass(_that);
      case _Logout() when logout != null:
        return logout(_that);
      case _CheckAuth() when checkAuth != null:
        return checkAuth(_that);
      case _ResetState() when resetState != null:
        return resetState(_that);
      case _ResendOtp() when resendOtp != null:
        return resendOtp(_that);
      case _VerificationOtp() when verificationOtp != null:
        return verificationOtp(_that);
      case _TokenExpired() when tokenExpired != null:
        return tokenExpired(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_Signup value) signup,
    required TResult Function(_UpdatePass value) updatePass,
    required TResult Function(_Logout value) logout,
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerificationOtp value) verificationOtp,
    required TResult Function(_TokenExpired value) tokenExpired,
  }) {
    final _that = this;
    switch (_that) {
      case _Login():
        return login(_that);
      case _Signup():
        return signup(_that);
      case _UpdatePass():
        return updatePass(_that);
      case _Logout():
        return logout(_that);
      case _CheckAuth():
        return checkAuth(_that);
      case _ResetState():
        return resetState(_that);
      case _ResendOtp():
        return resendOtp(_that);
      case _VerificationOtp():
        return verificationOtp(_that);
      case _TokenExpired():
        return tokenExpired(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_UpdatePass value)? updatePass,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerificationOtp value)? verificationOtp,
    TResult? Function(_TokenExpired value)? tokenExpired,
  }) {
    final _that = this;
    switch (_that) {
      case _Login() when login != null:
        return login(_that);
      case _Signup() when signup != null:
        return signup(_that);
      case _UpdatePass() when updatePass != null:
        return updatePass(_that);
      case _Logout() when logout != null:
        return logout(_that);
      case _CheckAuth() when checkAuth != null:
        return checkAuth(_that);
      case _ResetState() when resetState != null:
        return resetState(_that);
      case _ResendOtp() when resendOtp != null:
        return resendOtp(_that);
      case _VerificationOtp() when verificationOtp != null:
        return verificationOtp(_that);
      case _TokenExpired() when tokenExpired != null:
        return tokenExpired(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String pass)? login,
    TResult Function(String fullname, String email, String phone, String pass,
            String confirmPass, DateTime birthday)?
        signup,
    TResult Function(String email, String pass, String confirmPass)? updatePass,
    TResult Function()? logout,
    TResult Function()? checkAuth,
    TResult Function()? resetState,
    TResult Function(String email)? resendOtp,
    TResult Function(String email, int otp)? verificationOtp,
    TResult Function()? tokenExpired,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Login() when login != null:
        return login(_that.email, _that.pass);
      case _Signup() when signup != null:
        return signup(_that.fullname, _that.email, _that.phone, _that.pass,
            _that.confirmPass, _that.birthday);
      case _UpdatePass() when updatePass != null:
        return updatePass(_that.email, _that.pass, _that.confirmPass);
      case _Logout() when logout != null:
        return logout();
      case _CheckAuth() when checkAuth != null:
        return checkAuth();
      case _ResetState() when resetState != null:
        return resetState();
      case _ResendOtp() when resendOtp != null:
        return resendOtp(_that.email);
      case _VerificationOtp() when verificationOtp != null:
        return verificationOtp(_that.email, _that.otp);
      case _TokenExpired() when tokenExpired != null:
        return tokenExpired();
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String pass) login,
    required TResult Function(String fullname, String email, String phone,
            String pass, String confirmPass, DateTime birthday)
        signup,
    required TResult Function(String email, String pass, String confirmPass)
        updatePass,
    required TResult Function() logout,
    required TResult Function() checkAuth,
    required TResult Function() resetState,
    required TResult Function(String email) resendOtp,
    required TResult Function(String email, int otp) verificationOtp,
    required TResult Function() tokenExpired,
  }) {
    final _that = this;
    switch (_that) {
      case _Login():
        return login(_that.email, _that.pass);
      case _Signup():
        return signup(_that.fullname, _that.email, _that.phone, _that.pass,
            _that.confirmPass, _that.birthday);
      case _UpdatePass():
        return updatePass(_that.email, _that.pass, _that.confirmPass);
      case _Logout():
        return logout();
      case _CheckAuth():
        return checkAuth();
      case _ResetState():
        return resetState();
      case _ResendOtp():
        return resendOtp(_that.email);
      case _VerificationOtp():
        return verificationOtp(_that.email, _that.otp);
      case _TokenExpired():
        return tokenExpired();
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String pass)? login,
    TResult? Function(String fullname, String email, String phone, String pass,
            String confirmPass, DateTime birthday)?
        signup,
    TResult? Function(String email, String pass, String confirmPass)?
        updatePass,
    TResult? Function()? logout,
    TResult? Function()? checkAuth,
    TResult? Function()? resetState,
    TResult? Function(String email)? resendOtp,
    TResult? Function(String email, int otp)? verificationOtp,
    TResult? Function()? tokenExpired,
  }) {
    final _that = this;
    switch (_that) {
      case _Login() when login != null:
        return login(_that.email, _that.pass);
      case _Signup() when signup != null:
        return signup(_that.fullname, _that.email, _that.phone, _that.pass,
            _that.confirmPass, _that.birthday);
      case _UpdatePass() when updatePass != null:
        return updatePass(_that.email, _that.pass, _that.confirmPass);
      case _Logout() when logout != null:
        return logout();
      case _CheckAuth() when checkAuth != null:
        return checkAuth();
      case _ResetState() when resetState != null:
        return resetState();
      case _ResendOtp() when resendOtp != null:
        return resendOtp(_that.email);
      case _VerificationOtp() when verificationOtp != null:
        return verificationOtp(_that.email, _that.otp);
      case _TokenExpired() when tokenExpired != null:
        return tokenExpired();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Login implements AuthEvent {
  const _Login({required this.email, required this.pass});

  final String email;
  final String pass;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginCopyWith<_Login> get copyWith =>
      __$LoginCopyWithImpl<_Login>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Login &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.pass, pass) || other.pass == pass));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, pass);

  @override
  String toString() {
    return 'AuthEvent.login(email: $email, pass: $pass)';
  }
}

/// @nodoc
abstract mixin class _$LoginCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$LoginCopyWith(_Login value, $Res Function(_Login) _then) =
      __$LoginCopyWithImpl;
  @useResult
  $Res call({String email, String pass});
}

/// @nodoc
class __$LoginCopyWithImpl<$Res> implements _$LoginCopyWith<$Res> {
  __$LoginCopyWithImpl(this._self, this._then);

  final _Login _self;
  final $Res Function(_Login) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? pass = null,
  }) {
    return _then(_Login(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      pass: null == pass
          ? _self.pass
          : pass // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Signup implements AuthEvent {
  const _Signup(
      {required this.fullname,
      required this.email,
      required this.phone,
      required this.pass,
      required this.confirmPass,
      required this.birthday});

  final String fullname;
  final String email;
  final String phone;
  final String pass;
  final String confirmPass;
  final DateTime birthday;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignupCopyWith<_Signup> get copyWith =>
      __$SignupCopyWithImpl<_Signup>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Signup &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.pass, pass) || other.pass == pass) &&
            (identical(other.confirmPass, confirmPass) ||
                other.confirmPass == confirmPass) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, fullname, email, phone, pass, confirmPass, birthday);

  @override
  String toString() {
    return 'AuthEvent.signup(fullname: $fullname, email: $email, phone: $phone, pass: $pass, confirmPass: $confirmPass, birthday: $birthday)';
  }
}

/// @nodoc
abstract mixin class _$SignupCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$SignupCopyWith(_Signup value, $Res Function(_Signup) _then) =
      __$SignupCopyWithImpl;
  @useResult
  $Res call(
      {String fullname,
      String email,
      String phone,
      String pass,
      String confirmPass,
      DateTime birthday});
}

/// @nodoc
class __$SignupCopyWithImpl<$Res> implements _$SignupCopyWith<$Res> {
  __$SignupCopyWithImpl(this._self, this._then);

  final _Signup _self;
  final $Res Function(_Signup) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fullname = null,
    Object? email = null,
    Object? phone = null,
    Object? pass = null,
    Object? confirmPass = null,
    Object? birthday = null,
  }) {
    return _then(_Signup(
      fullname: null == fullname
          ? _self.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      pass: null == pass
          ? _self.pass
          : pass // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPass: null == confirmPass
          ? _self.confirmPass
          : confirmPass // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _self.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _UpdatePass implements AuthEvent {
  const _UpdatePass(
      {required this.email, required this.pass, required this.confirmPass});

  final String email;
  final String pass;
  final String confirmPass;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdatePassCopyWith<_UpdatePass> get copyWith =>
      __$UpdatePassCopyWithImpl<_UpdatePass>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdatePass &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.pass, pass) || other.pass == pass) &&
            (identical(other.confirmPass, confirmPass) ||
                other.confirmPass == confirmPass));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, pass, confirmPass);

  @override
  String toString() {
    return 'AuthEvent.updatePass(email: $email, pass: $pass, confirmPass: $confirmPass)';
  }
}

/// @nodoc
abstract mixin class _$UpdatePassCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$UpdatePassCopyWith(
          _UpdatePass value, $Res Function(_UpdatePass) _then) =
      __$UpdatePassCopyWithImpl;
  @useResult
  $Res call({String email, String pass, String confirmPass});
}

/// @nodoc
class __$UpdatePassCopyWithImpl<$Res> implements _$UpdatePassCopyWith<$Res> {
  __$UpdatePassCopyWithImpl(this._self, this._then);

  final _UpdatePass _self;
  final $Res Function(_UpdatePass) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? pass = null,
    Object? confirmPass = null,
  }) {
    return _then(_UpdatePass(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      pass: null == pass
          ? _self.pass
          : pass // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPass: null == confirmPass
          ? _self.confirmPass
          : confirmPass // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _Logout implements AuthEvent {
  const _Logout();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }
}

/// @nodoc

class _CheckAuth implements AuthEvent {
  const _CheckAuth();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CheckAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.checkAuth()';
  }
}

/// @nodoc

class _ResetState implements AuthEvent {
  const _ResetState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ResetState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.resetState()';
  }
}

/// @nodoc

class _ResendOtp implements AuthEvent {
  const _ResendOtp({required this.email});

  final String email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResendOtpCopyWith<_ResendOtp> get copyWith =>
      __$ResendOtpCopyWithImpl<_ResendOtp>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResendOtp &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'AuthEvent.resendOtp(email: $email)';
  }
}

/// @nodoc
abstract mixin class _$ResendOtpCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$ResendOtpCopyWith(
          _ResendOtp value, $Res Function(_ResendOtp) _then) =
      __$ResendOtpCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$ResendOtpCopyWithImpl<$Res> implements _$ResendOtpCopyWith<$Res> {
  __$ResendOtpCopyWithImpl(this._self, this._then);

  final _ResendOtp _self;
  final $Res Function(_ResendOtp) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(_ResendOtp(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _VerificationOtp implements AuthEvent {
  const _VerificationOtp({required this.email, required this.otp});

  final String email;
  final int otp;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerificationOtpCopyWith<_VerificationOtp> get copyWith =>
      __$VerificationOtpCopyWithImpl<_VerificationOtp>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerificationOtp &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, otp);

  @override
  String toString() {
    return 'AuthEvent.verificationOtp(email: $email, otp: $otp)';
  }
}

/// @nodoc
abstract mixin class _$VerificationOtpCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$VerificationOtpCopyWith(
          _VerificationOtp value, $Res Function(_VerificationOtp) _then) =
      __$VerificationOtpCopyWithImpl;
  @useResult
  $Res call({String email, int otp});
}

/// @nodoc
class __$VerificationOtpCopyWithImpl<$Res>
    implements _$VerificationOtpCopyWith<$Res> {
  __$VerificationOtpCopyWithImpl(this._self, this._then);

  final _VerificationOtp _self;
  final $Res Function(_VerificationOtp) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? otp = null,
  }) {
    return _then(_VerificationOtp(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _self.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _TokenExpired implements AuthEvent {
  const _TokenExpired();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TokenExpired);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.tokenExpired()';
  }
}

/// @nodoc
mixin _$AuthState {
  bool get isLoading;
  bool get isSuccess;
  Failure? get failure;
  AuthActionType get actionType;
  bool? get isAuthenticated; // UserModel? userModel,
  UserEntity? get userModel;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthStateCopyWith<AuthState> get copyWith =>
      _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.actionType, actionType) ||
                other.actionType == actionType) &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated) &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isSuccess, failure,
      actionType, isAuthenticated, userModel);

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, isSuccess: $isSuccess, failure: $failure, actionType: $actionType, isAuthenticated: $isAuthenticated, userModel: $userModel)';
  }
}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) =
      _$AuthStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      bool isSuccess,
      Failure? failure,
      AuthActionType actionType,
      bool? isAuthenticated,
      UserEntity? userModel});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = null,
    Object? failure = freezed,
    Object? actionType = null,
    Object? isAuthenticated = freezed,
    Object? userModel = freezed,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _self.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      actionType: null == actionType
          ? _self.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as AuthActionType,
      isAuthenticated: freezed == isAuthenticated
          ? _self.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool?,
      userModel: freezed == userModel
          ? _self.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthState():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            bool isSuccess,
            Failure? failure,
            AuthActionType actionType,
            bool? isAuthenticated,
            UserEntity? userModel)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthState() when $default != null:
        return $default(_that.isLoading, _that.isSuccess, _that.failure,
            _that.actionType, _that.isAuthenticated, _that.userModel);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            bool isSuccess,
            Failure? failure,
            AuthActionType actionType,
            bool? isAuthenticated,
            UserEntity? userModel)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthState():
        return $default(_that.isLoading, _that.isSuccess, _that.failure,
            _that.actionType, _that.isAuthenticated, _that.userModel);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool isLoading,
            bool isSuccess,
            Failure? failure,
            AuthActionType actionType,
            bool? isAuthenticated,
            UserEntity? userModel)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthState() when $default != null:
        return $default(_that.isLoading, _that.isSuccess, _that.failure,
            _that.actionType, _that.isAuthenticated, _that.userModel);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AuthState implements AuthState {
  const _AuthState(
      {this.isLoading = false,
      this.isSuccess = false,
      this.failure = null,
      this.actionType = AuthActionType.none,
      this.isAuthenticated,
      this.userModel});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSuccess;
  @override
  @JsonKey()
  final Failure? failure;
  @override
  @JsonKey()
  final AuthActionType actionType;
  @override
  final bool? isAuthenticated;
// UserModel? userModel,
  @override
  final UserEntity? userModel;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.actionType, actionType) ||
                other.actionType == actionType) &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated) &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isSuccess, failure,
      actionType, isAuthenticated, userModel);

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, isSuccess: $isSuccess, failure: $failure, actionType: $actionType, isAuthenticated: $isAuthenticated, userModel: $userModel)';
  }
}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) _then) =
      __$AuthStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isSuccess,
      Failure? failure,
      AuthActionType actionType,
      bool? isAuthenticated,
      UserEntity? userModel});
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = null,
    Object? failure = freezed,
    Object? actionType = null,
    Object? isAuthenticated = freezed,
    Object? userModel = freezed,
  }) {
    return _then(_AuthState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _self.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      actionType: null == actionType
          ? _self.actionType
          : actionType // ignore: cast_nullable_to_non_nullable
              as AuthActionType,
      isAuthenticated: freezed == isAuthenticated
          ? _self.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool?,
      userModel: freezed == userModel
          ? _self.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ));
  }
}

// dart format on
