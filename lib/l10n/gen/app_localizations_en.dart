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
  String get googleError_userCancelled => 'You canceled the login process';

  @override
  String get forgot_password => 'Forgot Password';

  @override
  String get continue_str => 'Continue';

  @override
  String get forgot_password_title => 'Don\'t worry.';

  @override
  String get forgot_password_instruction =>
      'Enter your email and we’ll send you a link to reset your password.';

  @override
  String forgot_password_sent(String email) {
    return 'Check your email $email and follow the instructions to reset your password';
  }

  @override
  String get add_attactment => 'Add attachment';

  @override
  String get description => 'Description';

  @override
  String get how_much => 'How much?';

  @override
  String get category => 'Category';

  @override
  String get expense => 'Expense';

  @override
  String get income => 'Income';

  @override
  String get transfer => 'Transfer';

  @override
  String get wallet => 'Wallet';

  @override
  String get repeat_str => 'Repeat';

  @override
  String get repeat_transaction => 'Repeat transaction, set your own time';

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
  String get appearance => 'Appearance';

  @override
  String get appearance_light => 'Light';

  @override
  String get appearance_dark => 'Dark';

  @override
  String get appearance_system => 'Auto';

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
