import 'package:intl/intl.dart';
  String formatDateTime(DateTime dateTime) {
    return DateFormat('HH:mm, dd/MM/yyyy').format(dateTime);
  }
  
  String formatDate(DateTime date) {
    return DateFormat('dd/MM/yyyy').format(date);
  }