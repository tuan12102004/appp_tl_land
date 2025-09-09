import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SystemUiService {
  SystemUiService._();

  // Set default
  static void setDefaultOverlay() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
  }

  // Set overlay by colors and brightnesses
  static void setOverlay({
    Color statusBarColor = Colors.transparent,
    Brightness statusBarIconBrightness = Brightness.light,
    Color systemNavigationBarColor = Colors.transparent,
    Brightness systemNavigationBarIconBrightness = Brightness.light,
  }) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: statusBarColor,
      statusBarIconBrightness: statusBarIconBrightness,
      systemNavigationBarColor: systemNavigationBarColor,
      systemNavigationBarIconBrightness: systemNavigationBarIconBrightness,
    ));
  }
}
