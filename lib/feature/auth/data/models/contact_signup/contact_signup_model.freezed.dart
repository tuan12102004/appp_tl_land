// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_signup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContactSignupModel {
  int get id;
  @JsonKey(name: 'setting_key')
  String get settingKey;
  @JsonKey(name: 'setting_name')
  String get settingName;
  @JsonKey(name: 'plain_value')
  String get value;

  /// Create a copy of ContactSignupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ContactSignupModelCopyWith<ContactSignupModel> get copyWith =>
      _$ContactSignupModelCopyWithImpl<ContactSignupModel>(
          this as ContactSignupModel, _$identity);

  /// Serializes this ContactSignupModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContactSignupModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.settingKey, settingKey) ||
                other.settingKey == settingKey) &&
            (identical(other.settingName, settingName) ||
                other.settingName == settingName) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, settingKey, settingName, value);

  @override
  String toString() {
    return 'ContactSignupModel(id: $id, settingKey: $settingKey, settingName: $settingName, value: $value)';
  }
}

/// @nodoc
abstract mixin class $ContactSignupModelCopyWith<$Res> {
  factory $ContactSignupModelCopyWith(
          ContactSignupModel value, $Res Function(ContactSignupModel) _then) =
      _$ContactSignupModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'setting_key') String settingKey,
      @JsonKey(name: 'setting_name') String settingName,
      @JsonKey(name: 'plain_value') String value});
}

/// @nodoc
class _$ContactSignupModelCopyWithImpl<$Res>
    implements $ContactSignupModelCopyWith<$Res> {
  _$ContactSignupModelCopyWithImpl(this._self, this._then);

  final ContactSignupModel _self;
  final $Res Function(ContactSignupModel) _then;

  /// Create a copy of ContactSignupModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? settingKey = null,
    Object? settingName = null,
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      settingKey: null == settingKey
          ? _self.settingKey
          : settingKey // ignore: cast_nullable_to_non_nullable
              as String,
      settingName: null == settingName
          ? _self.settingName
          : settingName // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ContactSignupModel].
extension ContactSignupModelPatterns on ContactSignupModel {
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
    TResult Function(_ContactSignupModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ContactSignupModel() when $default != null:
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
    TResult Function(_ContactSignupModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactSignupModel():
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
    TResult? Function(_ContactSignupModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactSignupModel() when $default != null:
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
            int id,
            @JsonKey(name: 'setting_key') String settingKey,
            @JsonKey(name: 'setting_name') String settingName,
            @JsonKey(name: 'plain_value') String value)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ContactSignupModel() when $default != null:
        return $default(
            _that.id, _that.settingKey, _that.settingName, _that.value);
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
            int id,
            @JsonKey(name: 'setting_key') String settingKey,
            @JsonKey(name: 'setting_name') String settingName,
            @JsonKey(name: 'plain_value') String value)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactSignupModel():
        return $default(
            _that.id, _that.settingKey, _that.settingName, _that.value);
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
            int id,
            @JsonKey(name: 'setting_key') String settingKey,
            @JsonKey(name: 'setting_name') String settingName,
            @JsonKey(name: 'plain_value') String value)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactSignupModel() when $default != null:
        return $default(
            _that.id, _that.settingKey, _that.settingName, _that.value);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ContactSignupModel implements ContactSignupModel {
  _ContactSignupModel(
      {required this.id,
      @JsonKey(name: 'setting_key') required this.settingKey,
      @JsonKey(name: 'setting_name') required this.settingName,
      @JsonKey(name: 'plain_value') required this.value});
  factory _ContactSignupModel.fromJson(Map<String, dynamic> json) =>
      _$ContactSignupModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'setting_key')
  final String settingKey;
  @override
  @JsonKey(name: 'setting_name')
  final String settingName;
  @override
  @JsonKey(name: 'plain_value')
  final String value;

  /// Create a copy of ContactSignupModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ContactSignupModelCopyWith<_ContactSignupModel> get copyWith =>
      __$ContactSignupModelCopyWithImpl<_ContactSignupModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ContactSignupModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactSignupModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.settingKey, settingKey) ||
                other.settingKey == settingKey) &&
            (identical(other.settingName, settingName) ||
                other.settingName == settingName) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, settingKey, settingName, value);

  @override
  String toString() {
    return 'ContactSignupModel(id: $id, settingKey: $settingKey, settingName: $settingName, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ContactSignupModelCopyWith<$Res>
    implements $ContactSignupModelCopyWith<$Res> {
  factory _$ContactSignupModelCopyWith(
          _ContactSignupModel value, $Res Function(_ContactSignupModel) _then) =
      __$ContactSignupModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'setting_key') String settingKey,
      @JsonKey(name: 'setting_name') String settingName,
      @JsonKey(name: 'plain_value') String value});
}

/// @nodoc
class __$ContactSignupModelCopyWithImpl<$Res>
    implements _$ContactSignupModelCopyWith<$Res> {
  __$ContactSignupModelCopyWithImpl(this._self, this._then);

  final _ContactSignupModel _self;
  final $Res Function(_ContactSignupModel) _then;

  /// Create a copy of ContactSignupModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? settingKey = null,
    Object? settingName = null,
    Object? value = null,
  }) {
    return _then(_ContactSignupModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      settingKey: null == settingKey
          ? _self.settingKey
          : settingKey // ignore: cast_nullable_to_non_nullable
              as String,
      settingName: null == settingName
          ? _self.settingName
          : settingName // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
