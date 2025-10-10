import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ward_model.freezed.dart';
part 'ward_model.g.dart';

@freezed
sealed class WardModel with _$WardModel {
  factory WardModel({required int? id, required String? name}) =
      _WardModel;

  factory WardModel.fromJson(Map<String, dynamic> json) =>
      _$WardModelFromJson(json);
}

extension WardModelX on WardModel {
  WardEntity get toEntity => WardEntity(
        id: id,
        name: name,
      );
}
