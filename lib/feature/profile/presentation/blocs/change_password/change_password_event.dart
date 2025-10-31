part of 'change_password_bloc.dart';

@freezed
sealed class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.submit({
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
  }) = Submit;
}