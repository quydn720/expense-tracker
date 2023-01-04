import 'app_localizations.dart';

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get select_color => 'Chọn màu sắc';

  @override
  String get color => 'Màu sắc';

  @override
  String forgot_password_sent(String email) {
    return 'Kiểm tra email $email và làm theo hướng dẫn để cài đặt mật khẩu mới.';
  }

  @override
  String get about => 'Về chúng tôi';

  @override
  String get account => 'Tài khoản thanh toán';

  @override
  String get account_balance => 'Số dư tài khoản';

  @override
  String get add_attachment => 'Thêm tệp đính kèm';

  @override
  String get add_category => 'Thêm danh mục mới';

  @override
  String get add_new_transaction => 'Thêm giao dịch mới';

  @override
  String get add_wallet => 'Thêm ví mới';

  @override
  String get amount_field_validation_emptyOrNegativeAmount => 'Giá trị giao dịch không thể nhỏ hơn hoặc bằng 0';

  @override
  String get amount_field_validation_invalidAmount => 'Giá trị giao dịch không thể chứa các kí tự đặc biệt';

  @override
  String get appearance => 'Giao diện';

  @override
  String get appearance_dark => 'Tối';

  @override
  String get appearance_light => 'Sáng';

  @override
  String get appearance_system => 'Tự động';

  @override
  String get attachment => 'Tệp đính kèm';

  @override
  String get authError_invalidEmail => 'Email không đúng định dạng.';

  @override
  String get authError_unknownException => 'Đã xảy ra lỗi. Vui lòng thử lại sau hoặc liên hệ bộ phận hỗ trợ.';

  @override
  String get authError_userDisabled => 'Người dùng này đã bị vô hiệu hóa. Vui lòng liên hệ chúng tôi để được hỗ trợ.';

  @override
  String get authError_userNotFound => 'Không tìm thấy tài khoản nào với email này, hãy tạo tài khoản mới.';

  @override
  String get authError_wrongPassword => 'Sai mật khẩu. Mời bạn thử lại.';

  @override
  String get budget => 'Ví của bạn';

  @override
  String get budgetDescription => 'Get notification when you’re budget exceeding the limit';

  @override
  String get camera => 'Camera';

  @override
  String get category => 'Danh mục';

  @override
  String get continue_str => 'Tiếp tục';

  @override
  String get create_budget => 'Tạo ví mới';

  @override
  String get currency => 'Đơn vị tiền tệ';

  @override
  String get delete_transaction => 'Xóa giao dịch này?';

  @override
  String get delete_transaction_confirmation => 'Bạn chắc chắn muốn xóa giao dịch này?';

  @override
  String get description => 'Ghi chú';

  @override
  String get detail_transaction => 'Chi tiết giao dịch';

  @override
  String get document => 'Tệp tài liệu';

  @override
  String get edit => 'Sửa giao dịch';

  @override
  String get edit_transaction => 'Chỉnh sửa giao dịch';

  @override
  String get empty_field => 'Bạn phải chọn / điền vào trường này';

  @override
  String get end_after => 'Kết thúc sau';

  @override
  String get expense => 'Khoản chi';

  @override
  String get expenseAlert => 'Expense Alert';

  @override
  String get expenseAlertDescription => 'Get notification about you’re expense';

  @override
  String get exportData => 'Xuất dữ liệu';

  @override
  String get faceId => 'Face ID';

  @override
  String get filter_by => 'Lọc theo loại giao dịch';

  @override
  String get filter_transactions => 'Lọc và sắp xếp giao dịch';

  @override
  String get fingerprint => 'Fingerprint';

  @override
  String get forgot_password => 'Quên mật khẩu';

  @override
  String get forgot_password_instruction => 'Nhập email của bạn và chúng tôi sẽ gửi link yêu cầu cài đặt mật khẩu mới.';

  @override
  String get forgot_password_title => 'Đừng lo lắng.';

  @override
  String get frequency => 'Chu kỳ';

  @override
  String get googleError_userCancelled => 'Hủy quá trình đăng nhập với tài khoản Google';

  @override
  String get help => 'Bạn cần giúp đỡ?';

  @override
  String get home => 'Trang chủ';

  @override
  String get how_much => 'Giá trị giao dịch';

  @override
  String get image => 'Hình ảnh';

  @override
  String get income => 'Khoản thu';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get languageError_notSuppported => 'Ứng dụng chưa hỗ trợ ngôn ngữ này. Vui lòng liên hệ bộ phận hỗ trợ để được giúp đỡ.';

  @override
  String get language_english => 'Tiếng Anh';

  @override
  String get language_vietnamese => 'Tiếng Việt';

  @override
  String get login => 'Đăng nhập';

  @override
  String get logout => 'Đăng xuất';

  @override
  String get logout_confirmation => 'Bạn có muốn đăng xuất không?';

  @override
  String get no_str => 'Không';

  @override
  String get note => 'Ghi chú';

  @override
  String get notification => 'Thông báo';

  @override
  String get pin => 'PIN';

  @override
  String get profile => 'Hồ sơ';

  @override
  String get receive_alert_subtitle => 'Nhận thông báo khi tổng số giao dịch vượt qua hạn mức';

  @override
  String get receive_alert_title => 'Nhận thông báo';

  @override
  String get recent_transactions => 'Giao dịch gần đây';

  @override
  String get repeat_str => 'Lặp lại';

  @override
  String get repeat_transaction => 'Giao dịch có lặp lại';

  @override
  String get reset => 'Đặt lại';

  @override
  String get security => 'Bảo mật';

  @override
  String get seeYourFinancialReport => 'Xem báo cáo giao dịch của bạn';

  @override
  String get see_all => 'Xem tất cả';

  @override
  String get settings => 'Cài đặt';

  @override
  String get signUp => 'Đăng ký';

  @override
  String get sort_by => 'Sắp xếp theo';

  @override
  String get spend_frequency => 'Báo cáo chi tiêu';

  @override
  String get tipsAndArticles => 'Tips and Articles';

  @override
  String get tipsAndArticlesDescription => 'Dich sang tieng Viet';

  @override
  String get transactions => 'Giao dịch';

  @override
  String transactionsOverviewTransactionDeletedSnackbarText(Object transactionTitle) {
    return 'Giao dịch \"$transactionTitle\" đã bị xóa.';
  }

  @override
  String get transfer => 'Chuyển tiền';

  @override
  String get type => 'Loại';

  @override
  String get undo => 'Hoàn tác';

  @override
  String get create_new_wallet => 'Tạo ví mới';

  @override
  String get create_new_category => 'Tạo danh mục mới';

  @override
  String get delete_confirmation_1 => 'Bạn có muốn xóa danh mục này?';

  @override
  String get delete_confirmation_2 => 'Tác vụ này không thể hoàn tác';

  @override
  String delete_confirmation_3(Object categoryName) {
    return 'Xóa danh mục $categoryName';
  }

  @override
  String get name => 'Tên';

  @override
  String get wallet => 'Ví tiền';

  @override
  String get yes_str => 'Có';
}
