import 'package:expense_tracker/common/cache/local_cache.dart';
import 'package:flutter/material.dart';

import '../../../di/injector.dart';

class ThemeController extends ChangeNotifier {
  ThemeController(this._localCache) {
    _themeMode =
        _localCache.get<ThemeMode?>('theme-mode-key') ?? ThemeMode.system;
  }

  late ThemeMode _themeMode;
  final ILocalCache _localCache;

  ThemeMode get themeMode => _themeMode;
  Future<void> changeThemeMode(ThemeMode mode) async {
    await _localCache.set('theme-mode-key', mode.name);
    notifyListeners();
    logger.i('ThemeMode change to: $mode');
    _themeMode = mode;
  }
}
