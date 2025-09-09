// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'count_down_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CountDownEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CountDownEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CountDownEvent()';
  }
}

/// @nodoc
class $CountDownEventCopyWith<$Res> {
  $CountDownEventCopyWith(CountDownEvent _, $Res Function(CountDownEvent) __);
}

/// Adds pattern-matching-related methods to [CountDownEvent].
extension CountDownEventPatterns on CountDownEvent {
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
    TResult Function(_StartCountdown value)? startCountdown,
    TResult Function(_CancelCountdown value)? cancelCountdown,
    TResult Function(_Tick value)? tick,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StartCountdown() when startCountdown != null:
        return startCountdown(_that);
      case _CancelCountdown() when cancelCountdown != null:
        return cancelCountdown(_that);
      case _Tick() when tick != null:
        return tick(_that);
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
    required TResult Function(_StartCountdown value) startCountdown,
    required TResult Function(_CancelCountdown value) cancelCountdown,
    required TResult Function(_Tick value) tick,
  }) {
    final _that = this;
    switch (_that) {
      case _StartCountdown():
        return startCountdown(_that);
      case _CancelCountdown():
        return cancelCountdown(_that);
      case _Tick():
        return tick(_that);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(_StartCountdown value)? startCountdown,
    TResult? Function(_CancelCountdown value)? cancelCountdown,
    TResult? Function(_Tick value)? tick,
  }) {
    final _that = this;
    switch (_that) {
      case _StartCountdown() when startCountdown != null:
        return startCountdown(_that);
      case _CancelCountdown() when cancelCountdown != null:
        return cancelCountdown(_that);
      case _Tick() when tick != null:
        return tick(_that);
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
    TResult Function(int second)? startCountdown,
    TResult Function()? cancelCountdown,
    TResult Function()? tick,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StartCountdown() when startCountdown != null:
        return startCountdown(_that.second);
      case _CancelCountdown() when cancelCountdown != null:
        return cancelCountdown();
      case _Tick() when tick != null:
        return tick();
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
    required TResult Function(int second) startCountdown,
    required TResult Function() cancelCountdown,
    required TResult Function() tick,
  }) {
    final _that = this;
    switch (_that) {
      case _StartCountdown():
        return startCountdown(_that.second);
      case _CancelCountdown():
        return cancelCountdown();
      case _Tick():
        return tick();
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(int second)? startCountdown,
    TResult? Function()? cancelCountdown,
    TResult? Function()? tick,
  }) {
    final _that = this;
    switch (_that) {
      case _StartCountdown() when startCountdown != null:
        return startCountdown(_that.second);
      case _CancelCountdown() when cancelCountdown != null:
        return cancelCountdown();
      case _Tick() when tick != null:
        return tick();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _StartCountdown implements CountDownEvent {
  const _StartCountdown({required this.second});

  final int second;

  /// Create a copy of CountDownEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StartCountdownCopyWith<_StartCountdown> get copyWith =>
      __$StartCountdownCopyWithImpl<_StartCountdown>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StartCountdown &&
            (identical(other.second, second) || other.second == second));
  }

  @override
  int get hashCode => Object.hash(runtimeType, second);

  @override
  String toString() {
    return 'CountDownEvent.startCountdown(second: $second)';
  }
}

/// @nodoc
abstract mixin class _$StartCountdownCopyWith<$Res>
    implements $CountDownEventCopyWith<$Res> {
  factory _$StartCountdownCopyWith(
          _StartCountdown value, $Res Function(_StartCountdown) _then) =
      __$StartCountdownCopyWithImpl;
  @useResult
  $Res call({int second});
}

/// @nodoc
class __$StartCountdownCopyWithImpl<$Res>
    implements _$StartCountdownCopyWith<$Res> {
  __$StartCountdownCopyWithImpl(this._self, this._then);

  final _StartCountdown _self;
  final $Res Function(_StartCountdown) _then;

  /// Create a copy of CountDownEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? second = null,
  }) {
    return _then(_StartCountdown(
      second: null == second
          ? _self.second
          : second // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _CancelCountdown implements CountDownEvent {
  const _CancelCountdown();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CancelCountdown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CountDownEvent.cancelCountdown()';
  }
}

/// @nodoc

class _Tick implements CountDownEvent {
  const _Tick();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Tick);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CountDownEvent.tick()';
  }
}

/// @nodoc
mixin _$CountDownState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CountDownState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CountDownState()';
  }
}

/// @nodoc
class $CountDownStateCopyWith<$Res> {
  $CountDownStateCopyWith(CountDownState _, $Res Function(CountDownState) __);
}

/// Adds pattern-matching-related methods to [CountDownState].
extension CountDownStatePatterns on CountDownState {
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
    TResult Function(Initial value)? initial,
    TResult Function(RemainingTime value)? remainingTime,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial(_that);
      case RemainingTime() when remainingTime != null:
        return remainingTime(_that);
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
    required TResult Function(Initial value) initial,
    required TResult Function(RemainingTime value) remainingTime,
  }) {
    final _that = this;
    switch (_that) {
      case Initial():
        return initial(_that);
      case RemainingTime():
        return remainingTime(_that);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(Initial value)? initial,
    TResult? Function(RemainingTime value)? remainingTime,
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial(_that);
      case RemainingTime() when remainingTime != null:
        return remainingTime(_that);
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
    TResult Function()? initial,
    TResult Function(String time, bool isActive)? remainingTime,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial();
      case RemainingTime() when remainingTime != null:
        return remainingTime(_that.time, _that.isActive);
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
    required TResult Function() initial,
    required TResult Function(String time, bool isActive) remainingTime,
  }) {
    final _that = this;
    switch (_that) {
      case Initial():
        return initial();
      case RemainingTime():
        return remainingTime(_that.time, _that.isActive);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function()? initial,
    TResult? Function(String time, bool isActive)? remainingTime,
  }) {
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial();
      case RemainingTime() when remainingTime != null:
        return remainingTime(_that.time, _that.isActive);
      case _:
        return null;
    }
  }
}

/// @nodoc

class Initial implements CountDownState {
  const Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CountDownState.initial()';
  }
}

/// @nodoc

class RemainingTime implements CountDownState {
  const RemainingTime({required this.time, required this.isActive});

  final String time;
  final bool isActive;

  /// Create a copy of CountDownState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemainingTimeCopyWith<RemainingTime> get copyWith =>
      _$RemainingTimeCopyWithImpl<RemainingTime>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemainingTime &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time, isActive);

  @override
  String toString() {
    return 'CountDownState.remainingTime(time: $time, isActive: $isActive)';
  }
}

/// @nodoc
abstract mixin class $RemainingTimeCopyWith<$Res>
    implements $CountDownStateCopyWith<$Res> {
  factory $RemainingTimeCopyWith(
          RemainingTime value, $Res Function(RemainingTime) _then) =
      _$RemainingTimeCopyWithImpl;
  @useResult
  $Res call({String time, bool isActive});
}

/// @nodoc
class _$RemainingTimeCopyWithImpl<$Res>
    implements $RemainingTimeCopyWith<$Res> {
  _$RemainingTimeCopyWithImpl(this._self, this._then);

  final RemainingTime _self;
  final $Res Function(RemainingTime) _then;

  /// Create a copy of CountDownState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? time = null,
    Object? isActive = null,
  }) {
    return _then(RemainingTime(
      time: null == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _self.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
