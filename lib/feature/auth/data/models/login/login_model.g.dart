// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => _LoginModel(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String?,
      isEmailVerified: json['is_email_verified'] as bool?,
      isSmsVerified: json['is_sms_verified'] as bool?,
      expiresIn: (json['expires_in'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      role: (json['role'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$LoginModelToJson(_LoginModel instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'is_email_verified': instance.isEmailVerified,
      'is_sms_verified': instance.isSmsVerified,
      'expires_in': instance.expiresIn,
      'status': instance.status,
      'role': instance.role,
    };
