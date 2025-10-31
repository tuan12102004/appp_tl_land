// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotificationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NotificationEvent()';
  }
}

/// @nodoc
class $NotificationEventCopyWith<$Res> {
  $NotificationEventCopyWith(
      NotificationEvent _, $Res Function(NotificationEvent) __);
}

/// Adds pattern-matching-related methods to [NotificationEvent].
extension NotificationEventPatterns on NotificationEvent {
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
    TResult Function(GetNotifications value)? getNotifications,
    TResult Function(GetNotificationDetail value)? getNotificationDetail,
    TResult Function(DeleteNotification value)? deleteNotification,
    TResult Function(DeleteAllNotifications value)? deleteAllNotifications,
    TResult Function(ReadAllNotification value)? readAllNotification,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetNotifications() when getNotifications != null:
        return getNotifications(_that);
      case GetNotificationDetail() when getNotificationDetail != null:
        return getNotificationDetail(_that);
      case DeleteNotification() when deleteNotification != null:
        return deleteNotification(_that);
      case DeleteAllNotifications() when deleteAllNotifications != null:
        return deleteAllNotifications(_that);
      case ReadAllNotification() when readAllNotification != null:
        return readAllNotification(_that);
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
    required TResult Function(GetNotifications value) getNotifications,
    required TResult Function(GetNotificationDetail value)
        getNotificationDetail,
    required TResult Function(DeleteNotification value) deleteNotification,
    required TResult Function(DeleteAllNotifications value)
        deleteAllNotifications,
    required TResult Function(ReadAllNotification value) readAllNotification,
  }) {
    final _that = this;
    switch (_that) {
      case GetNotifications():
        return getNotifications(_that);
      case GetNotificationDetail():
        return getNotificationDetail(_that);
      case DeleteNotification():
        return deleteNotification(_that);
      case DeleteAllNotifications():
        return deleteAllNotifications(_that);
      case ReadAllNotification():
        return readAllNotification(_that);
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
    TResult? Function(GetNotifications value)? getNotifications,
    TResult? Function(GetNotificationDetail value)? getNotificationDetail,
    TResult? Function(DeleteNotification value)? deleteNotification,
    TResult? Function(DeleteAllNotifications value)? deleteAllNotifications,
    TResult? Function(ReadAllNotification value)? readAllNotification,
  }) {
    final _that = this;
    switch (_that) {
      case GetNotifications() when getNotifications != null:
        return getNotifications(_that);
      case GetNotificationDetail() when getNotificationDetail != null:
        return getNotificationDetail(_that);
      case DeleteNotification() when deleteNotification != null:
        return deleteNotification(_that);
      case DeleteAllNotifications() when deleteAllNotifications != null:
        return deleteAllNotifications(_that);
      case ReadAllNotification() when readAllNotification != null:
        return readAllNotification(_that);
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
    TResult Function(int limit)? getNotifications,
    TResult Function(int id)? getNotificationDetail,
    TResult Function(int id)? deleteNotification,
    TResult Function()? deleteAllNotifications,
    TResult Function()? readAllNotification,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case GetNotifications() when getNotifications != null:
        return getNotifications(_that.limit);
      case GetNotificationDetail() when getNotificationDetail != null:
        return getNotificationDetail(_that.id);
      case DeleteNotification() when deleteNotification != null:
        return deleteNotification(_that.id);
      case DeleteAllNotifications() when deleteAllNotifications != null:
        return deleteAllNotifications();
      case ReadAllNotification() when readAllNotification != null:
        return readAllNotification();
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
    required TResult Function(int limit) getNotifications,
    required TResult Function(int id) getNotificationDetail,
    required TResult Function(int id) deleteNotification,
    required TResult Function() deleteAllNotifications,
    required TResult Function() readAllNotification,
  }) {
    final _that = this;
    switch (_that) {
      case GetNotifications():
        return getNotifications(_that.limit);
      case GetNotificationDetail():
        return getNotificationDetail(_that.id);
      case DeleteNotification():
        return deleteNotification(_that.id);
      case DeleteAllNotifications():
        return deleteAllNotifications();
      case ReadAllNotification():
        return readAllNotification();
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
    TResult? Function(int limit)? getNotifications,
    TResult? Function(int id)? getNotificationDetail,
    TResult? Function(int id)? deleteNotification,
    TResult? Function()? deleteAllNotifications,
    TResult? Function()? readAllNotification,
  }) {
    final _that = this;
    switch (_that) {
      case GetNotifications() when getNotifications != null:
        return getNotifications(_that.limit);
      case GetNotificationDetail() when getNotificationDetail != null:
        return getNotificationDetail(_that.id);
      case DeleteNotification() when deleteNotification != null:
        return deleteNotification(_that.id);
      case DeleteAllNotifications() when deleteAllNotifications != null:
        return deleteAllNotifications();
      case ReadAllNotification() when readAllNotification != null:
        return readAllNotification();
      case _:
        return null;
    }
  }
}

/// @nodoc

class GetNotifications implements NotificationEvent {
  GetNotifications({this.limit = 10});

