import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'gen/app_localizations.dart';

/// Command:
/// - generations:
/// flutter gen-l10n --arb-dir=lib/l10n --output-dir=lib/l10n/gen --output-localization-file=app_localizations.dart --output-class=AppLocalizations --no-synthetic-package --template-arb-file=intl_en.arb
/// - gen untranslated text into file
/// flutter gen-l10n --untranslated-messages-file=desiredFileName.txt --arb-dir=lib/l10n --template-arb-file=intl_en.arb
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
