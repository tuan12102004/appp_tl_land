// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContactModel {
  int get id;
  @JsonKey(name: 'setting_key')
  String? get settingKey;
  @JsonKey(name: 'setting_name')
  String? get settingName;
  @JsonKey(name: 'plain_value')
  String? get value;
  String? get desc;
  @JsonKey(name: 'type_input')
  int? get typeInput;
  @JsonKey(name: 'type_data')
  String? get typeData;
  int? get group;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of ContactModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ContactModelCopyWith<ContactModel> get copyWith =>
      _$ContactModelCopyWithImpl<ContactModel>(
          this as ContactModel, _$identity);

  /// Serializes this ContactModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContactModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.settingKey, settingKey) ||
                other.settingKey == settingKey) &&
            (identical(other.settingName, settingName) ||
                other.settingName == settingName) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.typeInput, typeInput) ||
                other.typeInput == typeInput) &&
            (identical(other.typeData, typeData) ||
                other.typeData == typeData) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, settingKey, settingName,
      value, desc, typeInput, typeData, group, createdAt, updatedAt);

  @override
  String toString() {
    return 'ContactModel(id: $id, settingKey: $settingKey, settingName: $settingName, value: $value, desc: $desc, typeInput: $typeInput, typeData: $typeData, group: $group, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $ContactModelCopyWith<$Res> {
  factory $ContactModelCopyWith(
          ContactModel value, $Res Function(ContactModel) _then) =
      _$ContactModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'setting_key') String? settingKey,
      @JsonKey(name: 'setting_name') String? settingName,
      @JsonKey(name: 'plain_value') String? value,
      String? desc,
      @JsonKey(name: 'type_input') int? typeInput,
      @JsonKey(name: 'type_data') String? typeData,
      int? group,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$ContactModelCopyWithImpl<$Res> implements $ContactModelCopyWith<$Res> {
  _$ContactModelCopyWithImpl(this._self, this._then);

  final ContactModel _self;
  final $Res Function(ContactModel) _then;

  /// Create a copy of ContactModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? settingKey = freezed,
    Object? settingName = freezed,
    Object? value = freezed,
    Object? desc = freezed,
    Object? typeInput = freezed,
    Object? typeData = freezed,
    Object? group = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      settingKey: freezed == settingKey
          ? _self.settingKey
          : settingKey // ignore: cast_nullable_to_non_nullable
              as String?,
      settingName: freezed == settingName
          ? _self.settingName
          : settingName // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _self.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      typeInput: freezed == typeInput
          ? _self.typeInput
          : typeInput // ignore: cast_nullable_to_non_nullable
              as int?,
      typeData: freezed == typeData
          ? _self.typeData
          : typeData // ignore: cast_nullable_to_non_nullable
              as String?,
      group: freezed == group
          ? _self.group
          : group // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ContactModel].
extension ContactModelPatterns on ContactModel {
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
    TResult Function(_ContactModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ContactModel() when $default != null:
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
    TResult Function(_ContactModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactModel():
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
    TResult? Function(_ContactModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactModel() when $default != null:
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
            @JsonKey(name: 'setting_key') String? settingKey,
            @JsonKey(name: 'setting_name') String? settingName,
            @JsonKey(name: 'plain_value') String? value,
            String? desc,
            @JsonKey(name: 'type_input') int? typeInput,
            @JsonKey(name: 'type_data') String? typeData,
            int? group,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ContactModel() when $default != null:
        return $default(
            _that.id,
            _that.settingKey,
            _that.settingName,
            _that.value,
            _that.desc,
            _that.typeInput,
            _that.typeData,
            _that.group,
            _that.createdAt,
            _that.updatedAt);
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
            @JsonKey(name: 'setting_key') String? settingKey,
            @JsonKey(name: 'setting_name') String? settingName,
            @JsonKey(name: 'plain_value') String? value,
            String? desc,
            @JsonKey(name: 'type_input') int? typeInput,
            @JsonKey(name: 'type_data') String? typeData,
            int? group,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactModel():
        return $default(
            _that.id,
            _that.settingKey,
            _that.settingName,
            _that.value,
            _that.desc,
            _that.typeInput,
            _that.typeData,
            _that.group,
            _that.createdAt,
            _that.updatedAt);
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
            @JsonKey(name: 'setting_key') String? settingKey,
            @JsonKey(name: 'setting_name') String? settingName,
            @JsonKey(name: 'plain_value') String? value,
            String? desc,
            @JsonKey(name: 'type_input') int? typeInput,
            @JsonKey(name: 'type_data') String? typeData,
            int? group,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ContactModel() when $default != null:
        return $default(
            _that.id,
            _that.settingKey,
            _that.settingName,
            _that.value,
            _that.desc,
            _that.typeInput,
            _that.typeData,
            _that.group,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ContactModel implements ContactModel {
  _ContactModel(
      {required this.id,
      @JsonKey(name: 'setting_key') required this.settingKey,
      @JsonKey(name: 'setting_name') required this.settingName,
      @JsonKey(name: 'plain_value') required this.value,
      required this.desc,
      @JsonKey(name: 'type_input') required this.typeInput,
      @JsonKey(name: 'type_data') required this.typeData,
      required this.group,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _ContactModel.fromJson(Map<String, dynamic> json) =>
      _$ContactModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'setting_key')
  final String? settingKey;
  @override
  @JsonKey(name: 'setting_name')
  final String? settingName;
  @override
  @JsonKey(name: 'plain_value')
  final String? value;
  @override
  final String? desc;
  @override
  @JsonKey(name: 'type_input')
  final int? typeInput;
  @override
  @JsonKey(name: 'type_data')
  final String? typeData;
  @override
  final int? group;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  /// Create a copy of ContactModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ContactModelCopyWith<_ContactModel> get copyWith =>
      __$ContactModelCopyWithImpl<_ContactModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ContactModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.settingKey, settingKey) ||
                other.settingKey == settingKey) &&
            (identical(other.settingName, settingName) ||
                other.settingName == settingName) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.typeInput, typeInput) ||
                other.typeInput == typeInput) &&
            (identical(other.typeData, typeData) ||
                other.typeData == typeData) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, settingKey, settingName,
      value, desc, typeInput, typeData, group, createdAt, updatedAt);

  @override
  String toString() {
    return 'ContactModel(id: $id, settingKey: $settingKey, settingName: $settingName, value: $value, desc: $desc, typeInput: $typeInput, typeData: $typeData, group: $group, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$ContactModelCopyWith<$Res>
    implements $ContactModelCopyWith<$Res> {
  factory _$ContactModelCopyWith(
          _ContactModel value, $Res Function(_ContactModel) _then) =
      __$ContactModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'setting_key') String? settingKey,
      @JsonKey(name: 'setting_name') String? settingName,
      @JsonKey(name: 'plain_value') String? value,
      String? desc,
      @JsonKey(name: 'type_input') int? typeInput,
      @JsonKey(name: 'type_data') String? typeData,
      int? group,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$ContactModelCopyWithImpl<$Res>
    implements _$ContactModelCopyWith<$Res> {
  __$ContactModelCopyWithImpl(this._self, this._then);

  final _ContactModel _self;
  final $Res Function(_ContactModel) _then;

  /// Create a copy of ContactModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? settingKey = freezed,
    Object? settingName = freezed,
    Object? value = freezed,
    Object? desc = freezed,
    Object? typeInput = freezed,
    Object? typeData = freezed,
    Object? group = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_ContactModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      settingKey: freezed == settingKey
          ? _self.settingKey
          : settingKey // ignore: cast_nullable_to_non_nullable
              as String?,
      settingName: freezed == settingName
          ? _self.settingName
          : settingName // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _self.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      typeInput: freezed == typeInput
          ? _self.typeInput
          : typeInput // ignore: cast_nullable_to_non_nullable
              as int?,
      typeData: freezed == typeData
          ? _self.typeData
          : typeData // ignore: cast_nullable_to_non_nullable
              as String?,
      group: freezed == group
          ? _self.group
          : group // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
