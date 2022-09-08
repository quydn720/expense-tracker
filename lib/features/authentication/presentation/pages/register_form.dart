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

class NormalBoolInput extends FormzInput<bool, String> {
  NormalBoolInput.pure(super.value) : super.pure();

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
