import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'gen/app_localizations.dart';

class LocalizationFactory {
  static List<LocalizationsDelegate<Object>> localizationsDelegates = const [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  static List<Locale> supportedLocales = AppLocalizations.supportedLocales;
}

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n {
    return AppLocalizations.of(this);
  }
}
