import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_model.freezed.dart';
part 'faq_model.g.dart';

@freezed
sealed class FaqModel with _$FaqModel {
  factory FaqModel({
    required int id,
    required String title,
    required String content,
  }) = _FaqModel;

  factory FaqModel.fromJson(Map<String, dynamic> json) =>
      _$FaqModelFromJson(json);
}

extension FaqModelX on FaqModel {
  FaqEntity get toEntity => FaqEntity(
        id: id,
        title: title,
        content: content,
      );
}