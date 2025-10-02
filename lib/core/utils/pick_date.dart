import 'package:flutter/material.dart';

Future<DateTime?> pickDate({
  required BuildContext context,
  DateTime? initialDate,
  DateTime? firstDate,
  DateTime? lastDate,
}) async {
  try {
    DateTime? result = await showDatePicker(
      context: context,
      initialDate: initialDate ?? DateTime.now(),
      firstDate: firstDate ?? DateTime(DateTime.now().year - 125),
      lastDate: lastDate ?? DateTime(DateTime.now().year + 1),
      confirmText: 'Chọn',
      cancelText: 'Hủy',
      barrierDismissible: false,
      locale: Localizations.localeOf(context),
    );
    return result;
  } catch (e) {
    return null;
  }
}
