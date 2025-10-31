// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'policy_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PolicyEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PolicyEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PolicyEvent()';
  }
}

/// @nodoc
class $PolicyEventCopyWith<$Res> {
  $PolicyEventCopyWith(PolicyEvent _, $Res Function(PolicyEvent) __);
}

/// Adds pattern-matching-related methods to [PolicyEvent].
extension PolicyEventPatterns on PolicyEvent {
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
    TResult Function(GetPolicy value)? getPolicy,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetPolicy() when getPolicy != null:
        return getPolicy(_that);
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
    required TResult Function(GetPolicy value) getPolicy,
  }) {
    final _that = this;
    switch (_that) {
      case GetPolicy():
        return getPolicy(_that);
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
    TResult? Function(GetPolicy value)? getPolicy,
  }) {
    final _that = this;
    switch (_that) {
      case GetPolicy() when getPolicy != null:
        return getPolicy(_that);
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
    TResult Function()? getPolicy,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetPolicy() when getPolicy != null:
        return getPolicy();
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
    required TResult Function() getPolicy,
  }) {
    final _that = this;
    switch (_that) {
      case GetPolicy():
        return getPolicy();
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
    TResult? Function()? getPolicy,
  }) {
    final _that = this;
    switch (_that) {
      case GetPolicy() when getPolicy != null:
        return getPolicy();
      case _:
        return null;
    }
  }
}

/// @nodoc

class GetPolicy implements PolicyEvent {
  const GetPolicy();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetPolicy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PolicyEvent.getPolicy()';
  }
}

/// @nodoc
mixin _$PolicyState {
  bool get isLoading;
  PolicyEntity? get policy;
  Failure? get failure;

  /// Create a copy of PolicyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PolicyStateCopyWith<PolicyState> get copyWith =>
      _$PolicyStateCopyWithImpl<PolicyState>(this as PolicyState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PolicyState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.policy, policy) || other.policy == policy) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, policy, failure);

  @override
  String toString() {
    return 'PolicyState(isLoading: $isLoading, policy: $policy, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $PolicyStateCopyWith<$Res> {
  factory $PolicyStateCopyWith(
          PolicyState value, $Res Function(PolicyState) _then) =
      _$PolicyStateCopyWithImpl;
  @useResult
  $Res call({bool isLoading, PolicyEntity? policy, Failure? failure});
}

/// @nodoc
class _$PolicyStateCopyWithImpl<$Res> implements $PolicyStateCopyWith<$Res> {
  _$PolicyStateCopyWithImpl(this._self, this._then);

  final PolicyState _self;
  final $Res Function(PolicyState) _then;

  /// Create a copy of PolicyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? policy = freezed,
    Object? failure = freezed,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      policy: freezed == policy
          ? _self.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as PolicyEntity?,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PolicyState].
extension PolicyStatePatterns on PolicyState {
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
    TResult Function(_PolicyState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PolicyState() when $default != null:
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
    TResult Function(_PolicyState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PolicyState():
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
    TResult? Function(_PolicyState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PolicyState() when $default != null:
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
    TResult Function(bool isLoading, PolicyEntity? policy, Failure? failure)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PolicyState() when $default != null:
        return $default(_that.isLoading, _that.policy, _that.failure);
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
    TResult Function(bool isLoading, PolicyEntity? policy, Failure? failure)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PolicyState():
        return $default(_that.isLoading, _that.policy, _that.failure);
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
    TResult? Function(bool isLoading, PolicyEntity? policy, Failure? failure)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PolicyState() when $default != null:
        return $default(_that.isLoading, _that.policy, _that.failure);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PolicyState implements PolicyState {
  const _PolicyState({this.isLoading = false, this.policy, this.failure});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final PolicyEntity? policy;
  @override
  final Failure? failure;

  /// Create a copy of PolicyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PolicyStateCopyWith<_PolicyState> get copyWith =>
      __$PolicyStateCopyWithImpl<_PolicyState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PolicyState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.policy, policy) || other.policy == policy) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, policy, failure);

  @override
  String toString() {
    return 'PolicyState(isLoading: $isLoading, policy: $policy, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class _$PolicyStateCopyWith<$Res>
    implements $PolicyStateCopyWith<$Res> {
  factory _$PolicyStateCopyWith(
          _PolicyState value, $Res Function(_PolicyState) _then) =
      __$PolicyStateCopyWithImpl;
  @override
  @useResult
  $Res call({bool isLoading, PolicyEntity? policy, Failure? failure});
}

/// @nodoc
class __$PolicyStateCopyWithImpl<$Res> implements _$PolicyStateCopyWith<$Res> {
  __$PolicyStateCopyWithImpl(this._self, this._then);

  final _PolicyState _self;
  final $Res Function(_PolicyState) _then;

  /// Create a copy of PolicyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? policy = freezed,
    Object? failure = freezed,
  }) {
    return _then(_PolicyState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      policy: freezed == policy
          ? _self.policy
          : policy // ignore: cast_nullable_to_non_nullable
              as PolicyEntity?,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

// dart format on
