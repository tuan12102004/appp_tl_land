import 'dart:core';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InputValidators {
  static String? validate({
    required String? value,
    required String? hintText,
    TextInputType? keyboardType,
  }) {
    if (value == null || value.trim().isEmpty) {
      return '$hintText không được bỏ trống';
    }

    final val = value.trim();

    // Kiểm tra số điện thoại
    if (keyboardType == TextInputType.phone) {
      final cleanedPhone = val.replaceAll(' ', '');
      final phoneRegex = RegExp(r'^(0[3|5|7|8|9])[0-9]{8}$');
      if (!phoneRegex.hasMatch(cleanedPhone)) return 'Số điện thoại không hợp lệ';
    }

    // Kiểm tra email
    if (keyboardType == TextInputType.emailAddress) {
      final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
      if (!emailRegex.hasMatch(val)) return 'Email không hợp lệ';
    }

    // Kiểm tra họ tên
    if (hintText?.toLowerCase().contains('họ và tên') == true) {
      final nameRegex = RegExp(r'^[a-zA-ZÀ-ỹ\s]+$');
      if (!nameRegex.hasMatch(val)) {
        return 'Họ tên không được chứa ký tự đặc biệt hoặc số';
      }
    }

    // Kiểm tra mật khẩu
    if (hintText?.toLowerCase().contains('mật khẩu') == true) {
      if (val.length < 6) return 'Mật khẩu phải có ít nhất 6 ký tự';
    }

    // Kiểm tra ngày sinh hợp lệ (nếu kiểm tra đủ 18 tuổi mở //)
    if (hintText?.toLowerCase().contains('ngày sinh') == true) {
      // Kiểm tra định dạng ngày
      DateTime? date;
      try {
        date = DateFormat('dd/MM/yyyy').parse(val);
      } catch (e) {
        return 'Ngày sinh không hợp lệ (dd/MM/yyyy)';
      }
      // Kiểm tra ngày sinh không được lớn hơn ngày hiện 
      final now = DateTime.now();
      if(date.isAfter(now)){
        return 'Ngày sinh không được lớn hơn ngày hiện tại';
      }
      // Kiểm tra đủ 18t
      // final age = now.year - date.year - ((now.month < date.month || (now.month == date.month && now.day < date.day)) ? 1 : 0);
      // if (age < 18) return 'Bạn phải từ 18 tuổi trở lên';
    }

    return null;
  }
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