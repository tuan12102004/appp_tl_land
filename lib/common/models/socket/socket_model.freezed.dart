// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocketModel<T> {
  String? get title;
  String? get message;
  String? get userType; // Employee or Customer
  String? get type;
  List<int>? get arrTargetId;
  T? get data;

  /// Create a copy of SocketModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SocketModelCopyWith<T, SocketModel<T>> get copyWith =>
      _$SocketModelCopyWithImpl<T, SocketModel<T>>(
          this as SocketModel<T>, _$identity);

  /// Serializes this SocketModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SocketModel<T> &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other.arrTargetId, arrTargetId) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      message,
      userType,
      type,
      const DeepCollectionEquality().hash(arrTargetId),
      const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'SocketModel<$T>(title: $title, message: $message, userType: $userType, type: $type, arrTargetId: $arrTargetId, data: $data)';
  }
}

/// @nodoc
abstract mixin class $SocketModelCopyWith<T, $Res> {
  factory $SocketModelCopyWith(
          SocketModel<T> value, $Res Function(SocketModel<T>) _then) =
      _$SocketModelCopyWithImpl;
  @useResult
  $Res call(
      {String? title,
      String? message,
      String? userType,
      String? type,
      List<int>? arrTargetId,
      T? data});
}

/// @nodoc
class _$SocketModelCopyWithImpl<T, $Res>
    implements $SocketModelCopyWith<T, $Res> {
  _$SocketModelCopyWithImpl(this._self, this._then);

  final SocketModel<T> _self;
  final $Res Function(SocketModel<T>) _then;

  /// Create a copy of SocketModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? message = freezed,
    Object? userType = freezed,
    Object? type = freezed,
    Object? arrTargetId = freezed,
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: freezed == userType
          ? _self.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      arrTargetId: freezed == arrTargetId
          ? _self.arrTargetId
          : arrTargetId // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SocketModel].
extension SocketModelPatterns<T> on SocketModel<T> {
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
    TResult Function(_SocketModel<T> value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SocketModel() when $default != null:
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
    TResult Function(_SocketModel<T> value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocketModel():
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
    TResult? Function(_SocketModel<T> value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocketModel() when $default != null:
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
    TResult Function(String? title, String? message, String? userType,
            String? type, List<int>? arrTargetId, T? data)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SocketModel() when $default != null:
        return $default(_that.title, _that.message, _that.userType, _that.type,
            _that.arrTargetId, _that.data);
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
    TResult Function(String? title, String? message, String? userType,
            String? type, List<int>? arrTargetId, T? data)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocketModel():
        return $default(_that.title, _that.message, _that.userType, _that.type,
            _that.arrTargetId, _that.data);
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
    TResult? Function(String? title, String? message, String? userType,
            String? type, List<int>? arrTargetId, T? data)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocketModel() when $default != null:
        return $default(_that.title, _that.message, _that.userType, _that.type,
            _that.arrTargetId, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _SocketModel<T> implements SocketModel<T> {
  _SocketModel(
      {required this.title,
      required this.message,
      required this.userType,
      required this.type,
      required final List<int>? arrTargetId,
      required this.data})
      : _arrTargetId = arrTargetId;
  factory _SocketModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$SocketModelFromJson(json, fromJsonT);

  @override
  final String? title;
  @override
  final String? message;
  @override
  final String? userType;
// Employee or Customer
  @override
  final String? type;
  final List<int>? _arrTargetId;
  @override
  List<int>? get arrTargetId {
    final value = _arrTargetId;
    if (value == null) return null;
    if (_arrTargetId is EqualUnmodifiableListView) return _arrTargetId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final T? data;

  /// Create a copy of SocketModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SocketModelCopyWith<T, _SocketModel<T>> get copyWith =>
      __$SocketModelCopyWithImpl<T, _SocketModel<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$SocketModelToJson<T>(this, toJsonT);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocketModel<T> &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._arrTargetId, _arrTargetId) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      message,
      userType,
      type,
      const DeepCollectionEquality().hash(_arrTargetId),
      const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'SocketModel<$T>(title: $title, message: $message, userType: $userType, type: $type, arrTargetId: $arrTargetId, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$SocketModelCopyWith<T, $Res>
    implements $SocketModelCopyWith<T, $Res> {
  factory _$SocketModelCopyWith(
          _SocketModel<T> value, $Res Function(_SocketModel<T>) _then) =
      __$SocketModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? title,
      String? message,
      String? userType,
      String? type,
      List<int>? arrTargetId,
      T? data});
}

/// @nodoc
class __$SocketModelCopyWithImpl<T, $Res>
    implements _$SocketModelCopyWith<T, $Res> {
  __$SocketModelCopyWithImpl(this._self, this._then);

  final _SocketModel<T> _self;
  final $Res Function(_SocketModel<T>) _then;

  /// Create a copy of SocketModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = freezed,
    Object? message = freezed,
    Object? userType = freezed,
    Object? type = freezed,
    Object? arrTargetId = freezed,
    Object? data = freezed,
  }) {
    return _then(_SocketModel<T>(
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: freezed == userType
          ? _self.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      arrTargetId: freezed == arrTargetId
          ? _self._arrTargetId
          : arrTargetId // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

// dart format on
