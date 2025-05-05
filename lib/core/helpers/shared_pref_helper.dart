import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  SharedPrefHelper._();

  static Future<void> clear() async {
    debugPrint('SharedPrefHelper : clear');
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.clear();
  }

  static Future<bool?> getBool(String key) async {
    debugPrint('SharedPrefHelper : getBool with key : $key');
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(key);
  }

  /// Gets a String value from SharedPreferences with given [key].
  static Future<String?> getString(String key) async {
    debugPrint('SharedPrefHelper : getString with key : $key');
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(key);
  }

  /// Gets an String List values from SharedPreferences with given [key].
  static Future<List<String>?> getStringList(String key) async {
    debugPrint('SharedPrefHelper : getStringList with key : $key');
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getStringList(key);
  }

  static setBool(String key, value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    debugPrint("SharedPrefHelper : setBool with key : $key and value : $value");
    await sharedPreferences.setBool(key, value);
  }

  /// Saves a [value] with a [key] in the SharedPreferences.
  static setString(String key, value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    debugPrint(
      "SharedPrefHelper : setString with key : $key and value : $value",
    );
    await sharedPreferences.setString(key, value);
  }

  /// Saves a [value] with a [key] in the SharedPreferences.
  static setStringList(String key, value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    debugPrint(
      "SharedPrefHelper : setStringList with key : $key and value : $value",
    );
    await sharedPreferences.setStringList(key, value);
  }
}
