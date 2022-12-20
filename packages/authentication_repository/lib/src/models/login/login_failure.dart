import 'package:authentication_repository/src/models/login/login_with_email_and_pw_error.dart';
import 'package:authentication_repository/src/models/login/login_with_google_error.dart';
import 'package:authentication_repository/src/models/my_custom_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_failure.freezed.dart';

/// {@template log_in_failure}
/// Thrown during the login process if a failure occurs.
/// https://pub.dev/documentation/firebase_auth/latest/firebase_auth/FirebaseAuth/signInWithEmailAndPassword.html
/// {@endtemplate}
@freezed
abstract class LoginFailure with _$LoginFailure implements MyCustomException {
  /// {@macro log_in_with_email_and_password_failure}
  const factory LoginFailure() = _LoginFailure;

  /// {@macro log_in_with_email_and_password_failure}
  const factory LoginFailure.withGoogle({
    @Default(LoginWithGoogleError.unknown()) LoginWithGoogleError code,
  }) = LoginWithGoogleFailure;

  /// {@macro log_in_with_email_and_password_failure}
  const factory LoginFailure.withEmailAndPassword({
    @Default(LoginWithEmailAndPasswordError.unknown())
        LoginWithEmailAndPasswordError code,
  }) = LoginWithEmailAndPasswordFailure;
}
