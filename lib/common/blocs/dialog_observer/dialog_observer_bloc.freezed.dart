// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dialog_observer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DialogObserverEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DialogObserverEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DialogObserverEvent()';
  }
}

/// @nodoc
class $DialogObserverEventCopyWith<$Res> {
  $DialogObserverEventCopyWith(
      DialogObserverEvent _, $Res Function(DialogObserverEvent) __);
}

/// Adds pattern-matching-related methods to [DialogObserverEvent].
extension DialogObserverEventPatterns on DialogObserverEvent {
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
    TResult Function(OpenTheDialog value)? openTheDialog,
    TResult Function(CloseTheDialog value)? closeTheDialog,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case OpenTheDialog() when openTheDialog != null:
        return openTheDialog(_that);
      case CloseTheDialog() when closeTheDialog != null:
        return closeTheDialog(_that);
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
    required TResult Function(OpenTheDialog value) openTheDialog,
    required TResult Function(CloseTheDialog value) closeTheDialog,
  }) {
    final _that = this;
    switch (_that) {
      case OpenTheDialog():
        return openTheDialog(_that);
      case CloseTheDialog():
        return closeTheDialog(_that);
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
    TResult? Function(OpenTheDialog value)? openTheDialog,
    TResult? Function(CloseTheDialog value)? closeTheDialog,
  }) {
    final _that = this;
    switch (_that) {
      case OpenTheDialog() when openTheDialog != null:
        return openTheDialog(_that);
      case CloseTheDialog() when closeTheDialog != null:
        return closeTheDialog(_that);
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
    TResult Function()? openTheDialog,
    TResult Function()? closeTheDialog,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case OpenTheDialog() when openTheDialog != null:
        return openTheDialog();
      case CloseTheDialog() when closeTheDialog != null:
        return closeTheDialog();
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
    required TResult Function() openTheDialog,
    required TResult Function() closeTheDialog,
  }) {
    final _that = this;
    switch (_that) {
      case OpenTheDialog():
        return openTheDialog();
      case CloseTheDialog():
        return closeTheDialog();
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
    TResult? Function()? openTheDialog,
    TResult? Function()? closeTheDialog,
  }) {
    final _that = this;
    switch (_that) {
      case OpenTheDialog() when openTheDialog != null:
        return openTheDialog();
      case CloseTheDialog() when closeTheDialog != null:
        return closeTheDialog();
      case _:
        return null;
    }
  }
}

/// @nodoc

class OpenTheDialog implements DialogObserverEvent {
  const OpenTheDialog();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OpenTheDialog);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DialogObserverEvent.openTheDialog()';
  }
}

/// @nodoc

class CloseTheDialog implements DialogObserverEvent {
  const CloseTheDialog();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CloseTheDialog);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DialogObserverEvent.closeTheDialog()';
  }
}

/// @nodoc
mixin _$DialogObserverState {
  bool get isDialogOpen;

  /// Create a copy of DialogObserverState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DialogObserverStateCopyWith<DialogObserverState> get copyWith =>
      _$DialogObserverStateCopyWithImpl<DialogObserverState>(
          this as DialogObserverState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DialogObserverState &&
            (identical(other.isDialogOpen, isDialogOpen) ||
                other.isDialogOpen == isDialogOpen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDialogOpen);

  @override
  String toString() {
    return 'DialogObserverState(isDialogOpen: $isDialogOpen)';
  }
}

/// @nodoc
abstract mixin class $DialogObserverStateCopyWith<$Res> {
  factory $DialogObserverStateCopyWith(
          DialogObserverState value, $Res Function(DialogObserverState) _then) =
      _$DialogObserverStateCopyWithImpl;
  @useResult
  $Res call({bool isDialogOpen});
}

/// @nodoc
class _$DialogObserverStateCopyWithImpl<$Res>
    implements $DialogObserverStateCopyWith<$Res> {
  _$DialogObserverStateCopyWithImpl(this._self, this._then);

  final DialogObserverState _self;
  final $Res Function(DialogObserverState) _then;

  /// Create a copy of DialogObserverState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDialogOpen = null,
  }) {
    return _then(_self.copyWith(
      isDialogOpen: null == isDialogOpen
          ? _self.isDialogOpen
          : isDialogOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [DialogObserverState].
extension DialogObserverStatePatterns on DialogObserverState {
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
    TResult Function(_DialogObserverState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DialogObserverState() when $default != null:
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
    TResult Function(_DialogObserverState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DialogObserverState():
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
    TResult? Function(_DialogObserverState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DialogObserverState() when $default != null:
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
    TResult Function(bool isDialogOpen)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DialogObserverState() when $default != null:
        return $default(_that.isDialogOpen);
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
    TResult Function(bool isDialogOpen) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DialogObserverState():
        return $default(_that.isDialogOpen);
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
    TResult? Function(bool isDialogOpen)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DialogObserverState() when $default != null:
        return $default(_that.isDialogOpen);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DialogObserverState implements DialogObserverState {
  const _DialogObserverState({this.isDialogOpen = false});

  @override
  @JsonKey()
  final bool isDialogOpen;

  /// Create a copy of DialogObserverState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DialogObserverStateCopyWith<_DialogObserverState> get copyWith =>
      __$DialogObserverStateCopyWithImpl<_DialogObserverState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DialogObserverState &&
            (identical(other.isDialogOpen, isDialogOpen) ||
                other.isDialogOpen == isDialogOpen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDialogOpen);

  @override
  String toString() {
    return 'DialogObserverState(isDialogOpen: $isDialogOpen)';
  }
}

/// @nodoc
abstract mixin class _$DialogObserverStateCopyWith<$Res>
    implements $DialogObserverStateCopyWith<$Res> {
  factory _$DialogObserverStateCopyWith(_DialogObserverState value,
          $Res Function(_DialogObserverState) _then) =
      __$DialogObserverStateCopyWithImpl;
  @override
  @useResult
  $Res call({bool isDialogOpen});
}

/// @nodoc
class __$DialogObserverStateCopyWithImpl<$Res>
    implements _$DialogObserverStateCopyWith<$Res> {
  __$DialogObserverStateCopyWithImpl(this._self, this._then);

  final _DialogObserverState _self;
  final $Res Function(_DialogObserverState) _then;

  /// Create a copy of DialogObserverState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isDialogOpen = null,
  }) {
    return _then(_DialogObserverState(
      isDialogOpen: null == isDialogOpen
          ? _self.isDialogOpen
          : isDialogOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
