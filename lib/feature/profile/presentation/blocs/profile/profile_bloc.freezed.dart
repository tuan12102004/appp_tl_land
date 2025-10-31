// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProfileEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileEvent()';
  }
}

/// @nodoc
class $ProfileEventCopyWith<$Res> {
  $ProfileEventCopyWith(ProfileEvent _, $Res Function(ProfileEvent) __);
}

/// Adds pattern-matching-related methods to [ProfileEvent].
extension ProfileEventPatterns on ProfileEvent {
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
    TResult Function(GetUserProfile value)? getUserProfile,
    TResult Function(UpdateInfoProfile value)? updateInfoProfile,
    TResult Function(GetProvinces value)? getProvinces,
    TResult Function(ProvinceChanged value)? provinceChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetUserProfile() when getUserProfile != null:
        return getUserProfile(_that);
      case UpdateInfoProfile() when updateInfoProfile != null:
        return updateInfoProfile(_that);
      case GetProvinces() when getProvinces != null:
        return getProvinces(_that);
      case ProvinceChanged() when provinceChanged != null:
        return provinceChanged(_that);
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
    required TResult Function(GetUserProfile value) getUserProfile,
    required TResult Function(UpdateInfoProfile value) updateInfoProfile,
    required TResult Function(GetProvinces value) getProvinces,
    required TResult Function(ProvinceChanged value) provinceChanged,
  }) {
    final _that = this;
    switch (_that) {
      case GetUserProfile():
        return getUserProfile(_that);
      case UpdateInfoProfile():
        return updateInfoProfile(_that);
      case GetProvinces():
        return getProvinces(_that);
      case ProvinceChanged():
        return provinceChanged(_that);
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
    TResult? Function(GetUserProfile value)? getUserProfile,
    TResult? Function(UpdateInfoProfile value)? updateInfoProfile,
    TResult? Function(GetProvinces value)? getProvinces,
    TResult? Function(ProvinceChanged value)? provinceChanged,
  }) {
    final _that = this;
    switch (_that) {
      case GetUserProfile() when getUserProfile != null:
        return getUserProfile(_that);
      case UpdateInfoProfile() when updateInfoProfile != null:
        return updateInfoProfile(_that);
      case GetProvinces() when getProvinces != null:
        return getProvinces(_that);
      case ProvinceChanged() when provinceChanged != null:
        return provinceChanged(_that);
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
    TResult Function()? getUserProfile,
    TResult Function(
            File? avatar,
            String? fullname,
            String? email,
            String? phone,
            int? gender,
            DateTime? birthday,
            String? address,
            int? wardId,
            int? provinceId)?
        updateInfoProfile,
    TResult Function()? getProvinces,
    TResult Function(int provinceId)? provinceChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetUserProfile() when getUserProfile != null:
        return getUserProfile();
      case UpdateInfoProfile() when updateInfoProfile != null:
        return updateInfoProfile(
            _that.avatar,
            _that.fullname,
            _that.email,
            _that.phone,
            _that.gender,
            _that.birthday,
            _that.address,
            _that.wardId,
            _that.provinceId);
      case GetProvinces() when getProvinces != null:
        return getProvinces();
      case ProvinceChanged() when provinceChanged != null:
        return provinceChanged(_that.provinceId);
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
    required TResult Function() getUserProfile,
    required TResult Function(
            File? avatar,
            String? fullname,
            String? email,
            String? phone,
            int? gender,
            DateTime? birthday,
            String? address,
            int? wardId,
            int? provinceId)
        updateInfoProfile,
    required TResult Function() getProvinces,
    required TResult Function(int provinceId) provinceChanged,
  }) {
    final _that = this;
    switch (_that) {
      case GetUserProfile():
        return getUserProfile();
      case UpdateInfoProfile():
        return updateInfoProfile(
            _that.avatar,
            _that.fullname,
            _that.email,
            _that.phone,
            _that.gender,
            _that.birthday,
            _that.address,
            _that.wardId,
            _that.provinceId);
      case GetProvinces():
        return getProvinces();
      case ProvinceChanged():
        return provinceChanged(_that.provinceId);
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
    TResult? Function()? getUserProfile,
    TResult? Function(
            File? avatar,
            String? fullname,
            String? email,
            String? phone,
            int? gender,
            DateTime? birthday,
            String? address,
            int? wardId,
            int? provinceId)?
        updateInfoProfile,
    TResult? Function()? getProvinces,
    TResult? Function(int provinceId)? provinceChanged,
  }) {
    final _that = this;
    switch (_that) {
      case GetUserProfile() when getUserProfile != null:
        return getUserProfile();
      case UpdateInfoProfile() when updateInfoProfile != null:
        return updateInfoProfile(
            _that.avatar,
            _that.fullname,
            _that.email,
            _that.phone,
            _that.gender,
            _that.birthday,
            _that.address,
            _that.wardId,
            _that.provinceId);
      case GetProvinces() when getProvinces != null:
        return getProvinces();
      case ProvinceChanged() when provinceChanged != null:
        return provinceChanged(_that.provinceId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class GetUserProfile implements ProfileEvent {
  const GetUserProfile();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetUserProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileEvent.getUserProfile()';
  }
}

/// @nodoc

class UpdateInfoProfile implements ProfileEvent {
  const UpdateInfoProfile(
      {this.avatar,
      this.fullname,
      this.email,
      this.phone,
      this.gender,
      this.birthday,
      this.address,
      this.wardId,
      this.provinceId});

  final File? avatar;
  final String? fullname;
  final String? email;
  final String? phone;
  final int? gender;
  final DateTime? birthday;
  final String? address;
  final int? wardId;
  final int? provinceId;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateInfoProfileCopyWith<UpdateInfoProfile> get copyWith =>
      _$UpdateInfoProfileCopyWithImpl<UpdateInfoProfile>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateInfoProfile &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.wardId, wardId) || other.wardId == wardId) &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, avatar, fullname, email, phone,
      gender, birthday, address, wardId, provinceId);

  @override
  String toString() {
    return 'ProfileEvent.updateInfoProfile(avatar: $avatar, fullname: $fullname, email: $email, phone: $phone, gender: $gender, birthday: $birthday, address: $address, wardId: $wardId, provinceId: $provinceId)';
  }
}

