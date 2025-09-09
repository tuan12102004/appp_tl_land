import 'package:flutter/material.dart';

String getDisplayText(BuildContext context, String? text, {String? fallback}) {
  if (text == null || text.trim().isEmpty) {
    return fallback ?? 'N/A';
  }
  return text;
}
