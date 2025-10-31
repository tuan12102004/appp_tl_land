// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContactModel _$ContactModelFromJson(Map<String, dynamic> json) =>
    _ContactModel(
      id: (json['id'] as num).toInt(),
      settingKey: json['setting_key'] as String?,
      settingName: json['setting_name'] as String?,
      value: json['plain_value'] as String?,
      desc: json['desc'] as String?,
      typeInput: (json['type_input'] as num?)?.toInt(),
      typeData: json['type_data'] as String?,
      group: (json['group'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ContactModelToJson(_ContactModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'setting_key': instance.settingKey,
      'setting_name': instance.settingName,
      'plain_value': instance.value,
      'desc': instance.desc,
      'type_input': instance.typeInput,
      'type_data': instance.typeData,
      'group': instance.group,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
