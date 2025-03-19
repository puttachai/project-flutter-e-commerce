// ignore: unused_import
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:shared_preferences/shared_preferences.dart';
// ignore: unused_import
import 'package:e_commerce_flutter/mainpro.dart';

class User {
  static Future<bool?> getsignin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool("Sign-in");
  }

  static Future setsignin(signin) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setBool("Sign-in", signin);
  }
}
