// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginator_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginatorEvent<T, Param> {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PaginatorEvent<T, Param>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PaginatorEvent<$T, $Param>()';
  }
}

/// @nodoc
class $PaginatorEventCopyWith<T, Param, $Res> {
  $PaginatorEventCopyWith(
      PaginatorEvent<T, Param> _, $Res Function(PaginatorEvent<T, Param>) __);
}

/// Adds pattern-matching-related methods to [PaginatorEvent].
extension PaginatorEventPatterns<T, Param> on PaginatorEvent<T, Param> {
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
    TResult Function(LoadInitial<T, Param> value)? loadInitial,
    TResult Function(LoadMore<T, Param> value)? loadMore,
    TResult Function(UpdateItems<T, Param> value)? updateItems,
    TResult Function(RemoveItem<T, Param> value)? removeItem,
    TResult Function(RestoreLastRemoved<T, Param> value)? restoreLastRemoved,
    TResult Function(RemoveAll<T, Param> value)? removeAll,
    TResult Function(RestoreAll<T, Param> value)? restoreAll,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LoadInitial() when loadInitial != null:
        return loadInitial(_that);
      case LoadMore() when loadMore != null:
        return loadMore(_that);
      case UpdateItems() when updateItems != null:
        return updateItems(_that);
      case RemoveItem() when removeItem != null:
        return removeItem(_that);
      case RestoreLastRemoved() when restoreLastRemoved != null:
        return restoreLastRemoved(_that);
      case RemoveAll() when removeAll != null:
        return removeAll(_that);
      case RestoreAll() when restoreAll != null:
        return restoreAll(_that);
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
    required TResult Function(LoadInitial<T, Param> value) loadInitial,
    required TResult Function(LoadMore<T, Param> value) loadMore,
    required TResult Function(UpdateItems<T, Param> value) updateItems,
    required TResult Function(RemoveItem<T, Param> value) removeItem,
    required TResult Function(RestoreLastRemoved<T, Param> value)
        restoreLastRemoved,
    required TResult Function(RemoveAll<T, Param> value) removeAll,
    required TResult Function(RestoreAll<T, Param> value) restoreAll,
  }) {
    final _that = this;
    switch (_that) {
      case LoadInitial():
        return loadInitial(_that);
      case LoadMore():
        return loadMore(_that);
      case UpdateItems():
        return updateItems(_that);
      case RemoveItem():
        return removeItem(_that);
      case RestoreLastRemoved():
        return restoreLastRemoved(_that);
      case RemoveAll():
        return removeAll(_that);
      case RestoreAll():
        return restoreAll(_that);
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
    TResult? Function(LoadInitial<T, Param> value)? loadInitial,
    TResult? Function(LoadMore<T, Param> value)? loadMore,
    TResult? Function(UpdateItems<T, Param> value)? updateItems,
    TResult? Function(RemoveItem<T, Param> value)? removeItem,
    TResult? Function(RestoreLastRemoved<T, Param> value)? restoreLastRemoved,
    TResult? Function(RemoveAll<T, Param> value)? removeAll,
    TResult? Function(RestoreAll<T, Param> value)? restoreAll,
  }) {
    final _that = this;
    switch (_that) {
      case LoadInitial() when loadInitial != null:
        return loadInitial(_that);
      case LoadMore() when loadMore != null:
        return loadMore(_that);
      case UpdateItems() when updateItems != null:
        return updateItems(_that);
      case RemoveItem() when removeItem != null:
        return removeItem(_that);
      case RestoreLastRemoved() when restoreLastRemoved != null:
        return restoreLastRemoved(_that);
      case RemoveAll() when removeAll != null:
        return removeAll(_that);
      case RestoreAll() when restoreAll != null:
        return restoreAll(_that);
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
    TResult Function(Usecase<List<T>, PaginatorParam<Param>> usecase, int limit,
            Param? param)?
        loadInitial,
    TResult Function(Usecase<List<T>, PaginatorParam<Param>> usecase, int limit,
            Param? param)?
        loadMore,
    TResult Function(List<T> newItems)? updateItems,
    TResult Function(bool Function(T item) where)? removeItem,
    TResult Function()? restoreLastRemoved,
    TResult Function()? removeAll,
    TResult Function()? restoreAll,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LoadInitial() when loadInitial != null:
        return loadInitial(_that.usecase, _that.limit, _that.param);
      case LoadMore() when loadMore != null:
        return loadMore(_that.usecase, _that.limit, _that.param);
      case UpdateItems() when updateItems != null:
        return updateItems(_that.newItems);
      case RemoveItem() when removeItem != null:
        return removeItem(_that.where);
      case RestoreLastRemoved() when restoreLastRemoved != null:
        return restoreLastRemoved();
      case RemoveAll() when removeAll != null:
        return removeAll();
      case RestoreAll() when restoreAll != null:
        return restoreAll();
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
    required TResult Function(Usecase<List<T>, PaginatorParam<Param>> usecase,
            int limit, Param? param)
        loadInitial,
    required TResult Function(Usecase<List<T>, PaginatorParam<Param>> usecase,
            int limit, Param? param)
        loadMore,
    required TResult Function(List<T> newItems) updateItems,
    required TResult Function(bool Function(T item) where) removeItem,
    required TResult Function() restoreLastRemoved,
    required TResult Function() removeAll,
    required TResult Function() restoreAll,
  }) {
    final _that = this;
    switch (_that) {
      case LoadInitial():
        return loadInitial(_that.usecase, _that.limit, _that.param);
      case LoadMore():
        return loadMore(_that.usecase, _that.limit, _that.param);
      case UpdateItems():
        return updateItems(_that.newItems);
      case RemoveItem():
        return removeItem(_that.where);
      case RestoreLastRemoved():
        return restoreLastRemoved();
      case RemoveAll():
        return removeAll();
      case RestoreAll():
        return restoreAll();
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
    TResult? Function(Usecase<List<T>, PaginatorParam<Param>> usecase,
            int limit, Param? param)?
        loadInitial,
    TResult? Function(Usecase<List<T>, PaginatorParam<Param>> usecase,
            int limit, Param? param)?
        loadMore,
    TResult? Function(List<T> newItems)? updateItems,
    TResult? Function(bool Function(T item) where)? removeItem,
    TResult? Function()? restoreLastRemoved,
    TResult? Function()? removeAll,
    TResult? Function()? restoreAll,
  }) {
    final _that = this;
    switch (_that) {
      case LoadInitial() when loadInitial != null:
        return loadInitial(_that.usecase, _that.limit, _that.param);
      case LoadMore() when loadMore != null:
        return loadMore(_that.usecase, _that.limit, _that.param);
      case UpdateItems() when updateItems != null:
        return updateItems(_that.newItems);
      case RemoveItem() when removeItem != null:
        return removeItem(_that.where);
      case RestoreLastRemoved() when restoreLastRemoved != null:
        return restoreLastRemoved();
      case RemoveAll() when removeAll != null:
        return removeAll();
      case RestoreAll() when restoreAll != null:
        return restoreAll();
      case _:
        return null;
    }
  }
}

