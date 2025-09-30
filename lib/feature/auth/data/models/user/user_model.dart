import 'package:app_tl_land_3212/feature/auth/domain/auth_domain_module.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
sealed class UserModel with _$UserModel {
  const factory UserModel({
    required int? id,
    required String? fullname,
    required String? phone,
    required int? gender,
    required DateTime? birthday,
    required String? avatar,
    required int? status,
    required String? address,
    @JsonKey(name: 'created_at') required DateTime? createdAt,
    required String? ward,
    required String? province,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

extension UserModelX on UserModel {
  UserEntity toEntity() => UserEntity(
        id: id,
        fullname: fullname,
        phone: phone,
        gender: gender,
        birthday: birthday,
        avatar: avatar,
        status: status,
        address: address,
        createdAt: createdAt,
        ward: ward,
        province: province
      );
}
