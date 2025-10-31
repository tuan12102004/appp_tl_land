// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChangePasswordEvent {
  String get oldPassword;
  String get newPassword;
  String get confirmPassword;

  /// Create a copy of ChangePasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChangePasswordEventCopyWith<ChangePasswordEvent> get copyWith =>
      _$ChangePasswordEventCopyWithImpl<ChangePasswordEvent>(
          this as ChangePasswordEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangePasswordEvent &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, oldPassword, newPassword, confirmPassword);

  @override
  String toString() {
    return 'ChangePasswordEvent(oldPassword: $oldPassword, newPassword: $newPassword, confirmPassword: $confirmPassword)';
  }
}

/// @nodoc
abstract mixin class $ChangePasswordEventCopyWith<$Res> {
  factory $ChangePasswordEventCopyWith(
          ChangePasswordEvent value, $Res Function(ChangePasswordEvent) _then) =
      _$ChangePasswordEventCopyWithImpl;
  @useResult
  $Res call({String oldPassword, String newPassword, String confirmPassword});
}

/// @nodoc
class _$ChangePasswordEventCopyWithImpl<$Res>
    implements $ChangePasswordEventCopyWith<$Res> {
  _$ChangePasswordEventCopyWithImpl(this._self, this._then);

  final ChangePasswordEvent _self;
  final $Res Function(ChangePasswordEvent) _then;

  /// Create a copy of ChangePasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
  }) {
    return _then(_self.copyWith(
      oldPassword: null == oldPassword
          ? _self.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _self.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChangePasswordEvent].
extension ChangePasswordEventPatterns on ChangePasswordEvent {
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
    TResult Function(Submit value)? submit,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Submit() when submit != null:
        return submit(_that);
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
    required TResult Function(Submit value) submit,
  }) {
    final _that = this;
    switch (_that) {
      case Submit():
        return submit(_that);
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
    TResult? Function(Submit value)? submit,
  }) {
    final _that = this;
    switch (_that) {
      case Submit() when submit != null:
        return submit(_that);
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
    TResult Function(
            String oldPassword, String newPassword, String confirmPassword)?
        submit,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case Submit() when submit != null:
        return submit(
            _that.oldPassword, _that.newPassword, _that.confirmPassword);
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
    required TResult Function(
            String oldPassword, String newPassword, String confirmPassword)
        submit,
  }) {
    final _that = this;
    switch (_that) {
      case Submit():
        return submit(
            _that.oldPassword, _that.newPassword, _that.confirmPassword);
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
    TResult? Function(
            String oldPassword, String newPassword, String confirmPassword)?
        submit,
  }) {
    final _that = this;
    switch (_that) {
      case Submit() when submit != null:
        return submit(
            _that.oldPassword, _that.newPassword, _that.confirmPassword);
      case _:
        return null;
    }
  }
}

/// @nodoc

class Submit implements ChangePasswordEvent {
  const Submit(
      {required this.oldPassword,
      required this.newPassword,
      required this.confirmPassword});

  @override
  final String oldPassword;
  @override
  final String newPassword;
  @override
  final String confirmPassword;

  /// Create a copy of ChangePasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubmitCopyWith<Submit> get copyWith =>
      _$SubmitCopyWithImpl<Submit>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Submit &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, oldPassword, newPassword, confirmPassword);

  @override
  String toString() {
    return 'ChangePasswordEvent.submit(oldPassword: $oldPassword, newPassword: $newPassword, confirmPassword: $confirmPassword)';
  }
}

/// @nodoc
abstract mixin class $SubmitCopyWith<$Res>
    implements $ChangePasswordEventCopyWith<$Res> {
  factory $SubmitCopyWith(Submit value, $Res Function(Submit) _then) =
      _$SubmitCopyWithImpl;
  @override
  @useResult
  $Res call({String oldPassword, String newPassword, String confirmPassword});
}

/// @nodoc
class _$SubmitCopyWithImpl<$Res> implements $SubmitCopyWith<$Res> {
  _$SubmitCopyWithImpl(this._self, this._then);

  final Submit _self;
  final $Res Function(Submit) _then;

  /// Create a copy of ChangePasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
  }) {
    return _then(Submit(
      oldPassword: null == oldPassword
          ? _self.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _self.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$ChangePasswordState {
  bool get isLoading;
  bool get isSuccess;
  Failure? get failure;

  /// Create a copy of ChangePasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChangePasswordStateCopyWith<ChangePasswordState> get copyWith =>
      _$ChangePasswordStateCopyWithImpl<ChangePasswordState>(
          this as ChangePasswordState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangePasswordState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isSuccess, failure);

  @override
  String toString() {
    return 'ChangePasswordState(isLoading: $isLoading, isSuccess: $isSuccess, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) _then) =
      _$ChangePasswordStateCopyWithImpl;
  @useResult
  $Res call({bool isLoading, bool isSuccess, Failure? failure});
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._self, this._then);

  final ChangePasswordState _self;
  final $Res Function(ChangePasswordState) _then;

  /// Create a copy of ChangePasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = null,
    Object? failure = freezed,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _self.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChangePasswordState].
extension ChangePasswordStatePatterns on ChangePasswordState {
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
    TResult Function(_ChangePasswordState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChangePasswordState() when $default != null:
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
    TResult Function(_ChangePasswordState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChangePasswordState():
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
    TResult? Function(_ChangePasswordState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChangePasswordState() when $default != null:
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
    TResult Function(bool isLoading, bool isSuccess, Failure? failure)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChangePasswordState() when $default != null:
        return $default(_that.isLoading, _that.isSuccess, _that.failure);
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
    TResult Function(bool isLoading, bool isSuccess, Failure? failure) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChangePasswordState():
        return $default(_that.isLoading, _that.isSuccess, _that.failure);
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
    TResult? Function(bool isLoading, bool isSuccess, Failure? failure)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChangePasswordState() when $default != null:
        return $default(_that.isLoading, _that.isSuccess, _that.failure);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ChangePasswordState implements ChangePasswordState {
  const _ChangePasswordState(
      {this.isLoading = false, this.isSuccess = false, this.failure});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSuccess;
  @override
  final Failure? failure;

  /// Create a copy of ChangePasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChangePasswordStateCopyWith<_ChangePasswordState> get copyWith =>
      __$ChangePasswordStateCopyWithImpl<_ChangePasswordState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangePasswordState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isSuccess, failure);

  @override
  String toString() {
    return 'ChangePasswordState(isLoading: $isLoading, isSuccess: $isSuccess, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class _$ChangePasswordStateCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory _$ChangePasswordStateCopyWith(_ChangePasswordState value,
          $Res Function(_ChangePasswordState) _then) =
      __$ChangePasswordStateCopyWithImpl;
  @override
  @useResult
  $Res call({bool isLoading, bool isSuccess, Failure? failure});
}

/// @nodoc
class __$ChangePasswordStateCopyWithImpl<$Res>
    implements _$ChangePasswordStateCopyWith<$Res> {
  __$ChangePasswordStateCopyWithImpl(this._self, this._then);

  final _ChangePasswordState _self;
  final $Res Function(_ChangePasswordState) _then;

  /// Create a copy of ChangePasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = null,
    Object? failure = freezed,
  }) {
    return _then(_ChangePasswordState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _self.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

// dart format on
