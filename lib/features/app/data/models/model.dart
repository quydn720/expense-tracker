import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';

extension LocaleCountryName on Locale {
  String cityLocalizedName(BuildContext context) {
    switch (languageCode) {
      case 'vi':
        return context.l10n.language_vietnamese;
      case 'en':
        return context.l10n.language_english;
      default:
        return context.l10n.languageError_notSuppported;
    }
  }
}
