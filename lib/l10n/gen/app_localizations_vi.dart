import 'app_localizations.dart';

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get signUp => 'Đăng ký';

  @override
  String get login => 'Đăng nhập';

  @override
  String get authError_invalidEmail => 'Email không đúng định dạng.';

  @override
  String get authError_userDisabled => 'Người dùng này đã bị vô hiệu hóa. Vui lòng liên hệ chúng tôi để được hỗ trợ.';

  @override
  String get authError_userNotFound => 'Không tìm thấy tài khoản nào với email này, hãy tạo tài khoản mới.';

  @override
  String get authError_wrongPassword => 'Sai mật khẩu. Mời bạn thử lại.';

  @override
  String get authError_unknownException => 'Đã xảy ra lỗi. Vui lòng thử lại sau hoặc liên hệ bộ phận hỗ trợ.';

  @override
  String get forgot_password => 'Quên mật khẩu';

  @override
  String get continue_str => 'Tiếp tục';

  @override
  String get forgot_password_title => 'Đừng lo lắng.';

  @override
  String get forgot_password_instruction => 'Nhập email của bạn và chúng tôi sẽ gửi link yêu cầu cài đặt mật khẩu mới.';

  @override
  String forgot_password_sent(String email) {
    return 'Kiểm tra email $email và làm theo hướng dẫn để cài đặt mật khẩu mới.';
  }

  @override
  String get add_attactment => 'Thêm tệp đính kèm';

  @override
  String get description => 'Description';

  @override
  String get how_much => 'Giá trị giao dịch';

  @override
  String get category => 'Danh mục';

  @override
  String get expense => 'Khoản chi';

  @override
  String get income => 'Khoản thu';

  @override
  String get transfer => 'Chuyển tiền';

  @override
  String get wallet => 'Ví tiền';

  @override
  String get repeat_str => 'Lặp lại';

  @override
  String get repeat_transaction => 'Giao dịch có lặp lại';

  @override
  String get profile => 'Hồ sơ';

  @override
  String get home => 'Trang chủ';

  @override
  String get transactions => 'Giao dịch';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get languageError_notSuppported => 'Ứng dụng chưa hỗ trợ ngôn ngữ này. Vui lòng liên hệ bộ phận hỗ trợ để được giúp đỡ.';

  @override
  String get language_vietnamese => 'Tiếng Việt';

  @override
  String get language_english => 'Tiếng Anh';

  @override
  String get theme => 'Theme';

  @override
  String get theme_light => 'Light';

  @override
  String get theme_dark => 'Dark';

  @override
  String get theme_system => 'Use device theme';

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
