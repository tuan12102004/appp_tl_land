import 'dart:core';

class InputValidators {
  static String? _requiredValidator(String? value, String errorText) {
    if (value == null || value.trim().isEmpty) {
      return errorText;
    }
    return null;
  }

  static String? validateEmail(String? value) {
    final requiredError = _requiredValidator(value, 'Email không được bỏ trống');
    if (requiredError != null) {
      return requiredError;
    }

    final emailRegex = RegExp(r'^[\w.-]+@gmail\.com$');
    if (!emailRegex.hasMatch(value!.trim())) {
      return 'Email không hợp lệ';
    }
    return null;
  }

  static String? validatePhone(String? value) {
    final requiredError = _requiredValidator(value, 'Số điện thoại không được bỏ trống');
    if (requiredError != null) {
      return requiredError;
    }

    final cleanedPhone = value!.trim().replaceAll(' ', '');
    final phoneRegex = RegExp(r'^(0[3|5|7|8|9])[0-9]{8}$');
    if (!phoneRegex.hasMatch(cleanedPhone)) {
      return 'Số điện thoại không hợp lệ';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    final requiredError = _requiredValidator(value, 'Mật khẩu không được bỏ trống');
    if (requiredError != null) {
      return requiredError;
    }

    if (value!.trim().length < 6) {
      return 'Mật khẩu phải có ít nhất 6 ký tự';
    }
    return null;
  }

  static String? validateConfirmPassword(String? password, String? confirmPassword) {
    final requiredError = _requiredValidator(confirmPassword, 'Vui lòng xác nhận lại mật khẩu');
    if (requiredError != null) {
      return requiredError;
    }

    if (password != confirmPassword) {
      return 'Mật khẩu xác nhận không trùng khớp';
    }
    return null;
  }

  static String? validateFullName(String? value) {
    final requiredError = _requiredValidator(value, 'Họ và tên không được bỏ trống');
    if (requiredError != null) {
      return requiredError;
    }

    final nameRegex = RegExp(r'^[a-zA-ZÀ-ỹ\s]+$');
    if (!nameRegex.hasMatch(value!.trim())) {
      return 'Họ tên không được chứa ký tự đặc biệt hoặc số';
    }
    return null;
  }
}