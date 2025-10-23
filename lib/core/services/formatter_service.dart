import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class FormatterService {
  FormatterService._();

  // Phone formatter
  static final phoneFormatter = MaskTextInputFormatter(
    mask: '#### ### ###', // 0852 111 685
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  // Email formatter
  static final emailFormatter = MaskTextInputFormatter(
    mask: '********************@*****.***',
    filter: {"*": RegExp(r'[a-zA-Z0-9._%+-@]')},
    type: MaskAutoCompletionType.lazy,
  );

  // Pin code formatter
  static final pinCodeFormatter = MaskTextInputFormatter(
    mask: "####",
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  // Time formatter
  static final timeFormatter = MaskTextInputFormatter(
    mask: "XX",
    filter: {"X": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  // Currency formatter
  static final moneyFormatter = MaskTextInputFormatter(
    mask: '#.###.###.###',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  // Currency formatter for displaying
  static final currencyFormatter = NumberFormat.currency(
    locale: 'vi_VN',
    symbol: 'VNĐ',
    decimalDigits: 0,
  );

  // Custom input formatter for typing numbers with thousand separator
  static final numberFormatter = NumberInputFormatter();
}

/// Custom formatter để dùng trong inputFormatters của TextField
class NumberInputFormatter extends TextInputFormatter {
  final NumberFormat _formatter = NumberFormat("#,###", "vi_VN");

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    }

    // Chỉ lấy số
    final digitsOnly = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');
    if (digitsOnly.isEmpty) {
      return newValue.copyWith(text: '');
    }

    final number = int.parse(digitsOnly);
    final newText = _formatter.format(number);

    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}
