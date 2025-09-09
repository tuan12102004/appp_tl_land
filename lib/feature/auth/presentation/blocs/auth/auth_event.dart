part of 'auth_bloc.dart';

// @freezed 
// sealed class AuthEvent with _$AuthEvent {
//   const factory AuthEvent.login ({
//     required String phone,
//     required String pass,
//   }) = _Login;

//   const factory AuthEvent.signup({
//     required String phone,
//     required String email,
//     required String pass,
//     required String passConfirm,
//     required String fullname,
//     required DateTime birthday, 
//   }) = _Signup;

//   const factory AuthEvent.updatePass({
//     required String phone,
//     required String pass,
//     required String confirmPass,
//   }) = _UpdatePass;

//   const factory AuthEvent.logout() = _Logout;

//   const factory AuthEvent.checkAuth() = _CheckAuth;

//   const factory AuthEvent.resetState() = _ResetState;

//   const factory AuthEvent.resendOtp({
//     required String email
//   }) = _ResendOtp;

//   const factory AuthEvent.verificationOtp({
//     required String email,
//     required int otp,
//   }) = _VerificationOtp;

//   const factory AuthEvent.tokenExpired() = _TokenExpired;

// }