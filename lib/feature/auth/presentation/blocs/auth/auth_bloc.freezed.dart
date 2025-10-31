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
    TResult Function(_Profile value)? profile,
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_TokenExpired value)? tokenExpired,
    TResult Function(_Signup value)? signup,
    TResult Function(_ForgotPass value)? forgotPass,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(_ResendOtp value)? resendOtp,
    TResult Function(_VerificationOtp value)? verificationOtp,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Login() when login != null:
        return login(_that);
      case _Profile() when profile != null:
        return profile(_that);
      case _CheckAuth() when checkAuth != null:
        return checkAuth(_that);
      case _ResetState() when resetState != null:
        return resetState(_that);
      case _TokenExpired() when tokenExpired != null:
        return tokenExpired(_that);
      case _Signup() when signup != null:
        return signup(_that);
      case _ForgotPass() when forgotPass != null:
        return forgotPass(_that);
      case _SendOtp() when sendOtp != null:
        return sendOtp(_that);
      case _ResendOtp() when resendOtp != null:
        return resendOtp(_that);
      case _VerificationOtp() when verificationOtp != null:
        return verificationOtp(_that);
      case _Logout() when logout != null:
        return logout(_that);
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
    required TResult Function(_Profile value) profile,
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_TokenExpired value) tokenExpired,
    required TResult Function(_Signup value) signup,
    required TResult Function(_ForgotPass value) forgotPass,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(_ResendOtp value) resendOtp,
    required TResult Function(_VerificationOtp value) verificationOtp,
    required TResult Function(_Logout value) logout,
  }) {
    final _that = this;
    switch (_that) {
      case _Login():
        return login(_that);
      case _Profile():
        return profile(_that);
      case _CheckAuth():
        return checkAuth(_that);
      case _ResetState():
        return resetState(_that);
      case _TokenExpired():
        return tokenExpired(_that);
      case _Signup():
        return signup(_that);
      case _ForgotPass():
        return forgotPass(_that);
      case _SendOtp():
        return sendOtp(_that);
      case _ResendOtp():
        return resendOtp(_that);
      case _VerificationOtp():
        return verificationOtp(_that);
      case _Logout():
        return logout(_that);
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
    TResult? Function(_Profile value)? profile,
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_TokenExpired value)? tokenExpired,
    TResult? Function(_Signup value)? signup,
    TResult? Function(_ForgotPass value)? forgotPass,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(_ResendOtp value)? resendOtp,
    TResult? Function(_VerificationOtp value)? verificationOtp,
    TResult? Function(_Logout value)? logout,
  }) {
    final _that = this;
    switch (_that) {
      case _Login() when login != null:
        return login(_that);
      case _Profile() when profile != null:
        return profile(_that);
      case _CheckAuth() when checkAuth != null:
        return checkAuth(_that);
      case _ResetState() when resetState != null:
        return resetState(_that);
      case _TokenExpired() when tokenExpired != null:
        return tokenExpired(_that);
      case _Signup() when signup != null:
        return signup(_that);
      case _ForgotPass() when forgotPass != null:
        return forgotPass(_that);
      case _SendOtp() when sendOtp != null:
        return sendOtp(_that);
      case _ResendOtp() when resendOtp != null:
        return resendOtp(_that);
      case _VerificationOtp() when verificationOtp != null:
        return verificationOtp(_that);
      case _Logout() when logout != null:
        return logout(_that);
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
    TResult Function()? profile,
    TResult Function()? checkAuth,
    TResult Function()? resetState,
    TResult Function()? tokenExpired,
    TResult Function()? signup,
    TResult Function(String email, String pass, String confirmPass)? forgotPass,
    TResult Function(String email)? sendOtp,
    TResult Function(String email)? resendOtp,
    TResult Function(String email, int otp)? verificationOtp,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Login() when login != null:
        return login(_that.email, _that.pass);
      case _Profile() when profile != null:
        return profile();
      case _CheckAuth() when checkAuth != null:
        return checkAuth();
      case _ResetState() when resetState != null:
        return resetState();
      case _TokenExpired() when tokenExpired != null:
        return tokenExpired();
      case _Signup() when signup != null:
        return signup();
      case _ForgotPass() when forgotPass != null:
        return forgotPass(_that.email, _that.pass, _that.confirmPass);
      case _SendOtp() when sendOtp != null:
        return sendOtp(_that.email);
      case _ResendOtp() when resendOtp != null:
        return resendOtp(_that.email);
      case _VerificationOtp() when verificationOtp != null:
        return verificationOtp(_that.email, _that.otp);
      case _Logout() when logout != null:
        return logout();
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
    required TResult Function() profile,
    required TResult Function() checkAuth,
    required TResult Function() resetState,
    required TResult Function() tokenExpired,
    required TResult Function() signup,
    required TResult Function(String email, String pass, String confirmPass)
        forgotPass,
    required TResult Function(String email) sendOtp,
    required TResult Function(String email) resendOtp,
    required TResult Function(String email, int otp) verificationOtp,
    required TResult Function() logout,
  }) {
    final _that = this;
    switch (_that) {
      case _Login():
        return login(_that.email, _that.pass);
      case _Profile():
        return profile();
      case _CheckAuth():
        return checkAuth();
      case _ResetState():
        return resetState();
      case _TokenExpired():
        return tokenExpired();
      case _Signup():
        return signup();
      case _ForgotPass():
        return forgotPass(_that.email, _that.pass, _that.confirmPass);
      case _SendOtp():
        return sendOtp(_that.email);
      case _ResendOtp():
        return resendOtp(_that.email);
      case _VerificationOtp():
        return verificationOtp(_that.email, _that.otp);
      case _Logout():
        return logout();
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
    TResult? Function()? profile,
    TResult? Function()? checkAuth,
    TResult? Function()? resetState,
    TResult? Function()? tokenExpired,
    TResult? Function()? signup,
    TResult? Function(String email, String pass, String confirmPass)?
        forgotPass,
    TResult? Function(String email)? sendOtp,
    TResult? Function(String email)? resendOtp,
    TResult? Function(String email, int otp)? verificationOtp,
    TResult? Function()? logout,
  }) {
    final _that = this;
    switch (_that) {
      case _Login() when login != null:
        return login(_that.email, _that.pass);
      case _Profile() when profile != null:
        return profile();
      case _CheckAuth() when checkAuth != null:
        return checkAuth();
      case _ResetState() when resetState != null:
        return resetState();
      case _TokenExpired() when tokenExpired != null:
        return tokenExpired();
      case _Signup() when signup != null:
        return signup();
      case _ForgotPass() when forgotPass != null:
        return forgotPass(_that.email, _that.pass, _that.confirmPass);
      case _SendOtp() when sendOtp != null:
        return sendOtp(_that.email);
      case _ResendOtp() when resendOtp != null:
        return resendOtp(_that.email);
      case _VerificationOtp() when verificationOtp != null:
        return verificationOtp(_that.email, _that.otp);
      case _Logout() when logout != null:
        return logout();
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

class _Profile implements AuthEvent {
  const _Profile();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Profile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.profile()';
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

class _Signup implements AuthEvent {
  const _Signup();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Signup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthEvent.signup()';
  }
}

/// @nodoc

class _ForgotPass implements AuthEvent {
  const _ForgotPass(
      {required this.email, required this.pass, required this.confirmPass});

  final String email;
  final String pass;
  final String confirmPass;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ForgotPassCopyWith<_ForgotPass> get copyWith =>
      __$ForgotPassCopyWithImpl<_ForgotPass>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForgotPass &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.pass, pass) || other.pass == pass) &&
            (identical(other.confirmPass, confirmPass) ||
                other.confirmPass == confirmPass));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, pass, confirmPass);

  @override
  String toString() {
    return 'AuthEvent.forgotPass(email: $email, pass: $pass, confirmPass: $confirmPass)';
  }
}

