import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_with_google_error.freezed.dart';

@freezed
abstract class LoginWithGoogleError with _$LoginWithGoogleError {
  const factory LoginWithGoogleError.unknown() = _LoginWithGoogleError;
  const factory LoginWithGoogleError.invalidCredential() =
      LoginWithGoogleError_InvalidCredential;
  const factory LoginWithGoogleError.accountExistsWithDifferentCredential() =
      LoginWithGoogleError_AccountExistsWithDifferentCredential;
  const factory LoginWithGoogleError.operationNotAllowed() =
      LoginWithGoogleError_OperationNotAllowed;
  const factory LoginWithGoogleError.userDisabled() =
      LoginWithGoogleError_UserDisabled;
  const factory LoginWithGoogleError.userNotFound() =
      LoginWithGoogleError_UserNotFound;
  const factory LoginWithGoogleError.wrongPassword() =
      LoginWithGoogleError_WrongPassword;
  const factory LoginWithGoogleError.invalidVerificationCode() =
      LoginWithGoogleError_InvalidVerificationCode;
  const factory LoginWithGoogleError.invalidVerificationId() =
      LoginWithGoogleError_InvalidVerificationId;

  factory LoginWithGoogleError.fromCode(String code) {
    switch (code) {
      case 'account-exists-with-different-credential':
        // ignore: lines_longer_than_80_chars
        return const LoginWithGoogleError_AccountExistsWithDifferentCredential();
      case 'invalid-credential':
        return const LoginWithGoogleError_InvalidCredential();
      case 'operation-not-allowed':
        return const LoginWithGoogleError_OperationNotAllowed();
      case 'user-disabled':
        return const LoginWithGoogleError_UserDisabled();
      case 'user-not-found':
        return const LoginWithGoogleError_UserNotFound();
      case 'wrong-password':
        return const LoginWithGoogleError_WrongPassword();
      case 'invalid-verification-code':
        return const LoginWithGoogleError_InvalidVerificationCode();
      case 'invalid-verification-id':
        return const LoginWithGoogleError_InvalidVerificationId();
      default:
        return const _LoginWithGoogleError();
    }
  }
}
