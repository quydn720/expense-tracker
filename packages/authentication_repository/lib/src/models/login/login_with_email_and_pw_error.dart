import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_with_email_and_pw_error.freezed.dart';

@freezed
abstract class LoginWithEmailAndPasswordError
    with _$LoginWithEmailAndPasswordError {
  const factory LoginWithEmailAndPasswordError.unknown() =
      _LoginWithEmailAndPasswordError_UnknownError;
  const factory LoginWithEmailAndPasswordError.invalidEmail() =
      LoginWithEmailAndPasswordError_InvalidEmail;
  const factory LoginWithEmailAndPasswordError.userDisabled() =
      LoginWithEmailAndPasswordError_UserDisabled;
  const factory LoginWithEmailAndPasswordError.userNotFound() =
      LoginWithEmailAndPasswordError_UserNotFound;
  const factory LoginWithEmailAndPasswordError.wrongPassword() =
      LoginWithEmailAndPasswordError_WrongPassword;

  factory LoginWithEmailAndPasswordError.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const LoginWithEmailAndPasswordError_InvalidEmail();
      case 'user-disabled':
        return const LoginWithEmailAndPasswordError_UserDisabled();
      case 'user-not-found':
        return const LoginWithEmailAndPasswordError_UserNotFound();
      case 'wrong-password':
        return const LoginWithEmailAndPasswordError_WrongPassword();
      default:
        return const _LoginWithEmailAndPasswordError_UnknownError();
    }
  }
}