  @JsonKey()
  final int limit;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetNotificationsCopyWith<GetNotifications> get copyWith =>
      _$GetNotificationsCopyWithImpl<GetNotifications>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetNotifications &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit);

  @override
  String toString() {
    return 'NotificationEvent.getNotifications(limit: $limit)';
  }
}

/// @nodoc
abstract mixin class $GetNotificationsCopyWith<$Res>
    implements $NotificationEventCopyWith<$Res> {
  factory $GetNotificationsCopyWith(
          GetNotifications value, $Res Function(GetNotifications) _then) =
      _$GetNotificationsCopyWithImpl;
  @useResult
  $Res call({int limit});
}

/// @nodoc
class _$GetNotificationsCopyWithImpl<$Res>
    implements $GetNotificationsCopyWith<$Res> {
  _$GetNotificationsCopyWithImpl(this._self, this._then);

  final GetNotifications _self;
  final $Res Function(GetNotifications) _then;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? limit = null,
  }) {
    return _then(GetNotifications(
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class GetNotificationDetail implements NotificationEvent {
  GetNotificationDetail({required this.id});

  final int id;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetNotificationDetailCopyWith<GetNotificationDetail> get copyWith =>
      _$GetNotificationDetailCopyWithImpl<GetNotificationDetail>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetNotificationDetail &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'NotificationEvent.getNotificationDetail(id: $id)';
  }
}

/// @nodoc
abstract mixin class $GetNotificationDetailCopyWith<$Res>
    implements $NotificationEventCopyWith<$Res> {
  factory $GetNotificationDetailCopyWith(GetNotificationDetail value,
          $Res Function(GetNotificationDetail) _then) =
      _$GetNotificationDetailCopyWithImpl;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$GetNotificationDetailCopyWithImpl<$Res>
    implements $GetNotificationDetailCopyWith<$Res> {
  _$GetNotificationDetailCopyWithImpl(this._self, this._then);

  final GetNotificationDetail _self;
  final $Res Function(GetNotificationDetail) _then;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(GetNotificationDetail(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class DeleteNotification implements NotificationEvent {
  DeleteNotification({required this.id});

  final int id;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeleteNotificationCopyWith<DeleteNotification> get copyWith =>
      _$DeleteNotificationCopyWithImpl<DeleteNotification>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteNotification &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'NotificationEvent.deleteNotification(id: $id)';
  }
}

/// @nodoc
abstract mixin class $DeleteNotificationCopyWith<$Res>
    implements $NotificationEventCopyWith<$Res> {
  factory $DeleteNotificationCopyWith(
          DeleteNotification value, $Res Function(DeleteNotification) _then) =
      _$DeleteNotificationCopyWithImpl;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$DeleteNotificationCopyWithImpl<$Res>
    implements $DeleteNotificationCopyWith<$Res> {
  _$DeleteNotificationCopyWithImpl(this._self, this._then);

  final DeleteNotification _self;
  final $Res Function(DeleteNotification) _then;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(DeleteNotification(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class DeleteAllNotifications implements NotificationEvent {
  DeleteAllNotifications();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteAllNotifications);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NotificationEvent.deleteAllNotifications()';
  }
}

/// @nodoc

class ReadAllNotification implements NotificationEvent {
  ReadAllNotification();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReadAllNotification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NotificationEvent.readAllNotification()';
  }
}

/// @nodoc
mixin _$NotificationState {
  bool get isLoading;
  bool get isSuccess;
  List<NotificationEntity> get notifications;
  NotificationEntity? get selectedNotification;
  bool? get hasUnread;
  ApiActionType get apiAction;
  Failure? get failure;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      _$NotificationStateCopyWithImpl<NotificationState>(
          this as NotificationState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            const DeepCollectionEquality()
                .equals(other.notifications, notifications) &&
            (identical(other.selectedNotification, selectedNotification) ||
                other.selectedNotification == selectedNotification) &&
            (identical(other.hasUnread, hasUnread) ||
                other.hasUnread == hasUnread) &&
            (identical(other.apiAction, apiAction) ||
                other.apiAction == apiAction) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isSuccess,
      const DeepCollectionEquality().hash(notifications),
      selectedNotification,
      hasUnread,
      apiAction,
      failure);

  @override
  String toString() {
    return 'NotificationState(isLoading: $isLoading, isSuccess: $isSuccess, notifications: $notifications, selectedNotification: $selectedNotification, hasUnread: $hasUnread, apiAction: $apiAction, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) _then) =
      _$NotificationStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      bool isSuccess,
      List<NotificationEntity> notifications,
      NotificationEntity? selectedNotification,
      bool? hasUnread,
      ApiActionType apiAction,
      Failure? failure});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._self, this._then);

  final NotificationState _self;
  final $Res Function(NotificationState) _then;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = null,
    Object? notifications = null,
    Object? selectedNotification = freezed,
    Object? hasUnread = freezed,
    Object? apiAction = null,
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
      notifications: null == notifications
          ? _self.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationEntity>,
      selectedNotification: freezed == selectedNotification
          ? _self.selectedNotification
          : selectedNotification // ignore: cast_nullable_to_non_nullable
              as NotificationEntity?,
      hasUnread: freezed == hasUnread
          ? _self.hasUnread
          : hasUnread // ignore: cast_nullable_to_non_nullable
              as bool?,
      apiAction: null == apiAction
          ? _self.apiAction
          : apiAction // ignore: cast_nullable_to_non_nullable
              as ApiActionType,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// Adds pattern-matching-related methods to [NotificationState].
extension NotificationStatePatterns on NotificationState {
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
    TResult Function(_NotificationState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationState() when $default != null:
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
    TResult Function(_NotificationState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationState():
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
    TResult? Function(_NotificationState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationState() when $default != null:
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
            bool isLoading,
            bool isSuccess,
            List<NotificationEntity> notifications,
            NotificationEntity? selectedNotification,
            bool? hasUnread,
            ApiActionType apiAction,
            Failure? failure)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationState() when $default != null:
        return $default(
            _that.isLoading,
            _that.isSuccess,
            _that.notifications,
            _that.selectedNotification,
            _that.hasUnread,
            _that.apiAction,
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
            bool isLoading,
            bool isSuccess,
            List<NotificationEntity> notifications,
            NotificationEntity? selectedNotification,
            bool? hasUnread,
            ApiActionType apiAction,
            Failure? failure)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationState():
        return $default(
            _that.isLoading,
            _that.isSuccess,
            _that.notifications,
            _that.selectedNotification,
            _that.hasUnread,
            _that.apiAction,
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
            bool isLoading,
            bool isSuccess,
            List<NotificationEntity> notifications,
            NotificationEntity? selectedNotification,
            bool? hasUnread,
            ApiActionType apiAction,
            Failure? failure)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationState() when $default != null:
        return $default(
            _that.isLoading,
            _that.isSuccess,
            _that.notifications,
            _that.selectedNotification,
            _that.hasUnread,
            _that.apiAction,
            _that.failure);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _NotificationState implements NotificationState {
  _NotificationState(
      {this.isLoading = false,
      this.isSuccess = false,
      final List<NotificationEntity> notifications = const [],
      this.selectedNotification,
      this.hasUnread,
      this.apiAction = ApiActionType.none,
      this.failure})
      : _notifications = notifications;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSuccess;
  final List<NotificationEntity> _notifications;
  @override
  @JsonKey()
  List<NotificationEntity> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  final NotificationEntity? selectedNotification;
  @override
  final bool? hasUnread;
  @override
  @JsonKey()
  final ApiActionType apiAction;
  @override
  final Failure? failure;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationStateCopyWith<_NotificationState> get copyWith =>
      __$NotificationStateCopyWithImpl<_NotificationState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.selectedNotification, selectedNotification) ||
                other.selectedNotification == selectedNotification) &&
            (identical(other.hasUnread, hasUnread) ||
                other.hasUnread == hasUnread) &&
            (identical(other.apiAction, apiAction) ||
                other.apiAction == apiAction) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isSuccess,
      const DeepCollectionEquality().hash(_notifications),
      selectedNotification,
      hasUnread,
      apiAction,
      failure);

  @override
  String toString() {
    return 'NotificationState(isLoading: $isLoading, isSuccess: $isSuccess, notifications: $notifications, selectedNotification: $selectedNotification, hasUnread: $hasUnread, apiAction: $apiAction, failure: $failure)';
  }
}

/// @nodoc
abstract mixin class _$NotificationStateCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$NotificationStateCopyWith(
          _NotificationState value, $Res Function(_NotificationState) _then) =
      __$NotificationStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isSuccess,
      List<NotificationEntity> notifications,
      NotificationEntity? selectedNotification,
      bool? hasUnread,
      ApiActionType apiAction,
      Failure? failure});
}

/// @nodoc
class __$NotificationStateCopyWithImpl<$Res>
    implements _$NotificationStateCopyWith<$Res> {
  __$NotificationStateCopyWithImpl(this._self, this._then);

  final _NotificationState _self;
  final $Res Function(_NotificationState) _then;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? isSuccess = null,
    Object? notifications = null,
    Object? selectedNotification = freezed,
    Object? hasUnread = freezed,
    Object? apiAction = null,
    Object? failure = freezed,
  }) {
    return _then(_NotificationState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _self.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      notifications: null == notifications
          ? _self._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationEntity>,
      selectedNotification: freezed == selectedNotification
          ? _self.selectedNotification
          : selectedNotification // ignore: cast_nullable_to_non_nullable
              as NotificationEntity?,
      hasUnread: freezed == hasUnread
          ? _self.hasUnread
          : hasUnread // ignore: cast_nullable_to_non_nullable
              as bool?,
      apiAction: null == apiAction
          ? _self.apiAction
          : apiAction // ignore: cast_nullable_to_non_nullable
              as ApiActionType,
      failure: freezed == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

// dart format on
