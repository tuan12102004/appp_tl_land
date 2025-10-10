// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchFilterEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SearchFilterEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SearchFilterEvent()';
  }
}

/// @nodoc
class $SearchFilterEventCopyWith<$Res> {
  $SearchFilterEventCopyWith(
      SearchFilterEvent _, $Res Function(SearchFilterEvent) __);
}

/// Adds pattern-matching-related methods to [SearchFilterEvent].
extension SearchFilterEventPatterns on SearchFilterEvent {
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
    TResult Function(_LoadInitialData value)? loadInitialData,
    TResult Function(_FilterChanged value)? filterChanged,
    TResult Function(_ProvinceChanged value)? provinceChanged,
    TResult Function(_PriceRangeChanged value)? priceRangeChanged,
    TResult Function(_PriceUnitChanged value)? priceUnitChanged,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoadInitialData() when loadInitialData != null:
        return loadInitialData(_that);
      case _FilterChanged() when filterChanged != null:
        return filterChanged(_that);
      case _ProvinceChanged() when provinceChanged != null:
        return provinceChanged(_that);
      case _PriceRangeChanged() when priceRangeChanged != null:
        return priceRangeChanged(_that);
      case _PriceUnitChanged() when priceUnitChanged != null:
        return priceUnitChanged(_that);
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
    required TResult Function(_LoadInitialData value) loadInitialData,
    required TResult Function(_FilterChanged value) filterChanged,
    required TResult Function(_ProvinceChanged value) provinceChanged,
    required TResult Function(_PriceRangeChanged value) priceRangeChanged,
    required TResult Function(_PriceUnitChanged value) priceUnitChanged,
    required TResult Function(_Reset value) reset,
  }) {
    final _that = this;
    switch (_that) {
      case _LoadInitialData():
        return loadInitialData(_that);
      case _FilterChanged():
        return filterChanged(_that);
      case _ProvinceChanged():
        return provinceChanged(_that);
      case _PriceRangeChanged():
        return priceRangeChanged(_that);
      case _PriceUnitChanged():
        return priceUnitChanged(_that);
      case _Reset():
        return reset(_that);
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
    TResult? Function(_LoadInitialData value)? loadInitialData,
    TResult? Function(_FilterChanged value)? filterChanged,
    TResult? Function(_ProvinceChanged value)? provinceChanged,
    TResult? Function(_PriceRangeChanged value)? priceRangeChanged,
    TResult? Function(_PriceUnitChanged value)? priceUnitChanged,
    TResult? Function(_Reset value)? reset,
  }) {
    final _that = this;
    switch (_that) {
      case _LoadInitialData() when loadInitialData != null:
        return loadInitialData(_that);
      case _FilterChanged() when filterChanged != null:
        return filterChanged(_that);
      case _ProvinceChanged() when provinceChanged != null:
        return provinceChanged(_that);
      case _PriceRangeChanged() when priceRangeChanged != null:
        return priceRangeChanged(_that);
      case _PriceUnitChanged() when priceUnitChanged != null:
        return priceUnitChanged(_that);
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
    TResult Function()? loadInitialData,
    TResult Function(SearchFilterParam filter)? filterChanged,
    TResult Function(int provinceId)? provinceChanged,
    TResult Function(RangeValues newRange)? priceRangeChanged,
    TResult Function(int multiplier)? priceUnitChanged,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoadInitialData() when loadInitialData != null:
        return loadInitialData();
      case _FilterChanged() when filterChanged != null:
        return filterChanged(_that.filter);
      case _ProvinceChanged() when provinceChanged != null:
        return provinceChanged(_that.provinceId);
      case _PriceRangeChanged() when priceRangeChanged != null:
        return priceRangeChanged(_that.newRange);
      case _PriceUnitChanged() when priceUnitChanged != null:
        return priceUnitChanged(_that.multiplier);
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
    required TResult Function() loadInitialData,
    required TResult Function(SearchFilterParam filter) filterChanged,
    required TResult Function(int provinceId) provinceChanged,
    required TResult Function(RangeValues newRange) priceRangeChanged,
    required TResult Function(int multiplier) priceUnitChanged,
    required TResult Function() reset,
  }) {
    final _that = this;
    switch (_that) {
      case _LoadInitialData():
        return loadInitialData();
      case _FilterChanged():
        return filterChanged(_that.filter);
      case _ProvinceChanged():
        return provinceChanged(_that.provinceId);
      case _PriceRangeChanged():
        return priceRangeChanged(_that.newRange);
      case _PriceUnitChanged():
        return priceUnitChanged(_that.multiplier);
      case _Reset():
        return reset();
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
    TResult? Function()? loadInitialData,
    TResult? Function(SearchFilterParam filter)? filterChanged,
    TResult? Function(int provinceId)? provinceChanged,
    TResult? Function(RangeValues newRange)? priceRangeChanged,
    TResult? Function(int multiplier)? priceUnitChanged,
    TResult? Function()? reset,
  }) {
    final _that = this;
    switch (_that) {
      case _LoadInitialData() when loadInitialData != null:
        return loadInitialData();
      case _FilterChanged() when filterChanged != null:
        return filterChanged(_that.filter);
      case _ProvinceChanged() when provinceChanged != null:
        return provinceChanged(_that.provinceId);
      case _PriceRangeChanged() when priceRangeChanged != null:
        return priceRangeChanged(_that.newRange);
      case _PriceUnitChanged() when priceUnitChanged != null:
        return priceUnitChanged(_that.multiplier);
      case _Reset() when reset != null:
        return reset();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LoadInitialData implements SearchFilterEvent {
  const _LoadInitialData();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadInitialData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SearchFilterEvent.loadInitialData()';
  }
}

/// @nodoc

class _FilterChanged implements SearchFilterEvent {
  const _FilterChanged(this.filter);

  final SearchFilterParam filter;

  /// Create a copy of SearchFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FilterChangedCopyWith<_FilterChanged> get copyWith =>
      __$FilterChangedCopyWithImpl<_FilterChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FilterChanged &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  @override
  String toString() {
    return 'SearchFilterEvent.filterChanged(filter: $filter)';
  }
}

/// @nodoc
abstract mixin class _$FilterChangedCopyWith<$Res>
    implements $SearchFilterEventCopyWith<$Res> {
  factory _$FilterChangedCopyWith(
          _FilterChanged value, $Res Function(_FilterChanged) _then) =
      __$FilterChangedCopyWithImpl;
  @useResult
  $Res call({SearchFilterParam filter});
}

/// @nodoc
class __$FilterChangedCopyWithImpl<$Res>
    implements _$FilterChangedCopyWith<$Res> {
  __$FilterChangedCopyWithImpl(this._self, this._then);

  final _FilterChanged _self;
  final $Res Function(_FilterChanged) _then;

  /// Create a copy of SearchFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? filter = null,
  }) {
    return _then(_FilterChanged(
      null == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as SearchFilterParam,
    ));
  }
}

