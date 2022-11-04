part of 'login_form_cubit.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    @Default(EmailInput.pure('')) EmailInput email,
    @Default(PasswordInput.pure('')) PasswordInput password,
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(true) bool isObscured,
    LoginFailure? loginFailure,
  }) = _LoginFormState;
}
