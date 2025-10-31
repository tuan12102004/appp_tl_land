// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_real_estate_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyRealEstateEvent {
  ApprovalStatus get newStatus;

  /// Create a copy of MyRealEstateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyRealEstateEventCopyWith<MyRealEstateEvent> get copyWith =>
      _$MyRealEstateEventCopyWithImpl<MyRealEstateEvent>(
          this as MyRealEstateEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyRealEstateEvent &&
            (identical(other.newStatus, newStatus) ||
                other.newStatus == newStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newStatus);

  @override
  String toString() {
    return 'MyRealEstateEvent(newStatus: $newStatus)';
  }
}

/// @nodoc
abstract mixin class $MyRealEstateEventCopyWith<$Res> {
  factory $MyRealEstateEventCopyWith(
          MyRealEstateEvent value, $Res Function(MyRealEstateEvent) _then) =
      _$MyRealEstateEventCopyWithImpl;
  @useResult
  $Res call({ApprovalStatus newStatus});
}

/// @nodoc
class _$MyRealEstateEventCopyWithImpl<$Res>
    implements $MyRealEstateEventCopyWith<$Res> {
  _$MyRealEstateEventCopyWithImpl(this._self, this._then);

  final MyRealEstateEvent _self;
  final $Res Function(MyRealEstateEvent) _then;

  /// Create a copy of MyRealEstateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newStatus = null,
  }) {
    return _then(_self.copyWith(
      newStatus: null == newStatus
          ? _self.newStatus
          : newStatus // ignore: cast_nullable_to_non_nullable
              as ApprovalStatus,
    ));
  }
}

/// Adds pattern-matching-related methods to [MyRealEstateEvent].
extension MyRealEstateEventPatterns on MyRealEstateEvent {
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
    TResult Function(_StatusChanged value)? statusChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StatusChanged() when statusChanged != null:
        return statusChanged(_that);
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
    required TResult Function(_StatusChanged value) statusChanged,
  }) {
    final _that = this;
    switch (_that) {
      case _StatusChanged():
        return statusChanged(_that);
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
    TResult? Function(_StatusChanged value)? statusChanged,
  }) {
    final _that = this;
    switch (_that) {
      case _StatusChanged() when statusChanged != null:
        return statusChanged(_that);
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
    TResult Function(ApprovalStatus newStatus)? statusChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StatusChanged() when statusChanged != null:
        return statusChanged(_that.newStatus);
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
    required TResult Function(ApprovalStatus newStatus) statusChanged,
  }) {
    final _that = this;
    switch (_that) {
      case _StatusChanged():
        return statusChanged(_that.newStatus);
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
    TResult? Function(ApprovalStatus newStatus)? statusChanged,
  }) {
    final _that = this;
    switch (_that) {
      case _StatusChanged() when statusChanged != null:
        return statusChanged(_that.newStatus);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _StatusChanged implements MyRealEstateEvent {
  const _StatusChanged(this.newStatus);

  @override
  final ApprovalStatus newStatus;

  /// Create a copy of MyRealEstateEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StatusChangedCopyWith<_StatusChanged> get copyWith =>
      __$StatusChangedCopyWithImpl<_StatusChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StatusChanged &&
            (identical(other.newStatus, newStatus) ||
                other.newStatus == newStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newStatus);

  @override
  String toString() {
    return 'MyRealEstateEvent.statusChanged(newStatus: $newStatus)';
  }
}

/// @nodoc
abstract mixin class _$StatusChangedCopyWith<$Res>
    implements $MyRealEstateEventCopyWith<$Res> {
  factory _$StatusChangedCopyWith(
          _StatusChanged value, $Res Function(_StatusChanged) _then) =
      __$StatusChangedCopyWithImpl;
  @override
  @useResult
  $Res call({ApprovalStatus newStatus});
}

/// @nodoc
class __$StatusChangedCopyWithImpl<$Res>
    implements _$StatusChangedCopyWith<$Res> {
  __$StatusChangedCopyWithImpl(this._self, this._then);

  final _StatusChanged _self;
  final $Res Function(_StatusChanged) _then;

  /// Create a copy of MyRealEstateEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? newStatus = null,
  }) {
    return _then(_StatusChanged(
      null == newStatus
          ? _self.newStatus
          : newStatus // ignore: cast_nullable_to_non_nullable
              as ApprovalStatus,
    ));
  }
}

