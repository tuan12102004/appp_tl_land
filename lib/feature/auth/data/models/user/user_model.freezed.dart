// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {
  int? get id;
  String? get fullname;
  String? get phone;
  int? get gender;
  DateTime? get birthday;
  String? get avatar;
  int? get status;
  String? get address;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  String? get ward;
  String? get province;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<UserModel> get copyWith =>
      _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.ward, ward) || other.ward == ward) &&
            (identical(other.province, province) ||
                other.province == province));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullname, phone, gender,
      birthday, avatar, status, address, createdAt, ward, province);

  @override
  String toString() {
    return 'UserModel(id: $id, fullname: $fullname, phone: $phone, gender: $gender, birthday: $birthday, avatar: $avatar, status: $status, address: $address, createdAt: $createdAt, ward: $ward, province: $province)';
  }
}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) =
      _$UserModelCopyWithImpl;
  @useResult
  $Res call(
      {int? id,
      String? fullname,
      String? phone,
      int? gender,
      DateTime? birthday,
      String? avatar,
      int? status,
      String? address,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      String? ward,
      String? province});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullname = freezed,
    Object? phone = freezed,
    Object? gender = freezed,
    Object? birthday = freezed,
    Object? avatar = freezed,
    Object? status = freezed,
    Object? address = freezed,
    Object? createdAt = freezed,
    Object? ward = freezed,
    Object? province = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fullname: freezed == fullname
          ? _self.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      birthday: freezed == birthday
          ? _self.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ward: freezed == ward
          ? _self.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _self.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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
    TResult Function(_UserModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserModel() when $default != null:
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
    TResult Function(_UserModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserModel():
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
    TResult? Function(_UserModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserModel() when $default != null:
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
            int? id,
            String? fullname,
            String? phone,
            int? gender,
            DateTime? birthday,
            String? avatar,
            int? status,
            String? address,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            String? ward,
            String? province)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserModel() when $default != null:
        return $default(
            _that.id,
            _that.fullname,
            _that.phone,
            _that.gender,
            _that.birthday,
            _that.avatar,
            _that.status,
            _that.address,
            _that.createdAt,
            _that.ward,
            _that.province);
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
            int? id,
            String? fullname,
            String? phone,
            int? gender,
            DateTime? birthday,
            String? avatar,
            int? status,
            String? address,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            String? ward,
            String? province)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserModel():
        return $default(
            _that.id,
            _that.fullname,
            _that.phone,
            _that.gender,
            _that.birthday,
            _that.avatar,
            _that.status,
            _that.address,
            _that.createdAt,
            _that.ward,
            _that.province);
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
            int? id,
            String? fullname,
            String? phone,
            int? gender,
            DateTime? birthday,
            String? avatar,
            int? status,
            String? address,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            String? ward,
            String? province)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserModel() when $default != null:
        return $default(
            _that.id,
            _that.fullname,
            _that.phone,
            _that.gender,
            _that.birthday,
            _that.avatar,
            _that.status,
            _that.address,
            _that.createdAt,
            _that.ward,
            _that.province);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserModel implements UserModel {
  const _UserModel(
      {required this.id,
      required this.fullname,
      required this.phone,
      required this.gender,
      required this.birthday,
      required this.avatar,
      required this.status,
      required this.address,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.ward,
      required this.province});
  factory _UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @override
  final int? id;
  @override
  final String? fullname;
  @override
  final String? phone;
  @override
  final int? gender;
  @override
  final DateTime? birthday;
  @override
  final String? avatar;
  @override
  final int? status;
  @override
  final String? address;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  final String? ward;
  @override
  final String? province;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.ward, ward) || other.ward == ward) &&
            (identical(other.province, province) ||
                other.province == province));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullname, phone, gender,
      birthday, avatar, status, address, createdAt, ward, province);

  @override
  String toString() {
    return 'UserModel(id: $id, fullname: $fullname, phone: $phone, gender: $gender, birthday: $birthday, avatar: $avatar, status: $status, address: $address, createdAt: $createdAt, ward: $ward, province: $province)';
  }
}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) _then) =
      __$UserModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? id,
      String? fullname,
      String? phone,
      int? gender,
      DateTime? birthday,
      String? avatar,
      int? status,
      String? address,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      String? ward,
      String? province});
}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? fullname = freezed,
    Object? phone = freezed,
    Object? gender = freezed,
    Object? birthday = freezed,
    Object? avatar = freezed,
    Object? status = freezed,
    Object? address = freezed,
    Object? createdAt = freezed,
    Object? ward = freezed,
    Object? province = freezed,
  }) {
    return _then(_UserModel(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fullname: freezed == fullname
          ? _self.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      birthday: freezed == birthday
          ? _self.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ward: freezed == ward
          ? _self.ward
          : ward // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _self.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
