import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_vi.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi')
  ];

  /// No description provided for @select_color.
  ///
  /// In en, this message translates to:
  /// **'Select color'**
  String get select_color;

  /// No description provided for @color.
  ///
  /// In en, this message translates to:
  /// **'Color'**
  String get color;

  /// Send user prompt with user's email.
  ///
  /// In en, this message translates to:
  /// **'Check your email {email} and follow the instructions to reset your password'**
  String forgot_password_sent(String email);

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @account_balance.
  ///
  /// In en, this message translates to:
  /// **'Account Balance'**
  String get account_balance;

  /// No description provided for @add_attachment.
  ///
  /// In en, this message translates to:
  /// **'Add attachment'**
  String get add_attachment;

  /// No description provided for @add_category.
  ///
  /// In en, this message translates to:
  /// **'Add new category'**
  String get add_category;

  /// No description provided for @add_new_transaction.
  ///
  /// In en, this message translates to:
  /// **'Add new transaction'**
  String get add_new_transaction;

  /// No description provided for @add_wallet.
  ///
  /// In en, this message translates to:
  /// **'Add new wallet'**
  String get add_wallet;

  /// No description provided for @amount_field_validation_emptyOrNegativeAmount.
  ///
  /// In en, this message translates to:
  /// **'The amount\'s value could not be negative or zero.'**
  String get amount_field_validation_emptyOrNegativeAmount;

  /// No description provided for @amount_field_validation_invalidAmount.
  ///
  /// In en, this message translates to:
  /// **'Has invalid characters, please fix it.'**
  String get amount_field_validation_invalidAmount;

  /// No description provided for @appearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// No description provided for @appearance_dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get appearance_dark;

  /// No description provided for @appearance_light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get appearance_light;

  /// No description provided for @appearance_system.
  ///
  /// In en, this message translates to:
  /// **'Auto'**
  String get appearance_system;

  /// No description provided for @attachment.
  ///
  /// In en, this message translates to:
  /// **'Attachment'**
  String get attachment;

  /// No description provided for @authError_invalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Email is not valid or badly formatted.'**
  String get authError_invalidEmail;

  /// No description provided for @authError_unknownException.
  ///
  /// In en, this message translates to:
  /// **'An unknown exception occurred.'**
  String get authError_unknownException;

  /// No description provided for @authError_userDisabled.
  ///
  /// In en, this message translates to:
  /// **'This user has been disabled. Please contact support for help.'**
  String get authError_userDisabled;

  /// No description provided for @authError_userNotFound.
  ///
  /// In en, this message translates to:
  /// **'Email is not found, please create an account.'**
  String get authError_userNotFound;

  /// No description provided for @authError_wrongPassword.
  ///
  /// In en, this message translates to:
  /// **'Incorrect password, please try again.'**
  String get authError_wrongPassword;

  /// No description provided for @budget.
  ///
  /// In en, this message translates to:
  /// **'Budget'**
  String get budget;

  /// No description provided for @budgetDescription.
  ///
  /// In en, this message translates to:
  /// **'Get notification when you’re budget exceeding the limit'**
  String get budgetDescription;

  /// No description provided for @camera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get camera;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @continue_str.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continue_str;

  /// No description provided for @create_budget.
  ///
  /// In en, this message translates to:
  /// **'Create new budget'**
  String get create_budget;

  /// No description provided for @currency.
  ///
  /// In en, this message translates to:
  /// **'Currency'**
  String get currency;

  /// No description provided for @delete_transaction.
  ///
  /// In en, this message translates to:
  /// **'Remove this transaction?'**
  String get delete_transaction;

  /// No description provided for @delete_transaction_confirmation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure do you wanna remove this transaction?'**
  String get delete_transaction_confirmation;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @detail_transaction.
  ///
  /// In en, this message translates to:
  /// **'Transaction Detail'**
  String get detail_transaction;

  /// No description provided for @document.
  ///
  /// In en, this message translates to:
  /// **'Document'**
  String get document;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @edit_transaction.
  ///
  /// In en, this message translates to:
  /// **'Edit transaction'**
  String get edit_transaction;

  /// No description provided for @empty_field.
  ///
  /// In en, this message translates to:
  /// **'This field can not be empty'**
  String get empty_field;

  /// No description provided for @end_after.
  ///
  /// In en, this message translates to:
  /// **'End After'**
  String get end_after;

  /// No description provided for @expense.
  ///
  /// In en, this message translates to:
  /// **'Expense'**
  String get expense;

  /// No description provided for @expenseAlert.
  ///
  /// In en, this message translates to:
  /// **'Expense Alert'**
  String get expenseAlert;

  /// No description provided for @expenseAlertDescription.
  ///
  /// In en, this message translates to:
  /// **'Get notification about you’re expense'**
  String get expenseAlertDescription;

  /// No description provided for @exportData.
  ///
  /// In en, this message translates to:
  /// **'Export Data'**
  String get exportData;

  /// No description provided for @faceId.
  ///
  /// In en, this message translates to:
  /// **'Face ID'**
  String get faceId;

  /// No description provided for @filter_by.
  ///
  /// In en, this message translates to:
  /// **'Filter By'**
  String get filter_by;

  /// No description provided for @filter_transactions.
  ///
  /// In en, this message translates to:
  /// **'Filter Transactions'**
  String get filter_transactions;

  /// No description provided for @fingerprint.
  ///
  /// In en, this message translates to:
  /// **'Fingerprint'**
  String get fingerprint;

  /// No description provided for @forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password'**
  String get forgot_password;

  /// No description provided for @forgot_password_instruction.
  ///
  /// In en, this message translates to:
  /// **'Enter your email and we’ll send you a link to reset your password.'**
  String get forgot_password_instruction;

  /// No description provided for @forgot_password_title.
  ///
  /// In en, this message translates to:
  /// **'Don\'t worry.'**
  String get forgot_password_title;

  /// No description provided for @frequency.
  ///
  /// In en, this message translates to:
  /// **'Frequency'**
  String get frequency;

  /// No description provided for @googleError_userCancelled.
  ///
  /// In en, this message translates to:
  /// **'You canceled the login process'**
  String get googleError_userCancelled;

  /// No description provided for @help.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @how_much.
  ///
  /// In en, this message translates to:
  /// **'How much?'**
  String get how_much;

  /// No description provided for @image.
  ///
  /// In en, this message translates to:
  /// **'Image'**
  String get image;

  /// No description provided for @income.
  ///
  /// In en, this message translates to:
  /// **'Income'**
  String get income;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @languageError_notSuppported.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get languageError_notSuppported;

  /// No description provided for @language_english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get language_english;

  /// No description provided for @language_vietnamese.
  ///
  /// In en, this message translates to:
  /// **'Vietnamese'**
  String get language_vietnamese;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @logout_confirmation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to logout?'**
  String get logout_confirmation;

  /// No description provided for @no_str.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no_str;

  /// No description provided for @note.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get note;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification;

  /// No description provided for @pin.
  ///
  /// In en, this message translates to:
  /// **'PIN'**
  String get pin;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @receive_alert_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Receive alert when it reaches some point.'**
  String get receive_alert_subtitle;

  /// No description provided for @receive_alert_title.
  ///
  /// In en, this message translates to:
  /// **'Receive Alert'**
  String get receive_alert_title;

  /// No description provided for @recent_transactions.
  ///
  /// In en, this message translates to:
  /// **'Recent Transactions'**
  String get recent_transactions;

  /// No description provided for @repeat_str.
  ///
  /// In en, this message translates to:
  /// **'Repeat'**
  String get repeat_str;

  /// No description provided for @repeat_transaction.
  ///
  /// In en, this message translates to:
  /// **'Repeat transaction, set your own time'**
  String get repeat_transaction;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @security.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get security;

  /// No description provided for @seeYourFinancialReport.
  ///
  /// In en, this message translates to:
  /// **'See your financial report'**
  String get seeYourFinancialReport;

  /// No description provided for @see_all.
  ///
  /// In en, this message translates to:
  /// **'See all'**
  String get see_all;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @sort_by.
  ///
  /// In en, this message translates to:
  /// **'Sort By'**
  String get sort_by;

  /// No description provided for @spend_frequency.
  ///
  /// In en, this message translates to:
  /// **'Spend Frequency'**
  String get spend_frequency;

  /// No description provided for @tipsAndArticles.
  ///
  /// In en, this message translates to:
  /// **'Tips and Articles'**
  String get tipsAndArticles;

  /// No description provided for @tipsAndArticlesDescription.
  ///
  /// In en, this message translates to:
  /// **'Small & useful pieces of pratical financial advice'**
  String get tipsAndArticlesDescription;

  /// No description provided for @transactions.
  ///
  /// In en, this message translates to:
  /// **'Transactions'**
  String get transactions;

  /// No description provided for @transactionsOverviewTransactionDeletedSnackbarText.
  ///
  /// In en, this message translates to:
  /// **'Transaction \"{transactionTitle}\" deleted.'**
  String transactionsOverviewTransactionDeletedSnackbarText(Object transactionTitle);

  /// No description provided for @transfer.
  ///
  /// In en, this message translates to:
  /// **'Transfer'**
  String get transfer;

  /// No description provided for @type.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get type;

  /// No description provided for @undo.
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get undo;

  /// No description provided for @create_new_wallet.
  ///
  /// In en, this message translates to:
  /// **'Create new wallet'**
  String get create_new_wallet;

  /// No description provided for @create_new_category.
  ///
  /// In en, this message translates to:
  /// **'Create new category'**
  String get create_new_category;

  /// No description provided for @delete_confirmation_1.
  ///
  /// In en, this message translates to:
  /// **'Are you sure?'**
  String get delete_confirmation_1;

  /// No description provided for @delete_confirmation_2.
  ///
  /// In en, this message translates to:
  /// **'This action cannot be undone'**
  String get delete_confirmation_2;

  /// Send user category name
  ///
  /// In en, this message translates to:
  /// **'Delete {categoryName} category'**
  String delete_confirmation_3(Object categoryName);

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @wallet.
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get wallet;

  /// No description provided for @yes_str.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes_str;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'vi': return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