/// @nodoc

class LoadInitial<T, Param> implements PaginatorEvent<T, Param> {
  const LoadInitial({required this.usecase, this.limit = 10, this.param});

  final Usecase<List<T>, PaginatorParam<Param>> usecase;
  @JsonKey()
  final int limit;
  final Param? param;

  /// Create a copy of PaginatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoadInitialCopyWith<T, Param, LoadInitial<T, Param>> get copyWith =>
      _$LoadInitialCopyWithImpl<T, Param, LoadInitial<T, Param>>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadInitial<T, Param> &&
            (identical(other.usecase, usecase) || other.usecase == usecase) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            const DeepCollectionEquality().equals(other.param, param));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, usecase, limit, const DeepCollectionEquality().hash(param));

  @override
  String toString() {
    return 'PaginatorEvent<$T, $Param>.loadInitial(usecase: $usecase, limit: $limit, param: $param)';
  }
}

/// @nodoc
abstract mixin class $LoadInitialCopyWith<T, Param, $Res>
    implements $PaginatorEventCopyWith<T, Param, $Res> {
  factory $LoadInitialCopyWith(LoadInitial<T, Param> value,
      $Res Function(LoadInitial<T, Param>) _then) = _$LoadInitialCopyWithImpl;
  @useResult
  $Res call(
      {Usecase<List<T>, PaginatorParam<Param>> usecase,
      int limit,
      Param? param});
}