/// @nodoc
abstract mixin class _$ForgotPassCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$ForgotPassCopyWith(
          _ForgotPass value, $Res Function(_ForgotPass) _then) =
      __$ForgotPassCopyWithImpl;
  @useResult
  $Res call({String email, String pass, String confirmPass});
}

/// @nodoc
class __$ForgotPassCopyWithImpl<$Res> implements _$ForgotPassCopyWith<$Res> {
  __$ForgotPassCopyWithImpl(this._self, this._then);

  final _ForgotPass _self;
  final $Res Function(_ForgotPass) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? pass = null,
    Object? confirmPass = null,
  }) {
    return _then(_ForgotPass(
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

class _SendOtp implements AuthEvent {
  const _SendOtp({required this.email});

  final String email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SendOtpCopyWith<_SendOtp> get copyWith =>
      __$SendOtpCopyWithImpl<_SendOtp>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendOtp &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'AuthEvent.sendOtp(email: $email)';
  }
}

/// @nodoc
abstract mixin class _$SendOtpCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$SendOtpCopyWith(_SendOtp value, $Res Function(_SendOtp) _then) =
      __$SendOtpCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$SendOtpCopyWithImpl<$Res> implements _$SendOtpCopyWith<$Res> {
  __$SendOtpCopyWithImpl(this._self, this._then);

  final _SendOtp _self;
  final $Res Function(_SendOtp) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(_SendOtp(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
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
mixin _$AuthState {
  bool get isLoading;
  bool get isSuccess;
  Failure? get failure;
  AuthActionType get actionType;
  bool? get isAuthenticated;
  bool? get otpVerified;
  bool? get otpResent;
  bool? get otpSend;
  UserEntity? get userModel;
  List<ContactEntity> get contactToSignup;

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
            (identical(other.otpVerified, otpVerified) ||
                other.otpVerified == otpVerified) &&
            (identical(other.otpResent, otpResent) ||
                other.otpResent == otpResent) &&
            (identical(other.otpSend, otpSend) || other.otpSend == otpSend) &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel) &&
            const DeepCollectionEquality()
                .equals(other.contactToSignup, contactToSignup));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isSuccess,
      failure,
      actionType,
      isAuthenticated,
      otpVerified,
      otpResent,
      otpSend,
      userModel,
      const DeepCollectionEquality().hash(contactToSignup));

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, isSuccess: $isSuccess, failure: $failure, actionType: $actionType, isAuthenticated: $isAuthenticated, otpVerified: $otpVerified, otpResent: $otpResent, otpSend: $otpSend, userModel: $userModel, contactToSignup: $contactToSignup)';
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
      bool? otpVerified,
      bool? otpResent,
      bool? otpSend,
      UserEntity? userModel,
      List<ContactEntity> contactToSignup});
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
    Object? otpVerified = freezed,
    Object? otpResent = freezed,
    Object? otpSend = freezed,
    Object? userModel = freezed,
    Object? contactToSignup = null,
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
      otpVerified: freezed == otpVerified
          ? _self.otpVerified
          : otpVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      otpResent: freezed == otpResent
          ? _self.otpResent
          : otpResent // ignore: cast_nullable_to_non_nullable
              as bool?,
      otpSend: freezed == otpSend
          ? _self.otpSend
          : otpSend // ignore: cast_nullable_to_non_nullable
              as bool?,
      userModel: freezed == userModel
          ? _self.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      contactToSignup: null == contactToSignup
          ? _self.contactToSignup
          : contactToSignup // ignore: cast_nullable_to_non_nullable
              as List<ContactEntity>,
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
            bool? otpVerified,
            bool? otpResent,
            bool? otpSend,
            UserEntity? userModel,
            List<ContactEntity> contactToSignup)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AuthState() when $default != null:
        return $default(
            _that.isLoading,
            _that.isSuccess,
            _that.failure,
            _that.actionType,
            _that.isAuthenticated,
            _that.otpVerified,
            _that.otpResent,
            _that.otpSend,
            _that.userModel,
            _that.contactToSignup);
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
            bool? otpVerified,
            bool? otpResent,
            bool? otpSend,
            UserEntity? userModel,
            List<ContactEntity> contactToSignup)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthState():
        return $default(
            _that.isLoading,
            _that.isSuccess,
            _that.failure,
            _that.actionType,
            _that.isAuthenticated,
            _that.otpVerified,
            _that.otpResent,
            _that.otpSend,
            _that.userModel,
            _that.contactToSignup);
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
            bool? otpVerified,
            bool? otpResent,
            bool? otpSend,
            UserEntity? userModel,
            List<ContactEntity> contactToSignup)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AuthState() when $default != null:
        return $default(
            _that.isLoading,
            _that.isSuccess,
            _that.failure,
            _that.actionType,
            _that.isAuthenticated,
            _that.otpVerified,
            _that.otpResent,
            _that.otpSend,
            _that.userModel,
            _that.contactToSignup);
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
      this.otpVerified,
      this.otpResent,
      this.otpSend,
      this.userModel,
      final List<ContactEntity> contactToSignup = const []})
      : _contactToSignup = contactToSignup;

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
  @override
  final bool? otpVerified;
  @override
  final bool? otpResent;
  @override
  final bool? otpSend;
  @override
  final UserEntity? userModel;
  final List<ContactEntity> _contactToSignup;
  @override
  @JsonKey()
  List<ContactEntity> get contactToSignup {
    if (_contactToSignup is EqualUnmodifiableListView) return _contactToSignup;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contactToSignup);
  }

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
            (identical(other.otpVerified, otpVerified) ||
                other.otpVerified == otpVerified) &&
            (identical(other.otpResent, otpResent) ||
                other.otpResent == otpResent) &&
            (identical(other.otpSend, otpSend) || other.otpSend == otpSend) &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel) &&
            const DeepCollectionEquality()
                .equals(other._contactToSignup, _contactToSignup));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isSuccess,
      failure,
      actionType,
      isAuthenticated,
      otpVerified,
      otpResent,
      otpSend,
      userModel,
      const DeepCollectionEquality().hash(_contactToSignup));

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, isSuccess: $isSuccess, failure: $failure, actionType: $actionType, isAuthenticated: $isAuthenticated, otpVerified: $otpVerified, otpResent: $otpResent, otpSend: $otpSend, userModel: $userModel, contactToSignup: $contactToSignup)';
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
      bool? otpVerified,
      bool? otpResent,
      bool? otpSend,
      UserEntity? userModel,
      List<ContactEntity> contactToSignup});
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
    Object? otpVerified = freezed,
    Object? otpResent = freezed,
    Object? otpSend = freezed,
    Object? userModel = freezed,
    Object? contactToSignup = null,
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
      otpVerified: freezed == otpVerified
          ? _self.otpVerified
          : otpVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      otpResent: freezed == otpResent
          ? _self.otpResent
          : otpResent // ignore: cast_nullable_to_non_nullable
              as bool?,
      otpSend: freezed == otpSend
          ? _self.otpSend
          : otpSend // ignore: cast_nullable_to_non_nullable
              as bool?,
      userModel: freezed == userModel
          ? _self.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      contactToSignup: null == contactToSignup
          ? _self._contactToSignup
          : contactToSignup // ignore: cast_nullable_to_non_nullable
              as List<ContactEntity>,
    ));
  }
}

// dart format on
