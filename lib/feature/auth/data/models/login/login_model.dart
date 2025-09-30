import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
sealed class LoginModel with _$LoginModel {
  const factory LoginModel({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') String? refreshToken,
    @JsonKey(name: 'is_email_verified') bool? isEmailVerified,
    @JsonKey(name: 'is_sms_verified') bool? isSmsVerified,
    @JsonKey(name: 'expires_in') int? expiresIn,
    int? status,
    List<String>? role,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}
