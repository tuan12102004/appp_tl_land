// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'real_estate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RealEstateModel _$RealEstateModelFromJson(Map<String, dynamic> json) =>
    _RealEstateModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      gallery:
          (json['gallery'] as List<dynamic>?)?.map((e) => e as String).toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) =>
              RealEstateCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      direction: json['direction'] == null
          ? null
          : DirectionModel.fromJson(json['direction'] as Map<String, dynamic>),
      address: json['address'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      status: json['status'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$RealEstateModelToJson(_RealEstateModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gallery': instance.gallery,
      'categories': instance.categories,
      'direction': instance.direction,
      'address': instance.address,
      'price': instance.price,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
