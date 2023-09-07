/*import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ThemeModeOptions {
  light,
  dark,
  systemDefault,
}

class ThemeNotifier with ChangeNotifier {
  late ThemeData _themeData;
  final SharedPreferences _prefs;

  ThemeNotifier(this._prefs) {
    _loadTheme();
  }

  ThemeData getTheme() => _themeData;

  void _loadTheme() {
    final themeOption =
        _prefs.getString('theme_option') ?? ThemeModeOptions.systemDefault.toString();

    switch (themeOption) {
      case 'light':
        _themeData = ThemeData.light();
        break;
      case 'dark':
        _themeData = ThemeData.dark();
        break;
      default:
        _themeData = ThemeData.system();
        break;
    }
  }

  void setTheme(ThemeModeOptions themeOption) {
    switch (themeOption) {
      case ThemeModeOptions.light:
        _themeData = ThemeData.light();
        _prefs.setString('theme_option', 'light');
        break;
      case ThemeModeOptions.dark:
        _themeData = ThemeData.dark();
        _prefs.setString('theme_option', 'dark');
        break;
      case ThemeModeOptions.systemDefault:
        _themeData = ThemeData.system();
        _prefs.setString('theme_option', 'systemDefault');
        break;
    }
    notifyListeners();
  }
}*/