/// @nodoc
mixin _$MyRealEstateState {
  ApprovalStatus get selectedStatus;

  /// Create a copy of MyRealEstateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyRealEstateStateCopyWith<MyRealEstateState> get copyWith =>
      _$MyRealEstateStateCopyWithImpl<MyRealEstateState>(
          this as MyRealEstateState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyRealEstateState &&
            (identical(other.selectedStatus, selectedStatus) ||
                other.selectedStatus == selectedStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedStatus);

  @override
  String toString() {
    return 'MyRealEstateState(selectedStatus: $selectedStatus)';
  }
}

/// @nodoc
abstract mixin class $MyRealEstateStateCopyWith<$Res> {
  factory $MyRealEstateStateCopyWith(
          MyRealEstateState value, $Res Function(MyRealEstateState) _then) =
      _$MyRealEstateStateCopyWithImpl;
  @useResult
  $Res call({ApprovalStatus selectedStatus});
}

/// @nodoc
class _$MyRealEstateStateCopyWithImpl<$Res>
    implements $MyRealEstateStateCopyWith<$Res> {
  _$MyRealEstateStateCopyWithImpl(this._self, this._then);

  final MyRealEstateState _self;
  final $Res Function(MyRealEstateState) _then;

  /// Create a copy of MyRealEstateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedStatus = null,
  }) {
    return _then(_self.copyWith(
      selectedStatus: null == selectedStatus
          ? _self.selectedStatus
          : selectedStatus // ignore: cast_nullable_to_non_nullable
              as ApprovalStatus,
    ));
  }
}

/// Adds pattern-matching-related methods to [MyRealEstateState].
extension MyRealEstateStatePatterns on MyRealEstateState {
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
    TResult Function(_MyRealEstateState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MyRealEstateState() when $default != null:
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
    TResult Function(_MyRealEstateState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyRealEstateState():
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
    TResult? Function(_MyRealEstateState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyRealEstateState() when $default != null:
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
    TResult Function(ApprovalStatus selectedStatus)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MyRealEstateState() when $default != null:
        return $default(_that.selectedStatus);
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
    TResult Function(ApprovalStatus selectedStatus) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyRealEstateState():
        return $default(_that.selectedStatus);
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
    TResult? Function(ApprovalStatus selectedStatus)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MyRealEstateState() when $default != null:
        return $default(_that.selectedStatus);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MyRealEstateState implements MyRealEstateState {
  const _MyRealEstateState({this.selectedStatus = ApprovalStatus.pending});

  @override
  @JsonKey()
  final ApprovalStatus selectedStatus;

  /// Create a copy of MyRealEstateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MyRealEstateStateCopyWith<_MyRealEstateState> get copyWith =>
      __$MyRealEstateStateCopyWithImpl<_MyRealEstateState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyRealEstateState &&
            (identical(other.selectedStatus, selectedStatus) ||
                other.selectedStatus == selectedStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedStatus);

  @override
  String toString() {
    return 'MyRealEstateState(selectedStatus: $selectedStatus)';
  }
}

/// @nodoc
abstract mixin class _$MyRealEstateStateCopyWith<$Res>
    implements $MyRealEstateStateCopyWith<$Res> {
  factory _$MyRealEstateStateCopyWith(
          _MyRealEstateState value, $Res Function(_MyRealEstateState) _then) =
      __$MyRealEstateStateCopyWithImpl;
  @override
  @useResult
  $Res call({ApprovalStatus selectedStatus});
}

/// @nodoc
class __$MyRealEstateStateCopyWithImpl<$Res>
    implements _$MyRealEstateStateCopyWith<$Res> {
  __$MyRealEstateStateCopyWithImpl(this._self, this._then);

  final _MyRealEstateState _self;
  final $Res Function(_MyRealEstateState) _then;

  /// Create a copy of MyRealEstateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedStatus = null,
  }) {
    return _then(_MyRealEstateState(
      selectedStatus: null == selectedStatus
          ? _self.selectedStatus
          : selectedStatus // ignore: cast_nullable_to_non_nullable
              as ApprovalStatus,
    ));
  }
}

// dart format on
