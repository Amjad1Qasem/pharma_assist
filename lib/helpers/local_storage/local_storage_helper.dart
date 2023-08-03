import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'keys.dart';

abstract class LocalStoageHelper {
  static Future<void> setTheme(ThemeMode mode) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.setString(_Keys.theme, mode.name);
  }

  static Future<ThemeMode> getTheme() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    final String theme =
        sharedPreferences.getString(_Keys.theme) ?? ThemeMode.light.name;
    switch (theme) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.light;
    }
  }

  static Future<void> setLocal(Locale locale) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.setString(_Keys.locale, locale.languageCode);
  }

  static Future<Locale> getLocale() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    final String locale = sharedPreferences.getString(_Keys.locale) ?? 'en';
    return Locale(locale);
  }
}
