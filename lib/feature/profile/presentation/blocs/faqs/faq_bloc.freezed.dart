// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FaqEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FaqEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FaqEvent()';
  }
}

/// @nodoc
class $FaqEventCopyWith<$Res> {
  $FaqEventCopyWith(FaqEvent _, $Res Function(FaqEvent) __);
}

/// Adds pattern-matching-related methods to [FaqEvent].
extension FaqEventPatterns on FaqEvent {
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
    TResult Function(GetFaqDetail value)? getFaqDetail,
    TResult Function(GetFaqs value)? getFaqs,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetFaqDetail() when getFaqDetail != null:
        return getFaqDetail(_that);
      case GetFaqs() when getFaqs != null:
        return getFaqs(_that);
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
    required TResult Function(GetFaqDetail value) getFaqDetail,
    required TResult Function(GetFaqs value) getFaqs,
  }) {
    final _that = this;
    switch (_that) {
      case GetFaqDetail():
        return getFaqDetail(_that);
      case GetFaqs():
        return getFaqs(_that);
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
    TResult? Function(GetFaqDetail value)? getFaqDetail,
    TResult? Function(GetFaqs value)? getFaqs,
  }) {
    final _that = this;
    switch (_that) {
      case GetFaqDetail() when getFaqDetail != null:
        return getFaqDetail(_that);
      case GetFaqs() when getFaqs != null:
        return getFaqs(_that);
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
    TResult Function(int id)? getFaqDetail,
    TResult Function()? getFaqs,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetFaqDetail() when getFaqDetail != null:
        return getFaqDetail(_that.id);
      case GetFaqs() when getFaqs != null:
        return getFaqs();
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
    required TResult Function(int id) getFaqDetail,
    required TResult Function() getFaqs,
  }) {
    final _that = this;
    switch (_that) {
      case GetFaqDetail():
        return getFaqDetail(_that.id);
      case GetFaqs():
        return getFaqs();
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
    TResult? Function(int id)? getFaqDetail,
    TResult? Function()? getFaqs,
  }) {
    final _that = this;
    switch (_that) {
      case GetFaqDetail() when getFaqDetail != null:
        return getFaqDetail(_that.id);
      case GetFaqs() when getFaqs != null:
        return getFaqs();
      case _:
        return null;
    }
  }
}

/// @nodoc

class GetFaqDetail implements FaqEvent {
  const GetFaqDetail({required this.id});

  final int id;

  /// Create a copy of FaqEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetFaqDetailCopyWith<GetFaqDetail> get copyWith =>
      _$GetFaqDetailCopyWithImpl<GetFaqDetail>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetFaqDetail &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'FaqEvent.getFaqDetail(id: $id)';
  }
}

/// @nodoc
abstract mixin class $GetFaqDetailCopyWith<$Res>
    implements $FaqEventCopyWith<$Res> {
  factory $GetFaqDetailCopyWith(
          GetFaqDetail value, $Res Function(GetFaqDetail) _then) =
      _$GetFaqDetailCopyWithImpl;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$GetFaqDetailCopyWithImpl<$Res> implements $GetFaqDetailCopyWith<$Res> {
  _$GetFaqDetailCopyWithImpl(this._self, this._then);

  final GetFaqDetail _self;
  final $Res Function(GetFaqDetail) _then;

  /// Create a copy of FaqEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(GetFaqDetail(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class GetFaqs implements FaqEvent {
  const GetFaqs();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetFaqs);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FaqEvent.getFaqs()';
  }
}

/// @nodoc
mixin _$FaqState {
  bool get isLoading;
  FaqEntity? get faq;
  List<FaqEntity>? get faqs;
  Failure? get failure;

  /// Create a copy of FaqState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FaqStateCopyWith<FaqState> get copyWith =>
      _$FaqStateCopyWithImpl<FaqState>(this as FaqState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FaqState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.faq, faq) || other.faq == faq) &&
            const DeepCollectionEquality().equals(other.faqs, faqs) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, faq,
      const DeepCollectionEquality().hash(faqs), failure);

  @override
  String toString() {
    return 'FaqState(isLoading: $isLoading, faq: $faq, faqs: $faqs, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $FaqStateCopyWith<$Res> {
  factory $FaqStateCopyWith(FaqState value, $Res Function(FaqState) _then) =
      _$FaqStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      FaqEntity? faq,
      List<FaqEntity>? faqs,
      Failure? failure});
}

