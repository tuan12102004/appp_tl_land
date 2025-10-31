import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'policy_model.freezed.dart';
part 'policy_model.g.dart';

@freezed
sealed class PolicyModel with _$PolicyModel {
  factory PolicyModel({
    required String content,
  }) = _PolicyModel;

  factory PolicyModel.fromJson(Map<String, dynamic> json) =>
      _$PolicyModelFromJson(json);
}

extension PolicyModelX on PolicyModel {
  PolicyEntity get toEntity => PolicyEntity(
        content: content,
      );
}