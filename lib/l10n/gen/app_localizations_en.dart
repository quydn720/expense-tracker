import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get signUp => 'Sign Up';

  @override
  String get login => 'Login';

  @override
  String get invalidEmail => 'Email is not valid or badly formatted.';

  @override
  String get userDisabled =>
      'This user has been disabled. Please contact support for help.';

  @override
  String get userNotFound => 'Email is not found, please create an account.';

  @override
  String get wrongPassword => 'Incorrect password, please try again.';

  @override
  String get unknownException => 'An unknown exception occurred.';

  @override
  String get profile => 'Profile';

  @override
  String get home => 'Home';

  @override
  String get transactions => 'Transactions';

  @override
  String get language => 'Language';

  @override
  String get theme => 'Theme';

  @override
  String get light => 'Light';

  @override
  String get dark => 'Dark';

  @override
  String get useDeviceTheme => 'Use device theme';

  @override
  String get currency => 'Currency';

  @override
  String get settings => 'Settings';

  @override
  String get security => 'Security';

  @override
  String get pin => 'PIN';

  @override
  String get fingerprint => 'Fingerprint';

  @override
  String get faceId => 'Face ID';

  @override
  String get notification => 'Notification';

  @override
  String get expenseAlert => 'Expense Alert';

  @override
  String get expenseAlertDescription => 'Get notification about you’re expense';

  @override
  String get budget => 'Budget';

  @override
  String get budgetDescription =>
      'Get notification when you’re budget exceeding the limit';

  @override
  String get tipsAndArticles => 'Tips and Articles';

  @override
  String get tipsAndArticlesDescription =>
      'Small & useful pieces of pratical financial advice';

  @override
  String get about => 'About';

  @override
  String get help => 'Help';
}
