import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'province_model.freezed.dart';
part 'province_model.g.dart';

@freezed
sealed class ProvinceModel with _$ProvinceModel {
  factory ProvinceModel({required int? id, required String? name}) =
      _ProvinceModel;

  factory ProvinceModel.fromJson(Map<String, dynamic> json) =>
      _$ProvinceModelFromJson(json);
}

extension ProvinceModelX on ProvinceModel {
  ProvinceEntity get toEntity => ProvinceEntity(
        id: id,
        name: name,
      );
}
