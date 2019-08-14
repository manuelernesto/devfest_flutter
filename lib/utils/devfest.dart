import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Devfest {
  static const String app_name = "Devfest";
  static const String app_version = "1.0.0";
  static const int app_version_code = 1;
  static const String app_clor = "#ffd7167";
  static Color primaryAppColor = Colors.black;
  static Color secodaryAppColor = Colors.black;
  static const String google_sans_family = "GoogleSans";
  static bool isDebugMode = false;

  // *Preferences
  static SharedPreferences prefs;
  static const String darkModePref = "darkModePref";
}
