// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiResModel<T> _$ApiResModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _ApiResModel<T>(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
    );

Map<String, dynamic> _$ApiResModelToJson<T>(
  _ApiResModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
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