/// @nodoc
abstract mixin class $UpdateInfoProfileCopyWith<$Res>
    implements $ProfileEventCopyWith<$Res> {
  factory $UpdateInfoProfileCopyWith(
          UpdateInfoProfile value, $Res Function(UpdateInfoProfile) _then) =
      _$UpdateInfoProfileCopyWithImpl;
  @useResult
  $Res call(
      {File? avatar,
      String? fullname,
      String? email,
      String? phone,
      int? gender,
      DateTime? birthday,
      String? address,
      int? wardId,
      int? provinceId});
}

/// @nodoc
class _$UpdateInfoProfileCopyWithImpl<$Res>
    implements $UpdateInfoProfileCopyWith<$Res> {
  _$UpdateInfoProfileCopyWithImpl(this._self, this._then);

  final UpdateInfoProfile _self;
  final $Res Function(UpdateInfoProfile) _then;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? avatar = freezed,
    Object? fullname = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? gender = freezed,
    Object? birthday = freezed,
    Object? address = freezed,
    Object? wardId = freezed,
    Object? provinceId = freezed,
  }) {
    return _then(UpdateInfoProfile(
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as File?,
      fullname: freezed == fullname
          ? _self.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
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
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      wardId: freezed == wardId
          ? _self.wardId
          : wardId // ignore: cast_nullable_to_non_nullable
              as int?,
      provinceId: freezed == provinceId
          ? _self.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class GetProvinces implements ProfileEvent {
  const GetProvinces();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetProvinces);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProfileEvent.getProvinces()';
  }
}

/// @nodoc

class ProvinceChanged implements ProfileEvent {
  const ProvinceChanged({required this.provinceId});

  final int provinceId;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProvinceChangedCopyWith<ProvinceChanged> get copyWith =>
      _$ProvinceChangedCopyWithImpl<ProvinceChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProvinceChanged &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, provinceId);

  @override
  String toString() {
    return 'ProfileEvent.provinceChanged(provinceId: $provinceId)';
  }
}

/// @nodoc
abstract mixin class $ProvinceChangedCopyWith<$Res>
    implements $ProfileEventCopyWith<$Res> {
  factory $ProvinceChangedCopyWith(
          ProvinceChanged value, $Res Function(ProvinceChanged) _then) =
      _$ProvinceChangedCopyWithImpl;
  @useResult
  $Res call({int provinceId});
}

