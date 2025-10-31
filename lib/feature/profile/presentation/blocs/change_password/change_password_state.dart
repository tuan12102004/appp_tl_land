part of 'change_password_bloc.dart';

@freezed
sealed class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    Failure? failure,
  }) = _ChangePasswordState;
}