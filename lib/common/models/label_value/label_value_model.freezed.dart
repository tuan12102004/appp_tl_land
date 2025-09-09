// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'label_value_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LabelValueModel {
  @JsonKey(fromJson: toIntFromDynamic)
  int? get value;
  String? get label;

  /// Create a copy of LabelValueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LabelValueModelCopyWith<LabelValueModel> get copyWith =>
      _$LabelValueModelCopyWithImpl<LabelValueModel>(
          this as LabelValueModel, _$identity);

  /// Serializes this LabelValueModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LabelValueModel &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, label);

  @override
  String toString() {
    return 'LabelValueModel(value: $value, label: $label)';
  }
}

/// @nodoc
abstract mixin class $LabelValueModelCopyWith<$Res> {
  factory $LabelValueModelCopyWith(
          LabelValueModel value, $Res Function(LabelValueModel) _then) =
      _$LabelValueModelCopyWithImpl;
  @useResult
  $Res call({@JsonKey(fromJson: toIntFromDynamic) int? value, String? label});
}

/// @nodoc
class _$LabelValueModelCopyWithImpl<$Res>
    implements $LabelValueModelCopyWith<$Res> {
  _$LabelValueModelCopyWithImpl(this._self, this._then);

  final LabelValueModel _self;
  final $Res Function(LabelValueModel) _then;

  /// Create a copy of LabelValueModel
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
              as int?,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [LabelValueModel].
extension LabelValueModelPatterns on LabelValueModel {
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
    TResult Function(_LabelValueModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LabelValueModel() when $default != null:
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
    TResult Function(_LabelValueModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LabelValueModel():
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
    TResult? Function(_LabelValueModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LabelValueModel() when $default != null:
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
            @JsonKey(fromJson: toIntFromDynamic) int? value, String? label)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LabelValueModel() when $default != null:
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
    TResult Function(
            @JsonKey(fromJson: toIntFromDynamic) int? value, String? label)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LabelValueModel():
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
    TResult? Function(
            @JsonKey(fromJson: toIntFromDynamic) int? value, String? label)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LabelValueModel() when $default != null:
        return $default(_that.value, _that.label);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _LabelValueModel implements LabelValueModel {
  _LabelValueModel(
      {@JsonKey(fromJson: toIntFromDynamic) required this.value,
      required this.label});
  factory _LabelValueModel.fromJson(Map<String, dynamic> json) =>
      _$LabelValueModelFromJson(json);

  @override
  @JsonKey(fromJson: toIntFromDynamic)
  final int? value;
  @override
  final String? label;

  /// Create a copy of LabelValueModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LabelValueModelCopyWith<_LabelValueModel> get copyWith =>
      __$LabelValueModelCopyWithImpl<_LabelValueModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LabelValueModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LabelValueModel &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, label);

  @override
  String toString() {
    return 'LabelValueModel(value: $value, label: $label)';
  }
}

/// @nodoc
abstract mixin class _$LabelValueModelCopyWith<$Res>
    implements $LabelValueModelCopyWith<$Res> {
  factory _$LabelValueModelCopyWith(
          _LabelValueModel value, $Res Function(_LabelValueModel) _then) =
      __$LabelValueModelCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(fromJson: toIntFromDynamic) int? value, String? label});
}

/// @nodoc
class __$LabelValueModelCopyWithImpl<$Res>
    implements _$LabelValueModelCopyWith<$Res> {
  __$LabelValueModelCopyWithImpl(this._self, this._then);

  final _LabelValueModel _self;
  final $Res Function(_LabelValueModel) _then;

  /// Create a copy of LabelValueModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
    Object? label = freezed,
  }) {
    return _then(_LabelValueModel(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
