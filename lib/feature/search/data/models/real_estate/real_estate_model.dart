import 'package:app_tl_land_3212/feature/search/data/search_data_module.dart';
import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'real_estate_model.freezed.dart';
part 'real_estate_model.g.dart';

@freezed
sealed class RealEstateModel with _$RealEstateModel {
  factory RealEstateModel({
    required int id,
    required String? name,
    required List<String>? gallery,
    required List<RealEstateCategoryModel>? categories,
    required DirectionModel? direction,
    required String? address,
    required double? price,
    required String? status,
    required DateTime? createdAt,
  }) = _RealEstateModel;

  factory RealEstateModel.fromJson(Map<String, dynamic> json) =>
      _$RealEstateModelFromJson(json);
}

extension RealEstateModelX on RealEstateModel {
  RealEstateEntity get toEntity => RealEstateEntity(
        id: id,
        name: name,
        gallery: gallery ?? [],
        categories: categories?.map((cat) => cat.toEntity).toList() ?? [],
        direction: direction?.toEntity,
        address: address,
        price: price,
        status: status,
        createdAt: createdAt,
      );
}
