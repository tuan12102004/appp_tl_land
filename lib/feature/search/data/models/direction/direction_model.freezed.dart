// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DirectionModel {
  String? get value;
  String? get label;

  /// Create a copy of DirectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DirectionModelCopyWith<DirectionModel> get copyWith =>
      _$DirectionModelCopyWithImpl<DirectionModel>(
          this as DirectionModel, _$identity);

  /// Serializes this DirectionModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DirectionModel &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, label);

  @override
  String toString() {
    return 'DirectionModel(value: $value, label: $label)';
  }
}

/// @nodoc
abstract mixin class $DirectionModelCopyWith<$Res> {
  factory $DirectionModelCopyWith(
          DirectionModel value, $Res Function(DirectionModel) _then) =
      _$DirectionModelCopyWithImpl;
  @useResult
  $Res call({String? value, String? label});
}

/// @nodoc
class _$DirectionModelCopyWithImpl<$Res>
    implements $DirectionModelCopyWith<$Res> {
  _$DirectionModelCopyWithImpl(this._self, this._then);

  final DirectionModel _self;
  final $Res Function(DirectionModel) _then;

  /// Create a copy of DirectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? label = freezed,
  }) {
    return _then(_self.copyWith(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DirectionModel].
extension DirectionModelPatterns on DirectionModel {
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
    TResult Function(_DirectionModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DirectionModel() when $default != null:
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
    TResult Function(_DirectionModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DirectionModel():
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
    TResult? Function(_DirectionModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DirectionModel() when $default != null:
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
    TResult Function(String? value, String? label)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DirectionModel() when $default != null:
        return $default(_that.value, _that.label);
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
    TResult Function(String? value, String? label) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DirectionModel():
        return $default(_that.value, _that.label);
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
    TResult? Function(String? value, String? label)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DirectionModel() when $default != null:
        return $default(_that.value, _that.label);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DirectionModel implements DirectionModel {
  _DirectionModel({required this.value, required this.label});
  factory _DirectionModel.fromJson(Map<String, dynamic> json) =>
      _$DirectionModelFromJson(json);

  @override
  final String? value;
  @override
  final String? label;

  /// Create a copy of DirectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DirectionModelCopyWith<_DirectionModel> get copyWith =>
      __$DirectionModelCopyWithImpl<_DirectionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DirectionModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DirectionModel &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, label);

  @override
  String toString() {
    return 'DirectionModel(value: $value, label: $label)';
  }
}

/// @nodoc
abstract mixin class _$DirectionModelCopyWith<$Res>
    implements $DirectionModelCopyWith<$Res> {
  factory _$DirectionModelCopyWith(
          _DirectionModel value, $Res Function(_DirectionModel) _then) =
      __$DirectionModelCopyWithImpl;
  @override
  @useResult
  $Res call({String? value, String? label});
}

/// @nodoc
class __$DirectionModelCopyWithImpl<$Res>
    implements _$DirectionModelCopyWith<$Res> {
  __$DirectionModelCopyWithImpl(this._self, this._then);

  final _DirectionModel _self;
  final $Res Function(_DirectionModel) _then;

  /// Create a copy of DirectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
    Object? label = freezed,
  }) {
    return _then(_DirectionModel(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
