// ignore_for_file: inference_failure_on_instance_creation

part of 'login_form_cubit.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    @Default(EmailInput.pure('')) EmailInput email,
    @Default(PasswordInput.pure('')) PasswordInput password,
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(true) bool isObscured,
    @Default(None())
        Option<Either<LogInWithEmailAndPasswordFailure, Unit>>
            authFailureOrSuccessOption,
  }) = _LoginFormState;
}