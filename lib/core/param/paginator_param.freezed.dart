// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginator_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginatorParam<T> {
  int get limit;
  int get page;
  String? get keyword;
  T? get param;

  /// Create a copy of PaginatorParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaginatorParamCopyWith<T, PaginatorParam<T>> get copyWith =>
      _$PaginatorParamCopyWithImpl<T, PaginatorParam<T>>(
          this as PaginatorParam<T>, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaginatorParam<T> &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            const DeepCollectionEquality().equals(other.param, param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, page, keyword,
      const DeepCollectionEquality().hash(param));

  @override
  String toString() {
    return 'PaginatorParam<$T>(limit: $limit, page: $page, keyword: $keyword, param: $param)';
  }
}

/// @nodoc
abstract mixin class $PaginatorParamCopyWith<T, $Res> {
  factory $PaginatorParamCopyWith(
          PaginatorParam<T> value, $Res Function(PaginatorParam<T>) _then) =
      _$PaginatorParamCopyWithImpl;
  @useResult
  $Res call({int limit, int page, String? keyword, T? param});
}

/// @nodoc
class _$PaginatorParamCopyWithImpl<T, $Res>
    implements $PaginatorParamCopyWith<T, $Res> {
  _$PaginatorParamCopyWithImpl(this._self, this._then);

  final PaginatorParam<T> _self;
  final $Res Function(PaginatorParam<T>) _then;

  /// Create a copy of PaginatorParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? page = null,
    Object? keyword = freezed,
    Object? param = freezed,
  }) {
    return _then(_self.copyWith(
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      keyword: freezed == keyword
          ? _self.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      param: freezed == param
          ? _self.param
          : param // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PaginatorParam].
extension PaginatorParamPatterns<T> on PaginatorParam<T> {
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
    TResult Function(_PaginatorParam<T> value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaginatorParam() when $default != null:
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
    TResult Function(_PaginatorParam<T> value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatorParam():
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
    TResult? Function(_PaginatorParam<T> value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatorParam() when $default != null:
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
    TResult Function(int limit, int page, String? keyword, T? param)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PaginatorParam() when $default != null:
        return $default(_that.limit, _that.page, _that.keyword, _that.param);
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
    TResult Function(int limit, int page, String? keyword, T? param) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatorParam():
        return $default(_that.limit, _that.page, _that.keyword, _that.param);
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
    TResult? Function(int limit, int page, String? keyword, T? param)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PaginatorParam() when $default != null:
        return $default(_that.limit, _that.page, _that.keyword, _that.param);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PaginatorParam<T> implements PaginatorParam<T> {
  _PaginatorParam(
      {required this.limit, required this.page, this.keyword, this.param});

  @override
  final int limit;
  @override
  final int page;
  @override
  final String? keyword;
  @override
  final T? param;

  /// Create a copy of PaginatorParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaginatorParamCopyWith<T, _PaginatorParam<T>> get copyWith =>
      __$PaginatorParamCopyWithImpl<T, _PaginatorParam<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginatorParam<T> &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            const DeepCollectionEquality().equals(other.param, param));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, page, keyword,
      const DeepCollectionEquality().hash(param));

  @override
  String toString() {
    return 'PaginatorParam<$T>(limit: $limit, page: $page, keyword: $keyword, param: $param)';
  }
}

/// @nodoc
abstract mixin class _$PaginatorParamCopyWith<T, $Res>
    implements $PaginatorParamCopyWith<T, $Res> {
  factory _$PaginatorParamCopyWith(
          _PaginatorParam<T> value, $Res Function(_PaginatorParam<T>) _then) =
      __$PaginatorParamCopyWithImpl;
  @override
  @useResult
  $Res call({int limit, int page, String? keyword, T? param});
}

/// @nodoc
class __$PaginatorParamCopyWithImpl<T, $Res>
    implements _$PaginatorParamCopyWith<T, $Res> {
  __$PaginatorParamCopyWithImpl(this._self, this._then);

  final _PaginatorParam<T> _self;
  final $Res Function(_PaginatorParam<T>) _then;

  /// Create a copy of PaginatorParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? limit = null,
    Object? page = null,
    Object? keyword = freezed,
    Object? param = freezed,
  }) {
    return _then(_PaginatorParam<T>(
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      keyword: freezed == keyword
          ? _self.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      param: freezed == param
          ? _self.param
          : param // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

// dart format on
