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

  static final currencyFormatter = NumberFormat.currency(
      locale: 'vi_VN', 
      symbol: 'VNĐ', 
      decimalDigits: 0,
    );
}
