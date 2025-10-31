part of 'notification_bloc.dart';

@freezed
sealed class NotificationState with _$NotificationState{
  factory NotificationState({
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default([]) List<NotificationEntity> notifications,
    NotificationEntity? selectedNotification, 
    bool? hasUnread,
    @Default(ApiActionType.none) ApiActionType apiAction,
    Failure? failure,
  }) = _NotificationState;
} 