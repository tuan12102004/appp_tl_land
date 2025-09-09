import '../enums/shared_prefs_key.dart';

extension SharedPrefsKeyExtension on SharedPrefsKey {
  // Get shared prefs key value
  String get getVal {
    switch (this) {
      case SharedPrefsKey.accessToken:
        return "access_token";
      case SharedPrefsKey.lang:
        return "language";
    }
  }
}
