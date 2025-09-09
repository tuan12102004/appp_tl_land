import 'package:intl/intl.dart';

extension StringExtension on String {
  // Convert to currency format
  String get toCurrencyText {
    final number = num.tryParse(this);
    if (number == null) {
      return this;
    }
    return "${NumberFormat.currency(symbol: "", locale: "vi_VN").format(number).trim()}đ";
  }

  // Convert to phone number plain text
  String get getPlainPhoneNumber => replaceAll(RegExp(r'\D'), '');
}
