import 'package:app_tl_land_3212/common/entities/label_value_entity.dart';
import 'package:app_tl_land_3212/core/utils/converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'label_value_model.g.dart';
part 'label_value_model.freezed.dart';

@freezed
sealed class LabelValueModel with _$LabelValueModel {
  factory LabelValueModel({
    @JsonKey(fromJson: toIntFromDynamic) required int? value,
    required String? label,
  }) = _LabelValueModel;

  factory LabelValueModel.fromJson(Map<String, dynamic> json) =>
      _$LabelValueModelFromJson(json);
}

extension LabelValueModelX on LabelValueModel {
  LabelValueEntity get toEntity => LabelValueEntity(value: value, label: label);
}
