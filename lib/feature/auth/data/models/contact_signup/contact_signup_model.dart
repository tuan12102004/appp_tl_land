import 'package:app_tl_land_3212/feature/auth/domain/auth_domain_module.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_signup_model.freezed.dart';
part 'contact_signup_model.g.dart';

@freezed
sealed class ContactSignupModel with _$ContactSignupModel {
  factory ContactSignupModel({
    required int id,
    @JsonKey(name: 'setting_key') required String settingKey,
    @JsonKey(name: 'setting_name') required String settingName,
    @JsonKey(name: 'plain_value') required String value,
  }) = _ContactSignupModel;

  factory ContactSignupModel.fromJson(Map<String, dynamic> json) =>
      _$ContactSignupModelFromJson(json);
}

extension ContactSignupModelX on ContactSignupModel {
  ContactSignupEntity toEntity() => ContactSignupEntity(
        id: id,
        settingKey: settingKey,
        settingName: settingName,
        value: value,
      );
}
