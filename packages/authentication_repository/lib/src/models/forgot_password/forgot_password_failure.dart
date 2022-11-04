import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_failure.freezed.dart';

@freezed
class ForgotPasswordFailure with _$ForgotPasswordFailure implements Exception {
  const factory ForgotPasswordFailure({String? message}) =
      _ForgotPasswordFailure;
  const factory ForgotPasswordFailure.invalidEmail() =
      ForgotPasswordFailure_InvalidEmail;
  const factory ForgotPasswordFailure.userNotFound() =
      ForgotPasswordFailure_UserNotFound;

  /// Create an authentication message
  /// from a firebase authentication exception code.
  factory ForgotPasswordFailure.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const ForgotPasswordFailure.invalidEmail();
      case 'user-not-found':
        return const ForgotPasswordFailure.userNotFound();
      default:
        return ForgotPasswordFailure(message: code);
    }
  }
}