/// @nodoc
class _$LoadInitialCopyWithImpl<T, Param, $Res>
    implements $LoadInitialCopyWith<T, Param, $Res> {
  _$LoadInitialCopyWithImpl(this._self, this._then);

  final LoadInitial<T, Param> _self;
  final $Res Function(LoadInitial<T, Param>) _then;

  /// Create a copy of PaginatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? usecase = null,
    Object? limit = null,
    Object? param = freezed,
  }) {
    return _then(LoadInitial<T, Param>(
      usecase: null == usecase
          ? _self.usecase
          : usecase // ignore: cast_nullable_to_non_nullable
              as Usecase<List<T>, PaginatorParam<Param>>,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      param: freezed == param
          ? _self.param
          : param // ignore: cast_nullable_to_non_nullable
              as Param?,
    ));
  }
}

/// @nodoc

class LoadMore<T, Param> implements PaginatorEvent<T, Param> {
  const LoadMore({required this.usecase, this.limit = 10, this.param});

  final Usecase<List<T>, PaginatorParam<Param>> usecase;
  @JsonKey()
  final int limit;
  final Param? param;

  /// Create a copy of PaginatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoadMoreCopyWith<T, Param, LoadMore<T, Param>> get copyWith =>
      _$LoadMoreCopyWithImpl<T, Param, LoadMore<T, Param>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadMore<T, Param> &&
            (identical(other.usecase, usecase) || other.usecase == usecase) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            const DeepCollectionEquality().equals(other.param, param));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, usecase, limit, const DeepCollectionEquality().hash(param));

  @override
  String toString() {
    return 'PaginatorEvent<$T, $Param>.loadMore(usecase: $usecase, limit: $limit, param: $param)';
  }
}

/// @nodoc
abstract mixin class $LoadMoreCopyWith<T, Param, $Res>
    implements $PaginatorEventCopyWith<T, Param, $Res> {
  factory $LoadMoreCopyWith(
          LoadMore<T, Param> value, $Res Function(LoadMore<T, Param>) _then) =
      _$LoadMoreCopyWithImpl;
  @useResult
  $Res call(
      {Usecase<List<T>, PaginatorParam<Param>> usecase,
      int limit,
      Param? param});
}

/// @nodoc
class _$LoadMoreCopyWithImpl<T, Param, $Res>
    implements $LoadMoreCopyWith<T, Param, $Res> {
  _$LoadMoreCopyWithImpl(this._self, this._then);

  final LoadMore<T, Param> _self;
  final $Res Function(LoadMore<T, Param>) _then;

  /// Create a copy of PaginatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? usecase = null,
    Object? limit = null,
    Object? param = freezed,
  }) {
    return _then(LoadMore<T, Param>(
      usecase: null == usecase
          ? _self.usecase
          : usecase // ignore: cast_nullable_to_non_nullable
              as Usecase<List<T>, PaginatorParam<Param>>,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      param: freezed == param
          ? _self.param
          : param // ignore: cast_nullable_to_non_nullable
              as Param?,
    ));
  }
}

/// @nodoc

class UpdateItems<T, Param> implements PaginatorEvent<T, Param> {
  const UpdateItems({required final List<T> newItems}) : _newItems = newItems;

  final List<T> _newItems;
  List<T> get newItems {
    if (_newItems is EqualUnmodifiableListView) return _newItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newItems);
  }

  /// Create a copy of PaginatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateItemsCopyWith<T, Param, UpdateItems<T, Param>> get copyWith =>
      _$UpdateItemsCopyWithImpl<T, Param, UpdateItems<T, Param>>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateItems<T, Param> &&
            const DeepCollectionEquality().equals(other._newItems, _newItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_newItems));

  @override
  String toString() {
    return 'PaginatorEvent<$T, $Param>.updateItems(newItems: $newItems)';
  }
}

/// @nodoc
abstract mixin class $UpdateItemsCopyWith<T, Param, $Res>
    implements $PaginatorEventCopyWith<T, Param, $Res> {
  factory $UpdateItemsCopyWith(UpdateItems<T, Param> value,
      $Res Function(UpdateItems<T, Param>) _then) = _$UpdateItemsCopyWithImpl;
  @useResult
  $Res call({List<T> newItems});
}

