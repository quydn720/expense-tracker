import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class UserPreferences {
  UserPreferences({
    required this.prefs,
  });

  //  Locale get => locale;
  //  ThemeMode get => themeMode;
  //  Currency get => currency;
  //  NotificationOption get => notificationOption;
  //  SecurityOption get => securityOption;
  bool get isOnboardingCompleted => prefs.getBool('isOn') ?? false;

  final SharedPreferences prefs;

  Future<void> completeOnboarding() async {
    await prefs.setBool('isOn', false);
  }
}

class SecurityOption {}

class NotificationOption {}

class Currency {
  Currency(this.name, this.shortName);

  final String name;
  final String shortName;
}
