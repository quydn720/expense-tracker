import 'package:formz/formz.dart';

enum NormalTextError { empty, invalid }

class NormalText extends FormzInput<String, NormalTextError> {
  const NormalText.pure(super.value) : super.pure();
  const NormalText.dirty([super.value = '']) : super.dirty();

  @override
  NormalTextError? validator(String value) {
    if (value.isEmpty) return NormalTextError.empty;
    if (value.contains('.')) return NormalTextError.invalid;
    return null;
  }
}

class TermsAgreementCheck extends FormzInput<bool, String> {
  const TermsAgreementCheck.pure({bool value = false}) : super.pure(value);
  const TermsAgreementCheck.dirty({required bool value}) : super.dirty(value);

  @override
  String? validator(bool value) {
    if (!value) return 'You have to agree the Terms...';
    return null;
  }
}

class EmailInput extends FormzInput<String, String> {
  const EmailInput.pure(super.value) : super.pure();
  const EmailInput.dirty([super.value = '']) : super.dirty();

  @override
  String? validator(String value) {
    if (value.isEmpty) return 'Can not be empty';
    return null;
  }
}

class PasswordInput extends FormzInput<String, String> {
  const PasswordInput.pure(super.value) : super.pure();
  const PasswordInput.dirty([super.value = '']) : super.dirty();

  @override
  String? validator(String value) {
    if (value.isEmpty) return 'Can not be empty';
    return null;
  }
}