/// @nodoc
class _$UpdateItemsCopyWithImpl<T, Param, $Res>
    implements $UpdateItemsCopyWith<T, Param, $Res> {
  _$UpdateItemsCopyWithImpl(this._self, this._then);

  final UpdateItems<T, Param> _self;
  final $Res Function(UpdateItems<T, Param>) _then;

  /// Create a copy of PaginatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? newItems = null,
  }) {
    return _then(UpdateItems<T, Param>(
      newItems: null == newItems
          ? _self._newItems
          : newItems // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class RemoveItem<T, Param> implements PaginatorEvent<T, Param> {
  const RemoveItem({required this.where});

  final bool Function(T item) where;

  /// Create a copy of PaginatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RemoveItemCopyWith<T, Param, RemoveItem<T, Param>> get copyWith =>
      _$RemoveItemCopyWithImpl<T, Param, RemoveItem<T, Param>>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveItem<T, Param> &&
            (identical(other.where, where) || other.where == where));
  }

  @override
  int get hashCode => Object.hash(runtimeType, where);

  @override
  String toString() {
    return 'PaginatorEvent<$T, $Param>.removeItem(where: $where)';
  }
}

/// @nodoc
abstract mixin class $RemoveItemCopyWith<T, Param, $Res>
    implements $PaginatorEventCopyWith<T, Param, $Res> {
  factory $RemoveItemCopyWith(RemoveItem<T, Param> value,
      $Res Function(RemoveItem<T, Param>) _then) = _$RemoveItemCopyWithImpl;
  @useResult
  $Res call({bool Function(T item) where});
}

/// @nodoc
class _$RemoveItemCopyWithImpl<T, Param, $Res>
    implements $RemoveItemCopyWith<T, Param, $Res> {
  _$RemoveItemCopyWithImpl(this._self, this._then);

  final RemoveItem<T, Param> _self;
  final $Res Function(RemoveItem<T, Param>) _then;

  /// Create a copy of PaginatorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? where = null,
  }) {
    return _then(RemoveItem<T, Param>(
      where: null == where
          ? _self.where
          : where // ignore: cast_nullable_to_non_nullable
              as bool Function(T item),
    ));
  }
}

/// @nodoc

class RestoreLastRemoved<T, Param> implements PaginatorEvent<T, Param> {
  const RestoreLastRemoved();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RestoreLastRemoved<T, Param>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PaginatorEvent<$T, $Param>.restoreLastRemoved()';
  }
}

/// @nodoc

class RemoveAll<T, Param> implements PaginatorEvent<T, Param> {
  const RemoveAll();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RemoveAll<T, Param>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PaginatorEvent<$T, $Param>.removeAll()';
  }
}

/// @nodoc

class RestoreAll<T, Param> implements PaginatorEvent<T, Param> {
  const RestoreAll();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RestoreAll<T, Param>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PaginatorEvent<$T, $Param>.restoreAll()';
  }
}

/// @nodoc
mixin _$PaginatorState<T> {
  bool get isLastPage;
  bool get isLoading;
  bool get isLoadMore;
  bool get isLoaded;
  List<T> get items;
  Failure? get failure;
  T? get lastRemovedItem;
  List<T>? get lastRemovedItems;
  int? get lastRemovedIndex;

  /// Create a copy of PaginatorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaginatorStateCopyWith<T, PaginatorState<T>> get copyWith =>
      _$PaginatorStateCopyWithImpl<T, PaginatorState<T>>(
          this as PaginatorState<T>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaginatorState<T> &&
            (identical(other.isLastPage, isLastPage) ||
                other.isLastPage == isLastPage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadMore, isLoadMore) ||
                other.isLoadMore == isLoadMore) &&
            (identical(other.isLoaded, isLoaded) ||
                other.isLoaded == isLoaded) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality()
                .equals(other.lastRemovedItem, lastRemovedItem) &&
            const DeepCollectionEquality()
                .equals(other.lastRemovedItems, lastRemovedItems) &&
            (identical(other.lastRemovedIndex, lastRemovedIndex) ||
                other.lastRemovedIndex == lastRemovedIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLastPage,
      isLoading,
      isLoadMore,
      isLoaded,
      const DeepCollectionEquality().hash(items),
      failure,
      const DeepCollectionEquality().hash(lastRemovedItem),
      const DeepCollectionEquality().hash(lastRemovedItems),
      lastRemovedIndex);

  @override
  String toString() {
    return 'PaginatorState<$T>(isLastPage: $isLastPage, isLoading: $isLoading, isLoadMore: $isLoadMore, isLoaded: $isLoaded, items: $items, failure: $failure, lastRemovedItem: $lastRemovedItem, lastRemovedItems: $lastRemovedItems, lastRemovedIndex: $lastRemovedIndex)';
  }
}

