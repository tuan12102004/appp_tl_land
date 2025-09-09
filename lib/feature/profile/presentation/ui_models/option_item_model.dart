import 'package:flutter/material.dart';

class OptionItemModel {
  final String optionName;
  final VoidCallback onPressed;
  final bool isLougout;

  OptionItemModel({
    required this.optionName,
    required this.onPressed,
    this.isLougout = false,
  });
}
