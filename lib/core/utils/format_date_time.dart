import 'package:intl/intl.dart';

String formatDateTime(DateTime dateTime) {
  final localDateTime = dateTime.toLocal();
  return DateFormat('HH:mm, dd/MM/yyyy').format(localDateTime);
}

String formatDate(DateTime date) {
  final localDate = date.toLocal();
  return DateFormat('dd/MM/yyyy').format(localDate);
}
