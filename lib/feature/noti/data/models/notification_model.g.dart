// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    _NotificationModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      shortMessage: json['short_message'] as String?,
      message: json['message'] as String?,
      avatar: json['avatar'] as String?,
      status: json['status'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$NotificationModelToJson(_NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'short_message': instance.shortMessage,
      'message': instance.message,
      'avatar': instance.avatar,
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
    };
