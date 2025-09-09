import 'package:flutter_multi_formatter/formatters/phone_input_formatter.dart';
import 'package:flutter/services.dart';

class LocalPhoneInputFormatter extends PhoneInputFormatter {
  LocalPhoneInputFormatter({
    String super.defaultCountryCode = 'VN',
    super.allowEndlessPhone = true,
  });

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final result = super.formatEditUpdate(oldValue, newValue);

    final noPlus = result.text.replaceFirst('+', '');
    return result.copyWith(
      text: noPlus,
      selection: TextSelection.collapsed(offset: noPlus.length),
    );
  }
}
