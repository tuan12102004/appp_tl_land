import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_us_model.freezed.dart';
part 'about_us_model.g.dart';

@freezed
sealed class AboutUsModel with _$AboutUsModel {
  factory AboutUsModel({
    required String content,
  }) = _AboutUsModel;

  factory AboutUsModel.fromJson(Map<String, dynamic> json) =>
      _$AboutUsModelFromJson(json);
}

extension AboutUsModelX on AboutUsModel {
  AboutUsEntity get toEntity => AboutUsEntity(
        content: content,
      );
}