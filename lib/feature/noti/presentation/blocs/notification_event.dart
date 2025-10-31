part of 'notification_bloc.dart';

@freezed 
sealed class NotificationEvent with _$NotificationEvent {
  factory NotificationEvent.getNotifications({
    @Default(10) int limit,
  }) = GetNotifications;

  factory NotificationEvent.getNotificationDetail({
    required int id,
  }) = GetNotificationDetail;

  factory NotificationEvent.deleteNotification({
    required int id,
  }) = DeleteNotification;

  factory NotificationEvent.deleteAllNotifications() = DeleteAllNotifications;

  factory NotificationEvent.readAllNotification() = ReadAllNotification;
}