/// @nodoc
class _$ProvinceChangedCopyWithImpl<$Res>
    implements $ProvinceChangedCopyWith<$Res> {
  _$ProvinceChangedCopyWithImpl(this._self, this._then);

  final ProvinceChanged _self;
  final $Res Function(ProvinceChanged) _then;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? provinceId = null,
  }) {
    return _then(ProvinceChanged(
      provinceId: null == provinceId
          ? _self.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$ProfileState {
  bool get isLoading;
  bool get isProvincesLoading;
  bool get isWardsLoading;
  bool get isSuccess;
  Failure? get failure;
  ProfileActionType get actionType;
  UserProfileEntity? get userProfileEntity;
  List<ProvinceEntity> get provinces;
  List<WardEntity> get wards;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      _$ProfileStateCopyWithImpl<ProfileState>(
          this as ProfileState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isProvincesLoading, isProvincesLoading) ||
                other.isProvincesLoading == isProvincesLoading) &&
            (identical(other.isWardsLoading, isWardsLoading) ||
                other.isWardsLoading == isWardsLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.actionType, actionType) ||
                other.actionType == actionType) &&
            (identical(other.userProfileEntity, userProfileEntity) ||
                other.userProfileEntity == userProfileEntity) &&
            const DeepCollectionEquality().equals(other.provinces, provinces) &&
            const DeepCollectionEquality().equals(other.wards, wards));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isProvincesLoading,
      isWardsLoading,
      isSuccess,
      failure,
      actionType,
      userProfileEntity,
      const DeepCollectionEquality().hash(provinces),
      const DeepCollectionEquality().hash(wards));

  @override
  String toString() {
    return 'ProfileState(isLoading: $isLoading, isProvincesLoading: $isProvincesLoading, isWardsLoading: $isWardsLoading, isSuccess: $isSuccess, failure: $failure, actionType: $actionType, userProfileEntity: $userProfileEntity, provinces: $provinces, wards: $wards)';
  }
}

