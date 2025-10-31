import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_request_model.freezed.dart';
part 'change_password_request_model.g.dart';

@freezed
sealed class ChangePasswordRequestModel with _$ChangePasswordRequestModel {
  factory ChangePasswordRequestModel({
    @JsonKey(name: 'old_password') required String oldPassword,
    required String password,
    @JsonKey(name: 'password_confirmation')
    required String passwordConfirmation,
  }) = _ChangePasswordRequestModel;

  factory ChangePasswordRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestModelFromJson(json);
}

extension ChangePasswordRequestEntityX on ChangePasswordRequestEntity {
  ChangePasswordRequestModel toModel() => ChangePasswordRequestModel(
        oldPassword: oldPassword,
        password: password,
        passwordConfirmation: passwordConfirmation,
      );
}
