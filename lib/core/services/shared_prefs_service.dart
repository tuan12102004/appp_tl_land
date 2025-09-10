import 'dart:convert';

import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/feature/auth/domain/auth_domain_module.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SharedPrefsService {
  final SharedPreferences _prefs;

  SharedPrefsService({required SharedPreferences prefs}) : _prefs = prefs;

  // Save value
  Future<void> saveString(SharedPrefsKey key, String value) async {
    await _prefs.setString(key.getVal, value);
  }

  // Get value
  String? getString(SharedPrefsKey key) {
    return _prefs.getString(key.getVal);
  }

  // Clear
  void clearLocalData() => _prefs.clear();

  // Delete value
  Future<void> remove(SharedPrefsKey key) async {
    await _prefs.remove(key.getVal);
  }

  // Save bool value
  Future<void> saveBool(SharedPrefsKey key, bool value) async {
    await _prefs.setBool(key.getVal, value);
  }

  // Get bool value
  bool? getBool(SharedPrefsKey key) {
    return _prefs.getBool(key.getVal);
  }

  // Save JSON (Map<String, dynamic>)
  Future<void> saveJson(SharedPrefsKey key, Map<String, dynamic> json) async {
    final jsonString = jsonEncode(json);
    await _prefs.setString(key.getVal, jsonString);
  }

  // Get JSON
  Map<String, dynamic>? getJson(SharedPrefsKey key) {
    final jsonString = _prefs.getString(key.getVal);
    if (jsonString == null) return null;

    try {
      return jsonDecode(jsonString) as Map<String, dynamic>;
    } catch (e) {
      return null;
    }
  }

  // Save integer
  Future<void> saveInt(SharedPrefsKey key, int value) async {
    await _prefs.setInt(key.getVal, value);
  }

  // Get integer
  int? getInt(SharedPrefsKey key) {
    return _prefs.getInt(key.getVal);
  }

  // Save double
  Future<void> saveDouble(SharedPrefsKey key, double value) async {
    await _prefs.setDouble(key.getVal, value);
  }

  // Get double
  double? getDouble(SharedPrefsKey key) {
    return _prefs.getDouble(key.getVal);
  }

  Future<void> saveUserEntity(SharedPrefsKey key, UserEntity user) async {
    final map = {
      'id': user.id,
      'fullName': user.fullName,
      'email': user.email,
      'phone': user.phone,
      'address': user.address,
      'avatar': user.avatar,
      'birthday': user.birthday.toIso8601String(),
      'gender': user.gender,
    };
    await saveJson(key, map);
  }

  UserEntity? getUserEntity(SharedPrefsKey key) {
    final jsonMap = getJson(key);
    if (jsonMap == null) return null;

    return UserEntity(
      id: jsonMap['id'] as int,
      fullName: jsonMap['fullName'] as String,
      email: jsonMap['email'] as String,
      phone: jsonMap['phone'] as String,
      address: jsonMap['address'] as String?,
      avatar: jsonMap['avatar'] as String?,
      birthday: DateTime.parse(jsonMap['birthday'] as String),
      gender: jsonMap['gender'] as int?,
      status: (jsonMap['active'] != null),
    );
  }

}
