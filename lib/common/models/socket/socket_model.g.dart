// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocketModel<T> _$SocketModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _SocketModel<T>(
      title: json['title'] as String?,
      message: json['message'] as String?,
      userType: json['userType'] as String?,
      type: json['type'] as String?,
      arrTargetId: (json['arrTargetId'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
    );

Map<String, dynamic> _$SocketModelToJson<T>(
  _SocketModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'title': instance.title,
      'message': instance.message,
      'userType': instance.userType,
      'type': instance.type,
      'arrTargetId': instance.arrTargetId,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
