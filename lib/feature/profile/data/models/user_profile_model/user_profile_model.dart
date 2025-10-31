import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
sealed class UserProfileModel with _$UserProfileModel {
  const factory UserProfileModel({
    required int? id,
    required String? fullname,
    required String? phone,
    required int? gender,
    @JsonKey(name: 'birthday') required DateTime? birthDay,
    required String? avatar,
    required int? status,
    required String? address,
    required String? ward,
    required String? province,
    required String? email,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}

extension UserProfileModelExt on UserProfileModel {
  UserProfileEntity get toEntity => UserProfileEntity(
        id: id,
        fullname: fullname,
        phone: phone,
        gender: gender,
        birthday: birthDay,
        avatar: avatar,
        status: status,
        address: address,
        ward: ward,
        province: province,
        email: email,
      );
}
