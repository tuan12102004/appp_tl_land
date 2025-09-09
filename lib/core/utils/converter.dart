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