import 'package:expense_tracker/common/cache/local_cache.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';

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
  }
}

/// Helper to translated locale to Localized Country Name
/// Ex: 'vi' -> Tiếng Việt in Vietnamese / Vietnamese in English
///     'en' -> Tiếng Anh in Vietnamese / English in English
extension LocaleCountryName on Locale {
  String cityLocalizedName(BuildContext context) {
    switch (languageCode) {
      case 'vi':
        return context.l10n.language_vietnamese;
      case 'en':
        return context.l10n.language_english;
      default:
        return context.l10n.language;
    }
  }
}