/// @nodoc
abstract mixin class $PaginatorStateCopyWith<T, $Res> {
  factory $PaginatorStateCopyWith(
          PaginatorState<T> value, $Res Function(PaginatorState<T>) _then) =
      _$PaginatorStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLastPage,
      bool isLoading,
      bool isLoadMore,
      bool isLoaded,
      List<T> items,
      Failure? failure,
      T? lastRemovedItem,
      List<T>? lastRemovedItems,
      int? lastRemovedIndex});
}

/// @nodoc
class _$PaginatorStateCopyWithImpl<T, $Res>
    implements $PaginatorStateCopyWith<T, $Res> {
  _$PaginatorStateCopyWithImpl(this._self, this._then);

  final PaginatorState<T> _self;
  final $Res Function(PaginatorState<T>) _then;

  /// Create a copy of PaginatorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLastPage = null,
    Object? isLoading = null,
    Object? isLoadMore = null,
    Object? isLoaded = null,
    Object? items = null,
    Object? failure = freezed,
    Object? lastRemovedItem = freezed,
    Object? lastRemovedItems = freezed,
    Object? lastRemovedIndex = freezed,
  }) {
    return _then(_self.copyWith(
      isLastPage: null == isLastPage
          ? _self.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadMore: null == isLoadMore
          ? _self.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoaded: null == isLoaded
          ? _self.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      lastRemovedItem: freezed == lastRemovedItem
          ? _self.lastRemovedItem
          : lastRemovedItem // ignore: cast_nullable_to_non_nullable
              as T?,
      lastRemovedItems: freezed == lastRemovedItems
          ? _self.lastRemovedItems
          : lastRemovedItems // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      lastRemovedIndex: freezed == lastRemovedIndex
          ? _self.lastRemovedIndex
          : lastRemovedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PaginatorState].
extension PaginatorStatePatterns<T> on PaginatorState<T> {
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
    TResult Function(_PaginatorState<T> value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaginatorState() when $default != null:
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
    TResult Function(_PaginatorState<T> value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatorState():
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
    TResult? Function(_PaginatorState<T> value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatorState() when $default != null:
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
            bool isLastPage,
            bool isLoading,
            bool isLoadMore,
            bool isLoaded,
            List<T> items,
            Failure? failure,
            T? lastRemovedItem,
            List<T>? lastRemovedItems,
            int? lastRemovedIndex)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaginatorState() when $default != null:
        return $default(
            _that.isLastPage,
            _that.isLoading,
            _that.isLoadMore,
            _that.isLoaded,
            _that.items,
            _that.failure,
            _that.lastRemovedItem,
            _that.lastRemovedItems,
            _that.lastRemovedIndex);
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
            bool isLastPage,
            bool isLoading,
            bool isLoadMore,
            bool isLoaded,
            List<T> items,
            Failure? failure,
            T? lastRemovedItem,
            List<T>? lastRemovedItems,
            int? lastRemovedIndex)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatorState():
        return $default(
            _that.isLastPage,
            _that.isLoading,
            _that.isLoadMore,
            _that.isLoaded,
            _that.items,
            _that.failure,
            _that.lastRemovedItem,
            _that.lastRemovedItems,
            _that.lastRemovedIndex);
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
            bool isLastPage,
            bool isLoading,
            bool isLoadMore,
            bool isLoaded,
            List<T> items,
            Failure? failure,
            T? lastRemovedItem,
            List<T>? lastRemovedItems,
            int? lastRemovedIndex)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatorState() when $default != null:
        return $default(
            _that.isLastPage,
            _that.isLoading,
            _that.isLoadMore,
            _that.isLoaded,
            _that.items,
            _that.failure,
            _that.lastRemovedItem,
            _that.lastRemovedItems,
            _that.lastRemovedIndex);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PaginatorState<T> implements PaginatorState<T> {
  const _PaginatorState(
      {this.isLastPage = false,
      this.isLoading = false,
      this.isLoadMore = false,
      this.isLoaded = false,
      final List<T> items = const [],
      this.failure,
      this.lastRemovedItem,
      final List<T>? lastRemovedItems,
      this.lastRemovedIndex})
      : _items = items,
        _lastRemovedItems = lastRemovedItems;

  @override
  @JsonKey()
  final bool isLastPage;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadMore;
  @override
  @JsonKey()
  final bool isLoaded;
  final List<T> _items;
  @override
  @JsonKey()
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final Failure? failure;
  @override
  final T? lastRemovedItem;
  final List<T>? _lastRemovedItems;
  @override
  List<T>? get lastRemovedItems {
    final value = _lastRemovedItems;
    if (value == null) return null;
    if (_lastRemovedItems is EqualUnmodifiableListView)
      return _lastRemovedItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? lastRemovedIndex;

  /// Create a copy of PaginatorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaginatorStateCopyWith<T, _PaginatorState<T>> get copyWith =>
      __$PaginatorStateCopyWithImpl<T, _PaginatorState<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginatorState<T> &&
            (identical(other.isLastPage, isLastPage) ||
                other.isLastPage == isLastPage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadMore, isLoadMore) ||
                other.isLoadMore == isLoadMore) &&
            (identical(other.isLoaded, isLoaded) ||
                other.isLoaded == isLoaded) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            const DeepCollectionEquality()
                .equals(other.lastRemovedItem, lastRemovedItem) &&
            const DeepCollectionEquality()
                .equals(other._lastRemovedItems, _lastRemovedItems) &&
            (identical(other.lastRemovedIndex, lastRemovedIndex) ||
                other.lastRemovedIndex == lastRemovedIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLastPage,
      isLoading,
      isLoadMore,
      isLoaded,
      const DeepCollectionEquality().hash(_items),
      failure,
      const DeepCollectionEquality().hash(lastRemovedItem),
      const DeepCollectionEquality().hash(_lastRemovedItems),
      lastRemovedIndex);

  @override
  String toString() {
    return 'PaginatorState<$T>(isLastPage: $isLastPage, isLoading: $isLoading, isLoadMore: $isLoadMore, isLoaded: $isLoaded, items: $items, failure: $failure, lastRemovedItem: $lastRemovedItem, lastRemovedItems: $lastRemovedItems, lastRemovedIndex: $lastRemovedIndex)';
  }
}

/// @nodoc
abstract mixin class _$PaginatorStateCopyWith<T, $Res>
    implements $PaginatorStateCopyWith<T, $Res> {
  factory _$PaginatorStateCopyWith(
          _PaginatorState<T> value, $Res Function(_PaginatorState<T>) _then) =
      __$PaginatorStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLastPage,
      bool isLoading,
      bool isLoadMore,
      bool isLoaded,
      List<T> items,
      Failure? failure,
      T? lastRemovedItem,
      List<T>? lastRemovedItems,
      int? lastRemovedIndex});
}

/// @nodoc
class __$PaginatorStateCopyWithImpl<T, $Res>
    implements _$PaginatorStateCopyWith<T, $Res> {
  __$PaginatorStateCopyWithImpl(this._self, this._then);

  final _PaginatorState<T> _self;
  final $Res Function(_PaginatorState<T>) _then;

  /// Create a copy of PaginatorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLastPage = null,
    Object? isLoading = null,
    Object? isLoadMore = null,
    Object? isLoaded = null,
    Object? items = null,
    Object? failure = freezed,
    Object? lastRemovedItem = freezed,
    Object? lastRemovedItems = freezed,
    Object? lastRemovedIndex = freezed,
  }) {
    return _then(_PaginatorState<T>(
      isLastPage: null == isLastPage
          ? _self.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadMore: null == isLoadMore
          ? _self.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoaded: null == isLoaded
          ? _self.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      lastRemovedItem: freezed == lastRemovedItem
          ? _self.lastRemovedItem
          : lastRemovedItem // ignore: cast_nullable_to_non_nullable
              as T?,
      lastRemovedItems: freezed == lastRemovedItems
          ? _self._lastRemovedItems
          : lastRemovedItems // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      lastRemovedIndex: freezed == lastRemovedIndex
          ? _self.lastRemovedIndex
          : lastRemovedIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
