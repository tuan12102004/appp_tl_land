import '../enums/shared_prefs_key.dart';

extension SharedPrefsKeyExtension on SharedPrefsKey {
  // Get shared prefs key value
  String get getVal {
    switch (this) {
      case SharedPrefsKey.accessToken:
        return "access_token";
      case SharedPrefsKey.isLoggedIn:
        return 'is_logged_in';
      case SharedPrefsKey.user:
        return 'user';
      case SharedPrefsKey.tokenIssuedAt:
        return 'token_issued_at';
      case SharedPrefsKey.lang:
        return 'lang';
    }
  }
}
