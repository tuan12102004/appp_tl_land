import 'package:intl/intl.dart';

class CurrencyFormatter {
  static const double _billion = 1000000000;
  static const double _million = 1000000;
  static const double _thousand = 1000;

  static String format(double? price) {
    if (price == null 
    // || price == 0
    ) {
      return 'Thỏa thuận';
    }

    final formatter = NumberFormat('#,##0.##');

    if (price >= _billion) {
      final result = price / _billion;
      return '${formatter.format(result)} Tỷ';
    } else if (price >= _million) {
      final result = price / _million;
      return '${formatter.format(result)} Triệu';
    } else if (price >= _thousand) {
      final result = price / _thousand;
      return '${formatter.format(result)} Nghìn';
    } else {
      return NumberFormat.currency(locale: 'vi_VN', symbol: 'đồng')
          .format(price);
    }
  }
}
