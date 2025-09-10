import 'package:app_tl_land_3212/feature/auth/domain/auth_domain_module.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
sealed class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String fullname,
    required String email,
    required String phone,
    String? address,
    String? avatar,
    required DateTime birthday,
    int? gender,
    bool? status,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

extension UserModelX on UserModel {
  UserEntity toEntity() => UserEntity(
    id: id,
    fullName: fullname,
    email: email,
    phone: phone,
    address: address,
    avatar: avatar,
    birthday: birthday,
    gender: gender,
    status: status,
  );
}