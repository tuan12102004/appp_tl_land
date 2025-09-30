// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_signup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContactSignupModel _$ContactSignupModelFromJson(Map<String, dynamic> json) =>
    _ContactSignupModel(
      id: (json['id'] as num).toInt(),
      settingKey: json['setting_key'] as String,
      settingName: json['setting_name'] as String,
      value: json['plain_value'] as String,
    );

Map<String, dynamic> _$ContactSignupModelToJson(_ContactSignupModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'setting_key': instance.settingKey,
      'setting_name': instance.settingName,
      'plain_value': instance.value,
    };
