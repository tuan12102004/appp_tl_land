import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'direction_model.freezed.dart';
part 'direction_model.g.dart';

@freezed
sealed class DirectionModel with _$DirectionModel {
  factory DirectionModel({required String? value, required String? label}) =
      _DirectionModel;

  factory DirectionModel.fromJson(Map<String, dynamic> json) =>
      _$DirectionModelFromJson(json);
}

extension DirectionModelX on DirectionModel {
  DirectionEntity get toEntity => DirectionEntity(
        value: value,
        label: label,
      );
}
