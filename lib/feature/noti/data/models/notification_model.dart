import 'package:app_tl_land_3212/feature/noti/domain/noti_domain_module.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

DateTime? _dateTimeFromJson(dynamic json) {
  if (json is String) {
    try {
      // Định dạng của API: 'dd-MM-yyyy HH:mm:ss'
      return DateFormat('dd-MM-yyyy HH:mm:ss').parse(json);
    } catch (e) {
      print('Error parsing date: $json. Error: $e');
      return null;
    }
  }
  return null;
}

@freezed
sealed class NotificationModel with _$NotificationModel {
  factory NotificationModel({
    required int id,
    String? title,
    String? message,
    int? status,
    @JsonKey(name: 'created_at', fromJson: _dateTimeFromJson)
    required DateTime? createdAt,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}

// Model -> Entity với fallback
extension NotificationModelX on NotificationModel {
  NotificationEntity get toEntity => NotificationEntity(
        id: id,
        title: title,
        message: message,
        status: status,
        createdAt: createdAt,
      );
}
