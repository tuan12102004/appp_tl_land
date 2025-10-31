// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
      id: (json['id'] as num?)?.toInt(),
      fullname: json['fullname'] as String?,
      phone: json['phone'] as String?,
      gender: (json['gender'] as num?)?.toInt(),
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      avatar: json['avatar'] as String?,
      status: (json['status'] as num?)?.toInt(),
      address: json['address'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      ward: json['ward'] as String?,
      province: json['province'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'phone': instance.phone,
      'gender': instance.gender,
      'birthday': instance.birthday?.toIso8601String(),
      'avatar': instance.avatar,
      'status': instance.status,
      'address': instance.address,
      'created_at': instance.createdAt?.toIso8601String(),
      'ward': instance.ward,
      'province': instance.province,
      'email': instance.email,
    };
