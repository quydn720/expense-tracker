import 'app_localizations.dart';

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get signUp => 'Đăng ký';

  @override
  String get login => 'Đăng nhập';

  @override
  String get logout => 'Đăng xuất';

  @override
  String get logout_confirmation => 'Bạn có muốn đăng xuất không?';

  @override
  String get yes_str => 'Có';

  @override
  String get no_str => 'Không';

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
  String get googleError_userCancelled => 'Hủy quá trình đăng nhập với tài khoản Google';

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
  String get delete_transaction => 'Xóa giao dịch này?';

  @override
  String get delete_transaction_confirmation => 'Bạn chắc chắn muốn xóa giao dịch này?';

  @override
  String get account_balance => 'Số dư tài khoản';

  @override
  String get recent_transactions => 'Giao dịch gần đây';

  @override
  String get see_all => 'Xem tất cả';

  @override
  String get spend_frequency => 'Báo cáo chi tiêu';

  @override
  String get add_attachment => 'Thêm tệp đính kèm';

  @override
  String get note => 'Ghi chú';

  @override
  String get how_much => 'Giá trị giao dịch';

  @override
  String get amount_field_validation_invalidAmount => 'Giá trị giao dịch không thể chứa các kí tự đặc biệt';

  @override
  String get amount_field_validation_emptyOrNegativeAmount => 'Giá trị giao dịch không thể nhỏ hơn hoặc bằng 0';

  @override
  String get category => 'Danh mục';

  @override
  String get add_new_transaction => 'Thêm giao dịch mới';

  @override
  String get edit_transaction => 'Chỉnh sửa giao dịch';

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
  String get account => 'Tài khoản thanh toán';

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
  String get appearance => 'Giao diện';

  @override
  String get appearance_light => 'Sáng';

  @override
  String get appearance_dark => 'Tối';

  @override
  String get appearance_system => 'Tự động';

  @override
  String get currency => 'Đơn vị tiền tệ';

  @override
  String get settings => 'Cài đặt';

  @override
  String get exportData => 'Xuất dữ liệu';

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
  String get create_budget => 'Tạo ví mới';

  @override
  String get budgetDescription => 'Get notification when you’re budget exceeding the limit';

  @override
  String get tipsAndArticles => 'Tips and Articles';

  @override
  String get tipsAndArticlesDescription => 'Dich sang tieng Viet';

  @override
  String get about => 'Về chúng tôi';

  @override
  String get detail_transaction => 'Chi tiết giao dịch';

  @override
  String get description => 'Ghi chú';

  @override
  String get attachment => 'Tệp đính kèm';

  @override
  String get edit => 'Sửa giao dịch';

  @override
  String get help => 'Bạn cần giúp đỡ?';
}
