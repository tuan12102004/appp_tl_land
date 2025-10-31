// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_us_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AboutUsEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AboutUsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AboutUsEvent()';
  }
}

/// @nodoc
class $AboutUsEventCopyWith<$Res> {
  $AboutUsEventCopyWith(AboutUsEvent _, $Res Function(AboutUsEvent) __);
}

/// Adds pattern-matching-related methods to [AboutUsEvent].
extension AboutUsEventPatterns on AboutUsEvent {
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
    TResult Function(GetAboutUsInfo value)? getAboutUsInfo,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetAboutUsInfo() when getAboutUsInfo != null:
        return getAboutUsInfo(_that);
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
    required TResult Function(GetAboutUsInfo value) getAboutUsInfo,
  }) {
    final _that = this;
    switch (_that) {
      case GetAboutUsInfo():
        return getAboutUsInfo(_that);
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
    TResult? Function(GetAboutUsInfo value)? getAboutUsInfo,
  }) {
    final _that = this;
    switch (_that) {
      case GetAboutUsInfo() when getAboutUsInfo != null:
        return getAboutUsInfo(_that);
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
    TResult Function()? getAboutUsInfo,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetAboutUsInfo() when getAboutUsInfo != null:
        return getAboutUsInfo();
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
    required TResult Function() getAboutUsInfo,
  }) {
    final _that = this;
    switch (_that) {
      case GetAboutUsInfo():
        return getAboutUsInfo();
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
    TResult? Function()? getAboutUsInfo,
  }) {
    final _that = this;
    switch (_that) {
      case GetAboutUsInfo() when getAboutUsInfo != null:
        return getAboutUsInfo();
      case _:
        return null;
    }
  }
}

/// @nodoc

class GetAboutUsInfo implements AboutUsEvent {
  const GetAboutUsInfo();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetAboutUsInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AboutUsEvent.getAboutUsInfo()';
  }
}

/// @nodoc
mixin _$AboutUsState {
  bool get isLoading;
  AboutUsEntity? get info;
  Failure? get failure;

  /// Create a copy of AboutUsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AboutUsStateCopyWith<AboutUsState> get copyWith =>
      _$AboutUsStateCopyWithImpl<AboutUsState>(
          this as AboutUsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AboutUsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, info, failure);

  @override
  String toString() {
    return 'AboutUsState(isLoading: $isLoading, info: $info, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $AboutUsStateCopyWith<$Res> {
  factory $AboutUsStateCopyWith(
          AboutUsState value, $Res Function(AboutUsState) _then) =
      _$AboutUsStateCopyWithImpl;
  @useResult
  $Res call({bool isLoading, AboutUsEntity? info, Failure? failure});
}

/// @nodoc
class _$AboutUsStateCopyWithImpl<$Res> implements $AboutUsStateCopyWith<$Res> {
  _$AboutUsStateCopyWithImpl(this._self, this._then);

  final AboutUsState _self;
  final $Res Function(AboutUsState) _then;

  /// Create a copy of AboutUsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? info = freezed,
    Object? failure = freezed,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      info: freezed == info
          ? _self.info
          : info // ignore: cast_nullable_to_non_nullable
              as AboutUsEntity?,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AboutUsState].
extension AboutUsStatePatterns on AboutUsState {
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
    TResult Function(_AboutUsState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AboutUsState() when $default != null:
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
    TResult Function(_AboutUsState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AboutUsState():
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
    TResult? Function(_AboutUsState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AboutUsState() when $default != null:
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
    TResult Function(bool isLoading, AboutUsEntity? info, Failure? failure)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AboutUsState() when $default != null:
        return $default(_that.isLoading, _that.info, _that.failure);
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
    TResult Function(bool isLoading, AboutUsEntity? info, Failure? failure)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AboutUsState():
        return $default(_that.isLoading, _that.info, _that.failure);
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
    TResult? Function(bool isLoading, AboutUsEntity? info, Failure? failure)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AboutUsState() when $default != null:
        return $default(_that.isLoading, _that.info, _that.failure);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AboutUsState implements AboutUsState {
  const _AboutUsState({this.isLoading = false, this.info, this.failure});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final AboutUsEntity? info;
  @override
  final Failure? failure;

  /// Create a copy of AboutUsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AboutUsStateCopyWith<_AboutUsState> get copyWith =>
      __$AboutUsStateCopyWithImpl<_AboutUsState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AboutUsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, info, failure);

  @override
  String toString() {
    return 'AboutUsState(isLoading: $isLoading, info: $info, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class _$AboutUsStateCopyWith<$Res>
    implements $AboutUsStateCopyWith<$Res> {
  factory _$AboutUsStateCopyWith(
          _AboutUsState value, $Res Function(_AboutUsState) _then) =
      __$AboutUsStateCopyWithImpl;
  @override
  @useResult
  $Res call({bool isLoading, AboutUsEntity? info, Failure? failure});
}

/// @nodoc
class __$AboutUsStateCopyWithImpl<$Res>
    implements _$AboutUsStateCopyWith<$Res> {
  __$AboutUsStateCopyWithImpl(this._self, this._then);

  final _AboutUsState _self;
  final $Res Function(_AboutUsState) _then;

  /// Create a copy of AboutUsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? info = freezed,
    Object? failure = freezed,
  }) {
    return _then(_AboutUsState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      info: freezed == info
          ? _self.info
          : info // ignore: cast_nullable_to_non_nullable
              as AboutUsEntity?,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

// dart format on
