part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({
    required String email,
    required String pass,
  }) = _Login;
  
  const factory AuthEvent.profile() = _Profile;

  const factory AuthEvent.checkAuth() = _CheckAuth;

  const factory AuthEvent.resetState() = _ResetState;

  const factory AuthEvent.tokenExpired() = _TokenExpired;

  const factory AuthEvent.signup() = _Signup;

  const factory AuthEvent.forgotPass({
    required String email,
    required String pass,
    required String confirmPass,
  }) = _ForgotPass;
  
  const factory AuthEvent.sendOtp({required String email}) = _SendOtp;

  const factory AuthEvent.resendOtp({required String email}) = _ResendOtp;

  const factory AuthEvent.verificationOtp({
    required String email,
    required int otp,
  }) = _VerificationOtp;

  const factory AuthEvent.logout() = _Logout;
}
