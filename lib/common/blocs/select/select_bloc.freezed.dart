// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SelectEvent<T> {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SelectEvent<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SelectEvent<$T>()';
  }
}

/// @nodoc
class $SelectEventCopyWith<T, $Res> {
  $SelectEventCopyWith(SelectEvent<T> _, $Res Function(SelectEvent<T>) __);
}

/// Adds pattern-matching-related methods to [SelectEvent].
extension SelectEventPatterns<T> on SelectEvent<T> {
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
    TResult Function(_Select<T> value)? select,
    TResult Function(_Reset<T> value)? reset,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Select() when select != null:
        return select(_that);
      case _Reset() when reset != null:
        return reset(_that);
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
    required TResult Function(_Select<T> value) select,
    required TResult Function(_Reset<T> value) reset,
  }) {
    final _that = this;
    switch (_that) {
      case _Select():
        return select(_that);
      case _Reset():
        return reset(_that);
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
    TResult? Function(_Select<T> value)? select,
    TResult? Function(_Reset<T> value)? reset,
  }) {
    final _that = this;
    switch (_that) {
      case _Select() when select != null:
        return select(_that);
      case _Reset() when reset != null:
        return reset(_that);
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
    TResult Function(T value)? select,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Select() when select != null:
        return select(_that.value);
      case _Reset() when reset != null:
        return reset();
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
    required TResult Function(T value) select,
    required TResult Function() reset,
  }) {
    final _that = this;
    switch (_that) {
      case _Select():
        return select(_that.value);
      case _Reset():
        return reset();
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
    TResult? Function(T value)? select,
    TResult? Function()? reset,
  }) {
    final _that = this;
    switch (_that) {
      case _Select() when select != null:
        return select(_that.value);
      case _Reset() when reset != null:
        return reset();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Select<T> implements SelectEvent<T> {
  const _Select(this.value);

  final T value;

  /// Create a copy of SelectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SelectCopyWith<T, _Select<T>> get copyWith =>
      __$SelectCopyWithImpl<T, _Select<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Select<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'SelectEvent<$T>.select(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$SelectCopyWith<T, $Res>
    implements $SelectEventCopyWith<T, $Res> {
  factory _$SelectCopyWith(_Select<T> value, $Res Function(_Select<T>) _then) =
      __$SelectCopyWithImpl;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$SelectCopyWithImpl<T, $Res> implements _$SelectCopyWith<T, $Res> {
  __$SelectCopyWithImpl(this._self, this._then);

  final _Select<T> _self;
  final $Res Function(_Select<T>) _then;

  /// Create a copy of SelectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_Select<T>(
      freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _Reset<T> implements SelectEvent<T> {
  const _Reset();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Reset<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SelectEvent<$T>.reset()';
  }
}

/// @nodoc
mixin _$SelectState<T> {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SelectState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SelectState<$T>()';
  }
}

/// @nodoc
class $SelectStateCopyWith<T, $Res> {
  $SelectStateCopyWith(SelectState<T> _, $Res Function(SelectState<T>) __);
}

/// Adds pattern-matching-related methods to [SelectState].
extension SelectStatePatterns<T> on SelectState<T> {
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
    TResult Function(InitialSelect<T> value)? initial,
    TResult Function(Selected<T> value)? selected,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case InitialSelect() when initial != null:
        return initial(_that);
      case Selected() when selected != null:
        return selected(_that);
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
    required TResult Function(InitialSelect<T> value) initial,
    required TResult Function(Selected<T> value) selected,
  }) {
    final _that = this;
    switch (_that) {
      case InitialSelect():
        return initial(_that);
      case Selected():
        return selected(_that);
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
    TResult? Function(InitialSelect<T> value)? initial,
    TResult? Function(Selected<T> value)? selected,
  }) {
    final _that = this;
    switch (_that) {
      case InitialSelect() when initial != null:
        return initial(_that);
      case Selected() when selected != null:
        return selected(_that);
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
    TResult Function(T value)? selected,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case InitialSelect() when initial != null:
        return initial();
      case Selected() when selected != null:
        return selected(_that.value);
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
    required TResult Function(T value) selected,
  }) {
    final _that = this;
    switch (_that) {
      case InitialSelect():
        return initial();
      case Selected():
        return selected(_that.value);
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
    TResult? Function(T value)? selected,
  }) {
    final _that = this;
    switch (_that) {
      case InitialSelect() when initial != null:
        return initial();
      case Selected() when selected != null:
        return selected(_that.value);
      case _:
        return null;
    }
  }
}

/// @nodoc

class InitialSelect<T> implements SelectState<T> {
  const InitialSelect();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialSelect<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SelectState<$T>.initial()';
  }
}

/// @nodoc

class Selected<T> implements SelectState<T> {
  const Selected({required this.value});

  final T value;

  /// Create a copy of SelectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SelectedCopyWith<T, Selected<T>> get copyWith =>
      _$SelectedCopyWithImpl<T, Selected<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Selected<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'SelectState<$T>.selected(value: $value)';
  }
}

/// @nodoc
abstract mixin class $SelectedCopyWith<T, $Res>
    implements $SelectStateCopyWith<T, $Res> {
  factory $SelectedCopyWith(
          Selected<T> value, $Res Function(Selected<T>) _then) =
      _$SelectedCopyWithImpl;
  @useResult
  $Res call({T value});
}

/// @nodoc
class _$SelectedCopyWithImpl<T, $Res> implements $SelectedCopyWith<T, $Res> {
  _$SelectedCopyWithImpl(this._self, this._then);

  final Selected<T> _self;
  final $Res Function(Selected<T>) _then;

  /// Create a copy of SelectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
  }) {
    return _then(Selected<T>(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

// dart format on
