import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(order: -1)
class AppSettingService {
  AppSettingService(this.prefs);

  final SharedPreferences prefs;

  ThemeMode getThemeMode() {
    final themeModeIndex = prefs.getInt('theme-mode-key');
    if (themeModeIndex == null) return ThemeMode.system;

    return ThemeMode.values[themeModeIndex];
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    await prefs.setInt('theme-mode-key', mode.index);
  }

  Locale getLocale() {
    final languageCode = prefs.getString('locale-key');
    if (languageCode == null) return const Locale('en');
    return Locale(languageCode);
  }

  Future<void> setLocale(Locale locale) async {
    await prefs.setString('locale-key', locale.languageCode);
  }
}
