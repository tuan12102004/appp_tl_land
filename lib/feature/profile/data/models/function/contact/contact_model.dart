import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_model.freezed.dart';
part 'contact_model.g.dart';

@freezed
sealed class ContactModel with _$ContactModel {
  factory ContactModel({
    required int id,
    @JsonKey(name: 'setting_key') required String? settingKey,
    @JsonKey(name: 'setting_name') required String? settingName,
    @JsonKey(name: 'plain_value') required String? value,
    required String? desc,
    @JsonKey(name: 'type_input') required int? typeInput,
    @JsonKey(name: 'type_data') required String? typeData,
    required int? group,
    @JsonKey(name: 'created_at') required DateTime? createdAt,
    @JsonKey(name: 'updated_at') required DateTime? updatedAt,
  }) = _ContactModel;

  factory ContactModel.fromJson(Map<String, dynamic> json) =>
      _$ContactModelFromJson(json);
}

extension ContactModelX on ContactModel {
  ContactEntity get toEntity => ContactEntity(
      id: id,
      settingKey: settingKey,
      settingName: settingName,
      value: value,
      desc: desc,
      typeInput: typeInput,
      typeData: typeData,
      group: group,
      createdAt: createdAt,
      updatedAt: updatedAt);
}
