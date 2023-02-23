// ignore_for_file: non_constant_identifier_names, curly_braces_in_flow_control_structures
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class cachehelper {
  static SharedPreferences? sharedPreferences;
  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> putboolean({
    @required String? key,
    @required bool? value,
  }) async {
    return await sharedPreferences!.setBool(key!, value!);
  }

  static dynamic getdata({
    @required String? key,
  }) {
    return sharedPreferences!.get(key!);
  }

  static Future<bool> Removedata(
    @required String? key,
  ) async {
    return await sharedPreferences!.remove(key!);
  }

  static Future<bool> Savedata({
    @required String? key,
    @required dynamic? value,
  }) async {
    if (value is String) return await sharedPreferences!.setString(key!, value);
    if (value is bool) return await sharedPreferences!.setBool(key!, value);
    if (value is int) return await sharedPreferences!.setInt(key!, value);

    return await sharedPreferences!.setDouble(key!, value);
  }
}
