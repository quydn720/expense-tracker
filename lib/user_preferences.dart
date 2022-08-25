import 'package:flutter/material.dart';

class UserPreferences {
  UserPreferences({
    required this.locale,
    required this.themeMode,
    required this.currency,
    required this.notificationOption,
    required this.securityOption,
  });

  final Locale locale;
  final ThemeMode themeMode;
  final Currency currency;
  final NotificationOption notificationOption;
  final SecurityOption securityOption;
}

class SecurityOption {}

class NotificationOption {}

class Currency {
  Currency(this.name, this.shortName);

  final String name;
  final String shortName;
}
