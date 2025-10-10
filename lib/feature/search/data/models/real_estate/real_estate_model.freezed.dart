// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'real_estate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RealEstateModel {
  int get id;
  String? get name;
  List<String>? get gallery;
  List<RealEstateCategoryModel>? get categories;
  DirectionModel? get direction;
  String? get address;
  double? get price;
  String? get status;
  DateTime? get createdAt;

  /// Create a copy of RealEstateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RealEstateModelCopyWith<RealEstateModel> get copyWith =>
      _$RealEstateModelCopyWithImpl<RealEstateModel>(
          this as RealEstateModel, _$identity);

  /// Serializes this RealEstateModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RealEstateModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.gallery, gallery) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(gallery),
      const DeepCollectionEquality().hash(categories),
      direction,
      address,
      price,
      status,
      createdAt);

  @override
  String toString() {
    return 'RealEstateModel(id: $id, name: $name, gallery: $gallery, categories: $categories, direction: $direction, address: $address, price: $price, status: $status, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $RealEstateModelCopyWith<$Res> {
  factory $RealEstateModelCopyWith(
          RealEstateModel value, $Res Function(RealEstateModel) _then) =
      _$RealEstateModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String? name,
      List<String>? gallery,
      List<RealEstateCategoryModel>? categories,
      DirectionModel? direction,
      String? address,
      double? price,
      String? status,
      DateTime? createdAt});

  $DirectionModelCopyWith<$Res>? get direction;
}

/// @nodoc
class _$RealEstateModelCopyWithImpl<$Res>
    implements $RealEstateModelCopyWith<$Res> {
  _$RealEstateModelCopyWithImpl(this._self, this._then);

  final RealEstateModel _self;
  final $Res Function(RealEstateModel) _then;

  /// Create a copy of RealEstateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? gallery = freezed,
    Object? categories = freezed,
    Object? direction = freezed,
    Object? address = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      gallery: freezed == gallery
          ? _self.gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      categories: freezed == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<RealEstateCategoryModel>?,
      direction: freezed == direction
          ? _self.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as DirectionModel?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of RealEstateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DirectionModelCopyWith<$Res>? get direction {
    if (_self.direction == null) {
      return null;
    }

    return $DirectionModelCopyWith<$Res>(_self.direction!, (value) {
      return _then(_self.copyWith(direction: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RealEstateModel].
extension RealEstateModelPatterns on RealEstateModel {
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
    TResult Function(_RealEstateModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RealEstateModel() when $default != null:
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
    TResult Function(_RealEstateModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RealEstateModel():
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
    TResult? Function(_RealEstateModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RealEstateModel() when $default != null:
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
            String? name,
            List<String>? gallery,
            List<RealEstateCategoryModel>? categories,
            DirectionModel? direction,
            String? address,
            double? price,
            String? status,
            DateTime? createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RealEstateModel() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.gallery,
            _that.categories,
            _that.direction,
            _that.address,
            _that.price,
            _that.status,
            _that.createdAt);
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
            String? name,
            List<String>? gallery,
            List<RealEstateCategoryModel>? categories,
            DirectionModel? direction,
            String? address,
            double? price,
            String? status,
            DateTime? createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RealEstateModel():
        return $default(
            _that.id,
            _that.name,
            _that.gallery,
            _that.categories,
            _that.direction,
            _that.address,
            _that.price,
            _that.status,
            _that.createdAt);
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
            String? name,
            List<String>? gallery,
            List<RealEstateCategoryModel>? categories,
            DirectionModel? direction,
            String? address,
            double? price,
            String? status,
            DateTime? createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RealEstateModel() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.gallery,
            _that.categories,
            _that.direction,
            _that.address,
            _that.price,
            _that.status,
            _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RealEstateModel implements RealEstateModel {
  _RealEstateModel(
      {required this.id,
      required this.name,
      required final List<String>? gallery,
      required final List<RealEstateCategoryModel>? categories,
      required this.direction,
      required this.address,
      required this.price,
      required this.status,
      required this.createdAt})
      : _gallery = gallery,
        _categories = categories;
  factory _RealEstateModel.fromJson(Map<String, dynamic> json) =>
      _$RealEstateModelFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  final List<String>? _gallery;
  @override
  List<String>? get gallery {
    final value = _gallery;
    if (value == null) return null;
    if (_gallery is EqualUnmodifiableListView) return _gallery;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RealEstateCategoryModel>? _categories;
  @override
  List<RealEstateCategoryModel>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DirectionModel? direction;
  @override
  final String? address;
  @override
  final double? price;
  @override
  final String? status;
  @override
  final DateTime? createdAt;

  /// Create a copy of RealEstateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RealEstateModelCopyWith<_RealEstateModel> get copyWith =>
      __$RealEstateModelCopyWithImpl<_RealEstateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RealEstateModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RealEstateModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._gallery, _gallery) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_gallery),
      const DeepCollectionEquality().hash(_categories),
      direction,
      address,
      price,
      status,
      createdAt);

  @override
  String toString() {
    return 'RealEstateModel(id: $id, name: $name, gallery: $gallery, categories: $categories, direction: $direction, address: $address, price: $price, status: $status, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$RealEstateModelCopyWith<$Res>
    implements $RealEstateModelCopyWith<$Res> {
  factory _$RealEstateModelCopyWith(
          _RealEstateModel value, $Res Function(_RealEstateModel) _then) =
      __$RealEstateModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      List<String>? gallery,
      List<RealEstateCategoryModel>? categories,
      DirectionModel? direction,
      String? address,
      double? price,
      String? status,
      DateTime? createdAt});

  @override
  $DirectionModelCopyWith<$Res>? get direction;
}

/// @nodoc
class __$RealEstateModelCopyWithImpl<$Res>
    implements _$RealEstateModelCopyWith<$Res> {
  __$RealEstateModelCopyWithImpl(this._self, this._then);

  final _RealEstateModel _self;
  final $Res Function(_RealEstateModel) _then;

  /// Create a copy of RealEstateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? gallery = freezed,
    Object? categories = freezed,
    Object? direction = freezed,
    Object? address = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_RealEstateModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      gallery: freezed == gallery
          ? _self._gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      categories: freezed == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<RealEstateCategoryModel>?,
      direction: freezed == direction
          ? _self.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as DirectionModel?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of RealEstateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DirectionModelCopyWith<$Res>? get direction {
    if (_self.direction == null) {
      return null;
    }

    return $DirectionModelCopyWith<$Res>(_self.direction!, (value) {
      return _then(_self.copyWith(direction: value));
    });
  }
}

// dart format on