/// @nodoc

class _ProvinceChanged implements SearchFilterEvent {
  const _ProvinceChanged(this.provinceId);

  final int provinceId;

  /// Create a copy of SearchFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProvinceChangedCopyWith<_ProvinceChanged> get copyWith =>
      __$ProvinceChangedCopyWithImpl<_ProvinceChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProvinceChanged &&
            (identical(other.provinceId, provinceId) ||
                other.provinceId == provinceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, provinceId);

  @override
  String toString() {
    return 'SearchFilterEvent.provinceChanged(provinceId: $provinceId)';
  }
}

/// @nodoc
abstract mixin class _$ProvinceChangedCopyWith<$Res>
    implements $SearchFilterEventCopyWith<$Res> {
  factory _$ProvinceChangedCopyWith(
          _ProvinceChanged value, $Res Function(_ProvinceChanged) _then) =
      __$ProvinceChangedCopyWithImpl;
  @useResult
  $Res call({int provinceId});
}

/// @nodoc
class __$ProvinceChangedCopyWithImpl<$Res>
    implements _$ProvinceChangedCopyWith<$Res> {
  __$ProvinceChangedCopyWithImpl(this._self, this._then);

  final _ProvinceChanged _self;
  final $Res Function(_ProvinceChanged) _then;

  /// Create a copy of SearchFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? provinceId = null,
  }) {
    return _then(_ProvinceChanged(
      null == provinceId
          ? _self.provinceId
          : provinceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _PriceRangeChanged implements SearchFilterEvent {
  const _PriceRangeChanged(this.newRange);

  final RangeValues newRange;

  /// Create a copy of SearchFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PriceRangeChangedCopyWith<_PriceRangeChanged> get copyWith =>
      __$PriceRangeChangedCopyWithImpl<_PriceRangeChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PriceRangeChanged &&
            (identical(other.newRange, newRange) ||
                other.newRange == newRange));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newRange);

  @override
  String toString() {
    return 'SearchFilterEvent.priceRangeChanged(newRange: $newRange)';
  }
}

/// @nodoc
abstract mixin class _$PriceRangeChangedCopyWith<$Res>
    implements $SearchFilterEventCopyWith<$Res> {
  factory _$PriceRangeChangedCopyWith(
          _PriceRangeChanged value, $Res Function(_PriceRangeChanged) _then) =
      __$PriceRangeChangedCopyWithImpl;
  @useResult
  $Res call({RangeValues newRange});
}

/// @nodoc
class __$PriceRangeChangedCopyWithImpl<$Res>
    implements _$PriceRangeChangedCopyWith<$Res> {
  __$PriceRangeChangedCopyWithImpl(this._self, this._then);

  final _PriceRangeChanged _self;
  final $Res Function(_PriceRangeChanged) _then;

  /// Create a copy of SearchFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? newRange = null,
  }) {
    return _then(_PriceRangeChanged(
      null == newRange
          ? _self.newRange
          : newRange // ignore: cast_nullable_to_non_nullable
              as RangeValues,
    ));
  }
}

