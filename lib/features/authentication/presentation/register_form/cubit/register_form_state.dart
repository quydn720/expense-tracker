part of 'register_form_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(NormalText.pure('')) NormalText name,
    @Default(EmailInput.pure('')) EmailInput email,
    @Default(PasswordInput.pure('')) PasswordInput password,
    @Default(TermsAgreementCheck.pure()) TermsAgreementCheck termsAgreement,
    @Default(true) bool isObscured,
    @Default(FormzStatus.pure) FormzStatus status,
  }) = _RegisterState;
}
