part of 'signup_cubit.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    String? errorMessage,
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(ConfirmedPassword.pure()) ConfirmedPassword confirmedPassword,
    @Default(FormzStatus.pure) FormzStatus status,
  }) = _SignupState;
}
