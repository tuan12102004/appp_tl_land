// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApiResModel<T> {
  int? get status;
  String? get message;
  T? get data;

  /// Create a copy of ApiResModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApiResModelCopyWith<T, ApiResModel<T>> get copyWith =>
      _$ApiResModelCopyWithImpl<T, ApiResModel<T>>(
          this as ApiResModel<T>, _$identity);

  /// Serializes this ApiResModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApiResModel<T> &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'ApiResModel<$T>(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $ApiResModelCopyWith<T, $Res> {
  factory $ApiResModelCopyWith(
          ApiResModel<T> value, $Res Function(ApiResModel<T>) _then) =
      _$ApiResModelCopyWithImpl;
  @useResult
  $Res call({int? status, String? message, T? data});
}

/// @nodoc
class _$ApiResModelCopyWithImpl<T, $Res>
    implements $ApiResModelCopyWith<T, $Res> {
  _$ApiResModelCopyWithImpl(this._self, this._then);

  final ApiResModel<T> _self;
  final $Res Function(ApiResModel<T>) _then;

  /// Create a copy of ApiResModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ApiResModel].
extension ApiResModelPatterns<T> on ApiResModel<T> {
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
    TResult Function(_ApiResModel<T> value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApiResModel() when $default != null:
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
    TResult Function(_ApiResModel<T> value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiResModel():
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
    TResult? Function(_ApiResModel<T> value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiResModel() when $default != null:
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
    TResult Function(int? status, String? message, T? data)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ApiResModel() when $default != null:
        return $default(_that.status, _that.message, _that.data);
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
    TResult Function(int? status, String? message, T? data) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiResModel():
        return $default(_that.status, _that.message, _that.data);
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
    TResult? Function(int? status, String? message, T? data)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ApiResModel() when $default != null:
        return $default(_that.status, _that.message, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _ApiResModel<T> implements ApiResModel<T> {
  _ApiResModel(
      {required this.status, required this.message, required this.data});
  factory _ApiResModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$ApiResModelFromJson(json, fromJsonT);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final T? data;

  /// Create a copy of ApiResModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ApiResModelCopyWith<T, _ApiResModel<T>> get copyWith =>
      __$ApiResModelCopyWithImpl<T, _ApiResModel<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$ApiResModelToJson<T>(this, toJsonT);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiResModel<T> &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'ApiResModel<$T>(status: $status, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$ApiResModelCopyWith<T, $Res>
    implements $ApiResModelCopyWith<T, $Res> {
  factory _$ApiResModelCopyWith(
          _ApiResModel<T> value, $Res Function(_ApiResModel<T>) _then) =
      __$ApiResModelCopyWithImpl;
  @override
  @useResult
  $Res call({int? status, String? message, T? data});
}

/// @nodoc
class __$ApiResModelCopyWithImpl<T, $Res>
    implements _$ApiResModelCopyWith<T, $Res> {
  __$ApiResModelCopyWithImpl(this._self, this._then);

  final _ApiResModel<T> _self;
  final $Res Function(_ApiResModel<T>) _then;

  /// Create a copy of ApiResModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_ApiResModel<T>(
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

// dart format on