/// @nodoc

class _PriceUnitChanged implements SearchFilterEvent {
  const _PriceUnitChanged(this.multiplier);

  final int multiplier;

  /// Create a copy of SearchFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PriceUnitChangedCopyWith<_PriceUnitChanged> get copyWith =>
      __$PriceUnitChangedCopyWithImpl<_PriceUnitChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PriceUnitChanged &&
            (identical(other.multiplier, multiplier) ||
                other.multiplier == multiplier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, multiplier);

  @override
  String toString() {
    return 'SearchFilterEvent.priceUnitChanged(multiplier: $multiplier)';
  }
}

/// @nodoc
abstract mixin class _$PriceUnitChangedCopyWith<$Res>
    implements $SearchFilterEventCopyWith<$Res> {
  factory _$PriceUnitChangedCopyWith(
          _PriceUnitChanged value, $Res Function(_PriceUnitChanged) _then) =
      __$PriceUnitChangedCopyWithImpl;
  @useResult
  $Res call({int multiplier});
}

/// @nodoc
class __$PriceUnitChangedCopyWithImpl<$Res>
    implements _$PriceUnitChangedCopyWith<$Res> {
  __$PriceUnitChangedCopyWithImpl(this._self, this._then);

  final _PriceUnitChanged _self;
  final $Res Function(_PriceUnitChanged) _then;

  /// Create a copy of SearchFilterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? multiplier = null,
  }) {
    return _then(_PriceUnitChanged(
      null == multiplier
          ? _self.multiplier
          : multiplier // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _Reset implements SearchFilterEvent {
  const _Reset();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SearchFilterEvent.reset()';
  }
}

/// @nodoc
mixin _$SearchFilterState {
  Status get status; // Object chứa toàn bộ thông tin filter
  SearchFilterParam get filter;
  List<RealEstateCategoryEntity> get categories;
  List<ProvinceEntity> get provinces;
  List<WardEntity> get wards;
  RangeValues get priceRange;
  int get priceUnitMultiplier;
  Failure? get failure;

  /// Create a copy of SearchFilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchFilterStateCopyWith<SearchFilterState> get copyWith =>
      _$SearchFilterStateCopyWithImpl<SearchFilterState>(
          this as SearchFilterState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchFilterState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality().equals(other.provinces, provinces) &&
            const DeepCollectionEquality().equals(other.wards, wards) &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange) &&
            (identical(other.priceUnitMultiplier, priceUnitMultiplier) ||
                other.priceUnitMultiplier == priceUnitMultiplier) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      filter,
      const DeepCollectionEquality().hash(categories),
      const DeepCollectionEquality().hash(provinces),
      const DeepCollectionEquality().hash(wards),
      priceRange,
      priceUnitMultiplier,
      failure);

  @override
  String toString() {
    return 'SearchFilterState(status: $status, filter: $filter, categories: $categories, provinces: $provinces, wards: $wards, priceRange: $priceRange, priceUnitMultiplier: $priceUnitMultiplier, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $SearchFilterStateCopyWith<$Res> {
  factory $SearchFilterStateCopyWith(
          SearchFilterState value, $Res Function(SearchFilterState) _then) =
      _$SearchFilterStateCopyWithImpl;
  @useResult
  $Res call(
      {Status status,
      SearchFilterParam filter,
      List<RealEstateCategoryEntity> categories,
      List<ProvinceEntity> provinces,
      List<WardEntity> wards,
      RangeValues priceRange,
      int priceUnitMultiplier,
      Failure? failure});
}

/// @nodoc
class _$SearchFilterStateCopyWithImpl<$Res>
    implements $SearchFilterStateCopyWith<$Res> {
  _$SearchFilterStateCopyWithImpl(this._self, this._then);

  final SearchFilterState _self;
  final $Res Function(SearchFilterState) _then;

  /// Create a copy of SearchFilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? filter = null,
    Object? categories = null,
    Object? provinces = null,
    Object? wards = null,
    Object? priceRange = null,
    Object? priceUnitMultiplier = null,
    Object? failure = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      filter: null == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as SearchFilterParam,
      categories: null == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<RealEstateCategoryEntity>,
      provinces: null == provinces
          ? _self.provinces
          : provinces // ignore: cast_nullable_to_non_nullable
              as List<ProvinceEntity>,
      wards: null == wards
          ? _self.wards
          : wards // ignore: cast_nullable_to_non_nullable
              as List<WardEntity>,
      priceRange: null == priceRange
          ? _self.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as RangeValues,
      priceUnitMultiplier: null == priceUnitMultiplier
          ? _self.priceUnitMultiplier
          : priceUnitMultiplier // ignore: cast_nullable_to_non_nullable
              as int,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SearchFilterState].
extension SearchFilterStatePatterns on SearchFilterState {
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
    TResult Function(_SearchFilterState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchFilterState() when $default != null:
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
    TResult Function(_SearchFilterState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchFilterState():
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
    TResult? Function(_SearchFilterState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchFilterState() when $default != null:
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
    TResult Function(
            Status status,
            SearchFilterParam filter,
            List<RealEstateCategoryEntity> categories,
            List<ProvinceEntity> provinces,
            List<WardEntity> wards,
            RangeValues priceRange,
            int priceUnitMultiplier,
            Failure? failure)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchFilterState() when $default != null:
        return $default(
            _that.status,
            _that.filter,
            _that.categories,
            _that.provinces,
            _that.wards,
            _that.priceRange,
            _that.priceUnitMultiplier,
            _that.failure);
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
    TResult Function(
            Status status,
            SearchFilterParam filter,
            List<RealEstateCategoryEntity> categories,
            List<ProvinceEntity> provinces,
            List<WardEntity> wards,
            RangeValues priceRange,
            int priceUnitMultiplier,
            Failure? failure)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchFilterState():
        return $default(
            _that.status,
            _that.filter,
            _that.categories,
            _that.provinces,
            _that.wards,
            _that.priceRange,
            _that.priceUnitMultiplier,
            _that.failure);
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
    TResult? Function(
            Status status,
            SearchFilterParam filter,
            List<RealEstateCategoryEntity> categories,
            List<ProvinceEntity> provinces,
            List<WardEntity> wards,
            RangeValues priceRange,
            int priceUnitMultiplier,
            Failure? failure)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchFilterState() when $default != null:
        return $default(
            _that.status,
            _that.filter,
            _that.categories,
            _that.provinces,
            _that.wards,
            _that.priceRange,
            _that.priceUnitMultiplier,
            _that.failure);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SearchFilterState implements SearchFilterState {
  const _SearchFilterState(
      {this.status = Status.initial,
      this.filter = const SearchFilterParam(),
      final List<RealEstateCategoryEntity> categories = const [],
      final List<ProvinceEntity> provinces = const [],
      final List<WardEntity> wards = const [],
      this.priceRange = const RangeValues(0, 999999),
      this.priceUnitMultiplier = 1000000,
      this.failure})
      : _categories = categories,
        _provinces = provinces,
        _wards = wards;

  @override
  @JsonKey()
  final Status status;
// Object chứa toàn bộ thông tin filter
  @override
  @JsonKey()
  final SearchFilterParam filter;
  final List<RealEstateCategoryEntity> _categories;
  @override
  @JsonKey()
  List<RealEstateCategoryEntity> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<ProvinceEntity> _provinces;
  @override
  @JsonKey()
  List<ProvinceEntity> get provinces {
    if (_provinces is EqualUnmodifiableListView) return _provinces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_provinces);
  }

  final List<WardEntity> _wards;
  @override
  @JsonKey()
  List<WardEntity> get wards {
    if (_wards is EqualUnmodifiableListView) return _wards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wards);
  }

  @override
  @JsonKey()
  final RangeValues priceRange;
  @override
  @JsonKey()
  final int priceUnitMultiplier;
  @override
  final Failure? failure;

  /// Create a copy of SearchFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchFilterStateCopyWith<_SearchFilterState> get copyWith =>
      __$SearchFilterStateCopyWithImpl<_SearchFilterState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchFilterState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._provinces, _provinces) &&
            const DeepCollectionEquality().equals(other._wards, _wards) &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange) &&
            (identical(other.priceUnitMultiplier, priceUnitMultiplier) ||
                other.priceUnitMultiplier == priceUnitMultiplier) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      filter,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_provinces),
      const DeepCollectionEquality().hash(_wards),
      priceRange,
      priceUnitMultiplier,
      failure);

  @override
  String toString() {
    return 'SearchFilterState(status: $status, filter: $filter, categories: $categories, provinces: $provinces, wards: $wards, priceRange: $priceRange, priceUnitMultiplier: $priceUnitMultiplier, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class _$SearchFilterStateCopyWith<$Res>
    implements $SearchFilterStateCopyWith<$Res> {
  factory _$SearchFilterStateCopyWith(
          _SearchFilterState value, $Res Function(_SearchFilterState) _then) =
      __$SearchFilterStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Status status,
      SearchFilterParam filter,
      List<RealEstateCategoryEntity> categories,
      List<ProvinceEntity> provinces,
      List<WardEntity> wards,
      RangeValues priceRange,
      int priceUnitMultiplier,
      Failure? failure});
}

