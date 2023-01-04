import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get select_color => 'Select color';

  @override
  String get color => 'Color';

  @override
  String forgot_password_sent(String email) {
    return 'Check your email $email and follow the instructions to reset your password';
  }

  @override
  String get about => 'About';

  @override
  String get account => 'Account';

  @override
  String get account_balance => 'Account Balance';

  @override
  String get add_attachment => 'Add attachment';

  @override
  String get add_category => 'Add new category';

  @override
  String get add_new_transaction => 'Add new transaction';

  @override
  String get add_wallet => 'Add new wallet';

  @override
  String get amount_field_validation_emptyOrNegativeAmount => 'The amount\'s value could not be negative or zero.';

  @override
  String get amount_field_validation_invalidAmount => 'Has invalid characters, please fix it.';

  @override
  String get appearance => 'Appearance';

  @override
  String get appearance_dark => 'Dark';

  @override
  String get appearance_light => 'Light';

  @override
  String get appearance_system => 'Auto';

  @override
  String get attachment => 'Attachment';

  @override
  String get authError_invalidEmail => 'Email is not valid or badly formatted.';

  @override
  String get authError_unknownException => 'An unknown exception occurred.';

  @override
  String get authError_userDisabled => 'This user has been disabled. Please contact support for help.';

  @override
  String get authError_userNotFound => 'Email is not found, please create an account.';

  @override
  String get authError_wrongPassword => 'Incorrect password, please try again.';

  @override
  String get budget => 'Budget';

  @override
  String get budgetDescription => 'Get notification when you’re budget exceeding the limit';

  @override
  String get camera => 'Camera';

  @override
  String get category => 'Category';

  @override
  String get continue_str => 'Continue';

  @override
  String get create_budget => 'Create new budget';

  @override
  String get currency => 'Currency';

  @override
  String get delete_transaction => 'Remove this transaction?';

  @override
  String get delete_transaction_confirmation => 'Are you sure do you wanna remove this transaction?';

  @override
  String get description => 'Description';

  @override
  String get detail_transaction => 'Transaction Detail';

  @override
  String get document => 'Document';

  @override
  String get edit => 'Edit';

  @override
  String get edit_transaction => 'Edit transaction';

  @override
  String get empty_field => 'This field can not be empty';

  @override
  String get end_after => 'End After';

  @override
  String get expense => 'Expense';

  @override
  String get expenseAlert => 'Expense Alert';

  @override
  String get expenseAlertDescription => 'Get notification about you’re expense';

  @override
  String get exportData => 'Export Data';

  @override
  String get faceId => 'Face ID';

  @override
  String get filter_by => 'Filter By';

  @override
  String get filter_transactions => 'Filter Transactions';

  @override
  String get fingerprint => 'Fingerprint';

  @override
  String get forgot_password => 'Forgot Password';

  @override
  String get forgot_password_instruction => 'Enter your email and we’ll send you a link to reset your password.';

  @override
  String get forgot_password_title => 'Don\'t worry.';

  @override
  String get frequency => 'Frequency';

  @override
  String get googleError_userCancelled => 'You canceled the login process';

  @override
  String get help => 'Help';

  @override
  String get home => 'Home';

  @override
  String get how_much => 'How much?';

  @override
  String get image => 'Image';

  @override
  String get income => 'Income';

  @override
  String get language => 'Language';

  @override
  String get languageError_notSuppported => 'Error';

  @override
  String get language_english => 'English';

  @override
  String get language_vietnamese => 'Vietnamese';

  @override
  String get login => 'Login';

  @override
  String get logout => 'Logout';

  @override
  String get logout_confirmation => 'Are you sure you want to logout?';

  @override
  String get no_str => 'No';

  @override
  String get note => 'Note';

  @override
  String get notification => 'Notification';

  @override
  String get pin => 'PIN';

  @override
  String get profile => 'Profile';

  @override
  String get receive_alert_subtitle => 'Receive alert when it reaches some point.';

  @override
  String get receive_alert_title => 'Receive Alert';

  @override
  String get recent_transactions => 'Recent Transactions';

  @override
  String get repeat_str => 'Repeat';

  @override
  String get repeat_transaction => 'Repeat transaction, set your own time';

  @override
  String get reset => 'Reset';

  @override
  String get security => 'Security';

  @override
  String get seeYourFinancialReport => 'See your financial report';

  @override
  String get see_all => 'See all';

  @override
  String get settings => 'Settings';

  @override
  String get signUp => 'Sign Up';

  @override
  String get sort_by => 'Sort By';

  @override
  String get spend_frequency => 'Spend Frequency';

  @override
  String get tipsAndArticles => 'Tips and Articles';

  @override
  String get tipsAndArticlesDescription => 'Small & useful pieces of pratical financial advice';

  @override
  String get transactions => 'Transactions';

  @override
  String transactionsOverviewTransactionDeletedSnackbarText(Object transactionTitle) {
    return 'Transaction \"$transactionTitle\" deleted.';
  }

  @override
  String get transfer => 'Transfer';

  @override
  String get type => 'Type';

  @override
  String get undo => 'Undo';

  @override
  String get create_new_wallet => 'Create new wallet';

  @override
  String get create_new_category => 'Create new category';

  @override
  String get delete_confirmation_1 => 'Are you sure?';

  @override
  String get delete_confirmation_2 => 'This action cannot be undone';

  @override
  String delete_confirmation_3(Object categoryName) {
    return 'Delete $categoryName category';
  }

  @override
  String get name => 'Name';

  @override
  String get wallet => 'Wallet';

  @override
  String get yes_str => 'Yes';
}
