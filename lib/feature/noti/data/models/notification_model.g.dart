// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    _NotificationModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      message: json['message'] as String?,
      status: (json['status'] as num?)?.toInt(),
      createdAt: _dateTimeFromJson(json['created_at']),
    );

Map<String, dynamic> _$NotificationModelToJson(_NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'message': instance.message,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
    };
