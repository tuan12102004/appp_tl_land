class ChangePasswordRequestEntity {
  final String oldPassword;
  final String password;
  final String passwordConfirmation;

  ChangePasswordRequestEntity({
    required this.oldPassword,
    required this.password,
    required this.passwordConfirmation,
  });
}
