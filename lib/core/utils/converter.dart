double? toDoubleFromDynamic(Object? value) {
  if (value == null) return null;
  if (value is num) return value.toDouble();
  return double.tryParse(value.toString());
}

int? toIntFromDynamic(Object? value) {
  if (value == null) return null;
  if (value is num) return value.toInt();
  return int.tryParse(value.toString());
}

DateTime? toDateTimeFromDynamic(Object? value) {
  if (value == null) return null;
  if (value is DateTime) return value.toLocal();
  return DateTime.tryParse(value.toString())?.toLocal();
}

bool? toBoolFromDynamic(Object? value) {
  if (value == null) return null;
  if (value is bool) return value;
  return bool.tryParse(value.toString());
}

// Convert price : 123456 -> 123.456
String togglePriceWithDot(int price){
  final str = price.toString();
  final buffer = StringBuffer();
  int count = 0;

  for (int i = str.length - 1; i >= 0; i--) {
    buffer.write(str[i]);
    count++;
    if (count % 3 == 0 && i != 0) {
      buffer.write('.');
    }
  }

  return buffer.toString().split('').reversed.join();
}