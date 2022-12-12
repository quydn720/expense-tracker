import 'package:expense_tracker/l10n/gen/app_localizations.dart';
import 'package:flutter/material.dart';

extension LocaleCountryName on Locale {
  String cityLocalizedName(AppLocalizations l10n) {
    switch (languageCode) {
      case 'vi':
        return l10n.language_vietnamese;
      case 'en':
        return l10n.language_english;
      default:
        return l10n.languageError_notSuppported;
    }
  }
}
