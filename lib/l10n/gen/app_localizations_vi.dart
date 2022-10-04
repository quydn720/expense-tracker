import 'app_localizations.dart';

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get signUp => 'Đăng ký';

  @override
  String get login => 'Đăng nhập';

  @override
  String get invalidEmail => 'Email không đúng định dạng.';

  @override
  String get userDisabled => 'Người dùng này đã bị vô hiệu hóa. Vui lòng liên hệ chúng tôi để được hỗ trợ.';

  @override
  String get userNotFound => 'Không tìm thấy tài khoản nào với email này, hãy tạo tài khoản mới.';

  @override
  String get wrongPassword => 'Sai mật khẩu. Mời bạn thử lại.';

  @override
  String get unknownException => 'Đã xảy ra lỗi. Vui lòng thử lại sau hoặc liên hệ bộ phận hỗ trợ.';

  @override
  String get profile => 'Hồ sơ';

  @override
  String get home => 'Trang chủ';

  @override
  String get transactions => 'Giao dịch';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get theme => 'Theme';

  @override
  String get light => 'Light';

  @override
  String get dark => 'Dark';

  @override
  String get useDeviceTheme => 'Use device theme';

  @override
  String get currency => 'Đơn vị tiền tệ';

  @override
  String get settings => 'Cài đặt';

  @override
  String get security => 'Bảo mật';

  @override
  String get pin => 'PIN';

  @override
  String get fingerprint => 'Fingerprint';

  @override
  String get faceId => 'Face ID';

  @override
  String get notification => 'Thông báo';

  @override
  String get expenseAlert => 'Expense Alert';

  @override
  String get expenseAlertDescription => 'Get notification about you’re expense';

  @override
  String get budget => 'Ví của bạn';

  @override
  String get budgetDescription => 'Get notification when you’re budget exceeding the limit';

  @override
  String get tipsAndArticles => 'Tips and Articles';

  @override
  String get tipsAndArticlesDescription => 'Dich sang tieng Viet';

  @override
  String get about => 'Về chúng tôi';

  @override
  String get help => 'Bạn cần giúp đỡ?';
}
