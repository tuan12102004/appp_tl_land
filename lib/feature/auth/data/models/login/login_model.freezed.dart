// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginModel {
  @JsonKey(name: 'access_token')
  String get accessToken;
  @JsonKey(name: 'refresh_token')
  String? get refreshToken;
  @JsonKey(name: 'is_email_verified')
  bool? get isEmailVerified;
  @JsonKey(name: 'is_sms_verified')
  bool? get isSmsVerified;
  @JsonKey(name: 'expires_in')
  int? get expiresIn;
  int? get status;
  List<String>? get role;

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginModelCopyWith<LoginModel> get copyWith =>
      _$LoginModelCopyWithImpl<LoginModel>(this as LoginModel, _$identity);

  /// Serializes this LoginModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginModel &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.isSmsVerified, isSmsVerified) ||
                other.isSmsVerified == isSmsVerified) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.role, role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      accessToken,
      refreshToken,
      isEmailVerified,
      isSmsVerified,
      expiresIn,
      status,
      const DeepCollectionEquality().hash(role));

  @override
  String toString() {
    return 'LoginModel(accessToken: $accessToken, refreshToken: $refreshToken, isEmailVerified: $isEmailVerified, isSmsVerified: $isSmsVerified, expiresIn: $expiresIn, status: $status, role: $role)';
  }
}

/// @nodoc
abstract mixin class $LoginModelCopyWith<$Res> {
  factory $LoginModelCopyWith(
          LoginModel value, $Res Function(LoginModel) _then) =
      _$LoginModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String? refreshToken,
      @JsonKey(name: 'is_email_verified') bool? isEmailVerified,
      @JsonKey(name: 'is_sms_verified') bool? isSmsVerified,
      @JsonKey(name: 'expires_in') int? expiresIn,
      int? status,
      List<String>? role});
}

/// @nodoc
class _$LoginModelCopyWithImpl<$Res> implements $LoginModelCopyWith<$Res> {
  _$LoginModelCopyWithImpl(this._self, this._then);

  final LoginModel _self;
  final $Res Function(LoginModel) _then;

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = freezed,
    Object? isEmailVerified = freezed,
    Object? isSmsVerified = freezed,
    Object? expiresIn = freezed,
    Object? status = freezed,
    Object? role = freezed,
  }) {
    return _then(_self.copyWith(
      accessToken: null == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: freezed == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _self.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSmsVerified: freezed == isSmsVerified
          ? _self.isSmsVerified
          : isSmsVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      expiresIn: freezed == expiresIn
          ? _self.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [LoginModel].
extension LoginModelPatterns on LoginModel {
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
    TResult Function(_LoginModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginModel() when $default != null:
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
    TResult Function(_LoginModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginModel():
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
    TResult? Function(_LoginModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginModel() when $default != null:
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
            @JsonKey(name: 'access_token') String accessToken,
            @JsonKey(name: 'refresh_token') String? refreshToken,
            @JsonKey(name: 'is_email_verified') bool? isEmailVerified,
            @JsonKey(name: 'is_sms_verified') bool? isSmsVerified,
            @JsonKey(name: 'expires_in') int? expiresIn,
            int? status,
            List<String>? role)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoginModel() when $default != null:
        return $default(
            _that.accessToken,
            _that.refreshToken,
            _that.isEmailVerified,
            _that.isSmsVerified,
            _that.expiresIn,
            _that.status,
            _that.role);
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
            @JsonKey(name: 'access_token') String accessToken,
            @JsonKey(name: 'refresh_token') String? refreshToken,
            @JsonKey(name: 'is_email_verified') bool? isEmailVerified,
            @JsonKey(name: 'is_sms_verified') bool? isSmsVerified,
            @JsonKey(name: 'expires_in') int? expiresIn,
            int? status,
            List<String>? role)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginModel():
        return $default(
            _that.accessToken,
            _that.refreshToken,
            _that.isEmailVerified,
            _that.isSmsVerified,
            _that.expiresIn,
            _that.status,
            _that.role);
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
            @JsonKey(name: 'access_token') String accessToken,
            @JsonKey(name: 'refresh_token') String? refreshToken,
            @JsonKey(name: 'is_email_verified') bool? isEmailVerified,
            @JsonKey(name: 'is_sms_verified') bool? isSmsVerified,
            @JsonKey(name: 'expires_in') int? expiresIn,
            int? status,
            List<String>? role)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoginModel() when $default != null:
        return $default(
            _that.accessToken,
            _that.refreshToken,
            _that.isEmailVerified,
            _that.isSmsVerified,
            _that.expiresIn,
            _that.status,
            _that.role);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LoginModel implements LoginModel {
  const _LoginModel(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'refresh_token') this.refreshToken,
      @JsonKey(name: 'is_email_verified') this.isEmailVerified,
      @JsonKey(name: 'is_sms_verified') this.isSmsVerified,
      @JsonKey(name: 'expires_in') this.expiresIn,
      this.status,
      final List<String>? role})
      : _role = role;
  factory _LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;
  @override
  @JsonKey(name: 'is_email_verified')
  final bool? isEmailVerified;
  @override
  @JsonKey(name: 'is_sms_verified')
  final bool? isSmsVerified;
  @override
  @JsonKey(name: 'expires_in')
  final int? expiresIn;
  @override
  final int? status;
  final List<String>? _role;
  @override
  List<String>? get role {
    final value = _role;
    if (value == null) return null;
    if (_role is EqualUnmodifiableListView) return _role;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginModelCopyWith<_LoginModel> get copyWith =>
      __$LoginModelCopyWithImpl<_LoginModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LoginModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginModel &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.isSmsVerified, isSmsVerified) ||
                other.isSmsVerified == isSmsVerified) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._role, _role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      accessToken,
      refreshToken,
      isEmailVerified,
      isSmsVerified,
      expiresIn,
      status,
      const DeepCollectionEquality().hash(_role));

  @override
  String toString() {
    return 'LoginModel(accessToken: $accessToken, refreshToken: $refreshToken, isEmailVerified: $isEmailVerified, isSmsVerified: $isSmsVerified, expiresIn: $expiresIn, status: $status, role: $role)';
  }
}

/// @nodoc
abstract mixin class _$LoginModelCopyWith<$Res>
    implements $LoginModelCopyWith<$Res> {
  factory _$LoginModelCopyWith(
          _LoginModel value, $Res Function(_LoginModel) _then) =
      __$LoginModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String? refreshToken,
      @JsonKey(name: 'is_email_verified') bool? isEmailVerified,
      @JsonKey(name: 'is_sms_verified') bool? isSmsVerified,
      @JsonKey(name: 'expires_in') int? expiresIn,
      int? status,
      List<String>? role});
}

/// @nodoc
class __$LoginModelCopyWithImpl<$Res> implements _$LoginModelCopyWith<$Res> {
  __$LoginModelCopyWithImpl(this._self, this._then);

  final _LoginModel _self;
  final $Res Function(_LoginModel) _then;

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = freezed,
    Object? isEmailVerified = freezed,
    Object? isSmsVerified = freezed,
    Object? expiresIn = freezed,
    Object? status = freezed,
    Object? role = freezed,
  }) {
    return _then(_LoginModel(
      accessToken: null == accessToken
          ? _self.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: freezed == refreshToken
          ? _self.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _self.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSmsVerified: freezed == isSmsVerified
          ? _self.isSmsVerified
          : isSmsVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      expiresIn: freezed == expiresIn
          ? _self.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      role: freezed == role
          ? _self._role
          : role // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

// dart format on