/// @nodoc
abstract mixin class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) _then) =
      _$ProfileStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      bool isProvincesLoading,
      bool isWardsLoading,
      bool isSuccess,
      Failure? failure,
      ProfileActionType actionType,
      UserProfileEntity? userProfileEntity,
      List<ProvinceEntity> provinces,
      List<WardEntity> wards});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._self, this._then);

  final ProfileState _self;
  final $Res Function(ProfileState) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isProvincesLoading = null,
    Object? isWardsLoading = null,
    Object? isSuccess = null,
    Object? failure = freezed,
    Object? actionType = null,
    Object? userProfileEntity = freezed,
    Object? provinces = null,
    Object? wards = null,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isProvincesLoading: null == isProvincesLoading
          ? _self.isProvincesLoading
          : isProvincesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isWardsLoading: null == isWardsLoading
          ? _self.isWardsLoading
          : isWardsLoading // ignore: cast_nullable_to_non_nullable
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
              as ProfileActionType,
      userProfileEntity: freezed == userProfileEntity
          ? _self.userProfileEntity
          : userProfileEntity // ignore: cast_nullable_to_non_nullable
              as UserProfileEntity?,
      provinces: null == provinces
          ? _self.provinces
          : provinces // ignore: cast_nullable_to_non_nullable
              as List<ProvinceEntity>,
      wards: null == wards
          ? _self.wards
          : wards // ignore: cast_nullable_to_non_nullable
              as List<WardEntity>,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
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
    TResult Function(_ProfileState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileState() when $default != null:
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
    TResult Function(_ProfileState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileState():
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
    TResult? Function(_ProfileState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileState() when $default != null:
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
            bool isProvincesLoading,
            bool isWardsLoading,
            bool isSuccess,
            Failure? failure,
            ProfileActionType actionType,
            UserProfileEntity? userProfileEntity,
            List<ProvinceEntity> provinces,
            List<WardEntity> wards)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileState() when $default != null:
        return $default(
            _that.isLoading,
            _that.isProvincesLoading,
            _that.isWardsLoading,
            _that.isSuccess,
            _that.failure,
            _that.actionType,
            _that.userProfileEntity,
            _that.provinces,
            _that.wards);
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
            bool isProvincesLoading,
            bool isWardsLoading,
            bool isSuccess,
            Failure? failure,
            ProfileActionType actionType,
            UserProfileEntity? userProfileEntity,
            List<ProvinceEntity> provinces,
            List<WardEntity> wards)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileState():
        return $default(
            _that.isLoading,
            _that.isProvincesLoading,
            _that.isWardsLoading,
            _that.isSuccess,
            _that.failure,
            _that.actionType,
            _that.userProfileEntity,
            _that.provinces,
            _that.wards);
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
            bool isProvincesLoading,
            bool isWardsLoading,
            bool isSuccess,
            Failure? failure,
            ProfileActionType actionType,
            UserProfileEntity? userProfileEntity,
            List<ProvinceEntity> provinces,
            List<WardEntity> wards)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileState() when $default != null:
        return $default(
            _that.isLoading,
            _that.isProvincesLoading,
            _that.isWardsLoading,
            _that.isSuccess,
            _that.failure,
            _that.actionType,
            _that.userProfileEntity,
            _that.provinces,
            _that.wards);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ProfileState implements ProfileState {
  const _ProfileState(
      {this.isLoading = false,
      this.isProvincesLoading = false,
      this.isWardsLoading = false,
      this.isSuccess = false,
      this.failure,
      this.actionType = ProfileActionType.none,
      this.userProfileEntity,
      final List<ProvinceEntity> provinces = const [],
      final List<WardEntity> wards = const []})
      : _provinces = provinces,
        _wards = wards;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isProvincesLoading;
  @override
  @JsonKey()
  final bool isWardsLoading;
  @override
  @JsonKey()
  final bool isSuccess;
  @override
  final Failure? failure;
  @override
  @JsonKey()
  final ProfileActionType actionType;
  @override
  final UserProfileEntity? userProfileEntity;
  final List<ProvinceEntity> _provinces;
  @override
  @JsonKey()
  List<ProvinceEntity> get provinces {
    if (_provinces is EqualUnmodifiableListView) return _provinces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_provinces);
  }

  final List<WardEntity> _wards;
  @override
  @JsonKey()
  List<WardEntity> get wards {
    if (_wards is EqualUnmodifiableListView) return _wards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wards);
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isProvincesLoading, isProvincesLoading) ||
                other.isProvincesLoading == isProvincesLoading) &&
            (identical(other.isWardsLoading, isWardsLoading) ||
                other.isWardsLoading == isWardsLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.actionType, actionType) ||
                other.actionType == actionType) &&
            (identical(other.userProfileEntity, userProfileEntity) ||
                other.userProfileEntity == userProfileEntity) &&
            const DeepCollectionEquality()
                .equals(other._provinces, _provinces) &&
            const DeepCollectionEquality().equals(other._wards, _wards));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isProvincesLoading,
      isWardsLoading,
      isSuccess,
      failure,
      actionType,
      userProfileEntity,
      const DeepCollectionEquality().hash(_provinces),
      const DeepCollectionEquality().hash(_wards));

  @override
  String toString() {
    return 'ProfileState(isLoading: $isLoading, isProvincesLoading: $isProvincesLoading, isWardsLoading: $isWardsLoading, isSuccess: $isSuccess, failure: $failure, actionType: $actionType, userProfileEntity: $userProfileEntity, provinces: $provinces, wards: $wards)';
  }
}

/// @nodoc
abstract mixin class _$ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(
          _ProfileState value, $Res Function(_ProfileState) _then) =
      __$ProfileStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isProvincesLoading,
      bool isWardsLoading,
      bool isSuccess,
      Failure? failure,
      ProfileActionType actionType,
      UserProfileEntity? userProfileEntity,
      List<ProvinceEntity> provinces,
      List<WardEntity> wards});
}

/// @nodoc
class __$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(this._self, this._then);

  final _ProfileState _self;
  final $Res Function(_ProfileState) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? isProvincesLoading = null,
    Object? isWardsLoading = null,
    Object? isSuccess = null,
    Object? failure = freezed,
    Object? actionType = null,
    Object? userProfileEntity = freezed,
    Object? provinces = null,
    Object? wards = null,
  }) {
    return _then(_ProfileState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isProvincesLoading: null == isProvincesLoading
          ? _self.isProvincesLoading
          : isProvincesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isWardsLoading: null == isWardsLoading
          ? _self.isWardsLoading
          : isWardsLoading // ignore: cast_nullable_to_non_nullable
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
              as ProfileActionType,
      userProfileEntity: freezed == userProfileEntity
          ? _self.userProfileEntity
          : userProfileEntity // ignore: cast_nullable_to_non_nullable
              as UserProfileEntity?,
      provinces: null == provinces
          ? _self._provinces
          : provinces // ignore: cast_nullable_to_non_nullable
              as List<ProvinceEntity>,
      wards: null == wards
          ? _self._wards
          : wards // ignore: cast_nullable_to_non_nullable
              as List<WardEntity>,
    ));
  }
}

// dart format on
