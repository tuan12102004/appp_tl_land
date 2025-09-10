// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
      id: (json['id'] as num).toInt(),
      fullname: json['fullname'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      address: json['address'] as String?,
      avatar: json['avatar'] as String?,
      birthday: DateTime.parse(json['birthday'] as String),
      gender: (json['gender'] as num?)?.toInt(),
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'avatar': instance.avatar,
      'birthday': instance.birthday.toIso8601String(),
      'gender': instance.gender,
      'status': instance.status,
    };