/// @nodoc
class __$SearchFilterStateCopyWithImpl<$Res>
    implements _$SearchFilterStateCopyWith<$Res> {
  __$SearchFilterStateCopyWithImpl(this._self, this._then);

  final _SearchFilterState _self;
  final $Res Function(_SearchFilterState) _then;

  /// Create a copy of SearchFilterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? filter = null,
    Object? categories = null,
    Object? provinces = null,
    Object? wards = null,
    Object? priceRange = null,
    Object? priceUnitMultiplier = null,
    Object? failure = freezed,
  }) {
    return _then(_SearchFilterState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      filter: null == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as SearchFilterParam,
      categories: null == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<RealEstateCategoryEntity>,
      provinces: null == provinces
          ? _self._provinces
          : provinces // ignore: cast_nullable_to_non_nullable
              as List<ProvinceEntity>,
      wards: null == wards
          ? _self._wards
          : wards // ignore: cast_nullable_to_non_nullable
              as List<WardEntity>,
      priceRange: null == priceRange
          ? _self.priceRange
          : priceRange // ignore: cast_nullable_to_non_nullable
              as RangeValues,
      priceUnitMultiplier: null == priceUnitMultiplier
          ? _self.priceUnitMultiplier
          : priceUnitMultiplier // ignore: cast_nullable_to_non_nullable
              as int,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

// dart format on
