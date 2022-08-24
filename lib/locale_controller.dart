import 'package:expense_tracker/common/cache/local_cache.dart';
import 'package:flutter/material.dart';

import 'di/injector.dart';

class LocaleController extends ChangeNotifier {
  LocaleController(this._localCache)
      : _locale = _localCache.get<Locale?>(_key) ?? const Locale('vi');

  static const _key = 'locale-key';

  late Locale _locale;
  final ILocalCache _localCache;

  Locale get locale => _locale;
  Future<void> changeLocale(Locale locale) async {
    await _localCache.set(_key, _locale.countryCode);
    notifyListeners();
    logger.i('Locale change to: $_locale');
    _locale = locale;
  }
}
