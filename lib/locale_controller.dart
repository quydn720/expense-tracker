import 'package:expense_tracker/common/cache/local_cache.dart';
import 'package:flutter/material.dart';

import 'di/injector.dart';

class LocaleController extends ChangeNotifier {
  LocaleController(this._localCache)
      : _locale = _localCache.get<Locale?>(_key) ?? const Locale('en');

  static const _key = 'locale-key';

  late Locale _locale;
  final ILocalCache _localCache;

  Locale get locale => _locale;
  Future<void> changeLocale(Locale locale) async {
    await _localCache.set<Locale>(_key, locale);
    _locale = locale;
    notifyListeners();
    logger.i('Locale change to: $locale');
  }
}
