// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) =>
    _UserProfileModel(
      id: (json['id'] as num?)?.toInt(),
      fullname: json['fullname'] as String?,
      phone: json['phone'] as String?,
      gender: (json['gender'] as num?)?.toInt(),
      birthDay: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      avatar: json['avatar'] as String?,
      status: (json['status'] as num?)?.toInt(),
      address: json['address'] as String?,
      ward: json['ward'] as String?,
      province: json['province'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$UserProfileModelToJson(_UserProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'phone': instance.phone,
      'gender': instance.gender,
      'birthday': instance.birthDay?.toIso8601String(),
      'avatar': instance.avatar,
      'status': instance.status,
      'address': instance.address,
      'ward': instance.ward,
      'province': instance.province,
      'email': instance.email,
    };
