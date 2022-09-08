part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(NormalText.pure('')) NormalText name,
    @Default(EmailInput.pure('')) EmailInput email,
    @Default(PasswordInput.pure('')) PasswordInput password,
    @Default(false) bool termsAgreement,
    @Default(FormzStatus.pure) FormzStatus status,
  }) = _RegisterState;
}
