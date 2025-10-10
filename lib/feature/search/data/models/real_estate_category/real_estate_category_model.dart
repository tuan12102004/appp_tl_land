import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'real_estate_category_model.freezed.dart';
part 'real_estate_category_model.g.dart';

@freezed
sealed class RealEstateCategoryModel with _$RealEstateCategoryModel {
  factory RealEstateCategoryModel({required int id, required String? name}) =
      _RealEstateCategoryModel;

  factory RealEstateCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$RealEstateCategoryModelFromJson(json);
}

extension RealEstateCategoryModelX on RealEstateCategoryModel {
  RealEstateCategoryEntity get toEntity => RealEstateCategoryEntity(
        id: id,
        name: name,
      );
}
