import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get signUp => 'Sign Up';

  @override
  String get login => 'Login';

  @override
  String get authError_invalidEmail => 'Email is not valid or badly formatted.';

  @override
  String get authError_userDisabled =>
      'This user has been disabled. Please contact support for help.';

  @override
  String get authError_userNotFound =>
      'Email is not found, please create an account.';

  @override
  String get authError_wrongPassword => 'Incorrect password, please try again.';

  @override
  String get authError_unknownException => 'An unknown exception occurred.';

  @override
  String get profile => 'Profile';

  @override
  String get home => 'Home';

  @override
  String get transactions => 'Transactions';

  @override
  String get language => 'Language';

  @override
  String get languageError_notSuppported => 'Error';

  @override
  String get language_vietnamese => 'Vietnamese';

  @override
  String get language_english => 'English';

  @override
  String get theme => 'Theme';

  @override
  String get theme_light => 'Light';

  @override
  String get theme_dark => 'Dark';

  @override
  String get theme_system => 'Use device theme';

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
