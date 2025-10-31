import 'package:app_tl_land_3212/feature/noti/domain/noti_domain_module.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
sealed class NotificationModel with _$NotificationModel {
  factory NotificationModel({
    required int id,
    String? title,
    String? shortMessage,
    String? message,
    String? avatar,
    String? status,
    required DateTime createdAt,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}

// Model -> Entity với fallback
extension NotificationModelX on NotificationModel {
  NotificationEntity toEntity() => NotificationEntity(
    id: id,
    title: title,
    shortMessage: shortMessage,
    message: message,
    avatar: avatar,
    status: status,
    createdAt: createdAt,
  );
}
