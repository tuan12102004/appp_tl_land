// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'label_value_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LabelValueModel _$LabelValueModelFromJson(Map<String, dynamic> json) =>
    _LabelValueModel(
      value: toIntFromDynamic(json['value']),
      label: json['label'] as String?,
    );

Map<String, dynamic> _$LabelValueModelToJson(_LabelValueModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'label': instance.label,
    };