/// @nodoc
class _$FaqStateCopyWithImpl<$Res> implements $FaqStateCopyWith<$Res> {
  _$FaqStateCopyWithImpl(this._self, this._then);

  final FaqState _self;
  final $Res Function(FaqState) _then;

  /// Create a copy of FaqState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? faq = freezed,
    Object? faqs = freezed,
    Object? failure = freezed,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      faq: freezed == faq
          ? _self.faq
          : faq // ignore: cast_nullable_to_non_nullable
              as FaqEntity?,
      faqs: freezed == faqs
          ? _self.faqs
          : faqs // ignore: cast_nullable_to_non_nullable
              as List<FaqEntity>?,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// Adds pattern-matching-related methods to [FaqState].
extension FaqStatePatterns on FaqState {
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
    TResult Function(_FaqState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FaqState() when $default != null:
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
    TResult Function(_FaqState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaqState():
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
    TResult? Function(_FaqState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaqState() when $default != null:
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
    TResult Function(bool isLoading, FaqEntity? faq, List<FaqEntity>? faqs,
            Failure? failure)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FaqState() when $default != null:
        return $default(_that.isLoading, _that.faq, _that.faqs, _that.failure);
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
    TResult Function(bool isLoading, FaqEntity? faq, List<FaqEntity>? faqs,
            Failure? failure)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaqState():
        return $default(_that.isLoading, _that.faq, _that.faqs, _that.failure);
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
    TResult? Function(bool isLoading, FaqEntity? faq, List<FaqEntity>? faqs,
            Failure? failure)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FaqState() when $default != null:
        return $default(_that.isLoading, _that.faq, _that.faqs, _that.failure);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FaqState implements FaqState {
  const _FaqState(
      {this.isLoading = false,
      this.faq,
      final List<FaqEntity>? faqs = const [],
      this.failure})
      : _faqs = faqs;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final FaqEntity? faq;
  final List<FaqEntity>? _faqs;
  @override
  @JsonKey()
  List<FaqEntity>? get faqs {
    final value = _faqs;
    if (value == null) return null;
    if (_faqs is EqualUnmodifiableListView) return _faqs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Failure? failure;

  /// Create a copy of FaqState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FaqStateCopyWith<_FaqState> get copyWith =>
      __$FaqStateCopyWithImpl<_FaqState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FaqState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.faq, faq) || other.faq == faq) &&
            const DeepCollectionEquality().equals(other._faqs, _faqs) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, faq,
      const DeepCollectionEquality().hash(_faqs), failure);

  @override
  String toString() {
    return 'FaqState(isLoading: $isLoading, faq: $faq, faqs: $faqs, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class _$FaqStateCopyWith<$Res>
    implements $FaqStateCopyWith<$Res> {
  factory _$FaqStateCopyWith(_FaqState value, $Res Function(_FaqState) _then) =
      __$FaqStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      FaqEntity? faq,
      List<FaqEntity>? faqs,
      Failure? failure});
}

/// @nodoc
class __$FaqStateCopyWithImpl<$Res> implements _$FaqStateCopyWith<$Res> {
  __$FaqStateCopyWithImpl(this._self, this._then);

  final _FaqState _self;
  final $Res Function(_FaqState) _then;

  /// Create a copy of FaqState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? faq = freezed,
    Object? faqs = freezed,
    Object? failure = freezed,
  }) {
    return _then(_FaqState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      faq: freezed == faq
          ? _self.faq
          : faq // ignore: cast_nullable_to_non_nullable
              as FaqEntity?,
      faqs: freezed == faqs
          ? _self._faqs
          : faqs // ignore: cast_nullable_to_non_nullable
              as List<FaqEntity>?,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

// dart format on
