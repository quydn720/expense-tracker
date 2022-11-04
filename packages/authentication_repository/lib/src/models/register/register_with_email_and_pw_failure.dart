import 'package:authentication_repository/authentication_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_with_email_and_pw_failure.freezed.dart';

/// {@template sign_up_with_email_and_password_failure}
/// Thrown if during the sign up process if a failure occurs.
/// {@endtemplate}
@freezed
abstract class SignUpWithEmailAndPasswordFailure
    with _$SignUpWithEmailAndPasswordFailure
    implements MyCustomException {
  const factory SignUpWithEmailAndPasswordFailure.unknown() =
      _SignUpWithEmailAndPasswordFailure;
  const factory SignUpWithEmailAndPasswordFailure.invalidEmail() = InvalidEmail;
  const factory SignUpWithEmailAndPasswordFailure.userDisabled() = UserDisabled;
  const factory SignUpWithEmailAndPasswordFailure.emailAlreadyInUse() =
      EmailAlreadyInUse;
  const factory SignUpWithEmailAndPasswordFailure.weakPassword() = WeakPassword;
  const factory SignUpWithEmailAndPasswordFailure.operationNotAllowed() =
      OperationNotAllowed;

  factory SignUpWithEmailAndPasswordFailure.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const InvalidEmail();
      case 'user-disabled':
        return const UserDisabled();
      case 'email-already-in-use':
        return const EmailAlreadyInUse();
      case 'weak-password':
        return const WeakPassword();
      case 'operation-not-allowed':
        return const OperationNotAllowed();
      default:
        return const _SignUpWithEmailAndPasswordFailure();
    }
  }
}
