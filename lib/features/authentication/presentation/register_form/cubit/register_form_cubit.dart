import 'package:bloc/bloc.dart';
import 'package:expense_tracker/features/authentication/domain/entities/form_value.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/register_with_email_and_pw.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_form_cubit.freezed.dart';
part 'register_form_state.dart';

@injectable
class RegisterFormCubit extends Cubit<RegisterState> {
  RegisterFormCubit({
    required RegisterWithEmailAndPwUseCase registerWithEmailAndPwUseCase,
  })  : _registerWithEmailAndPwUseCase = registerWithEmailAndPwUseCase,
        super(const RegisterState());

  final RegisterWithEmailAndPwUseCase _registerWithEmailAndPwUseCase;

  void onNameChanged(String v) {
    final name = NormalText.dirty(v);

    emit(
      state.copyWith(
        name: name,
        status: Formz.validate(
          [name, state.email, state.password, state.termsAgreement],
        ),
      ),
    );
  }

  void onEmailChanged(String v) {
    final email = EmailInput.dirty(v);

    emit(
      state.copyWith(
        email: email,
        status: Formz.validate(
          [email, state.name, state.password, state.termsAgreement],
        ),
      ),
    );
  }

  void onPasswordChanged(String v) {
    final password = PasswordInput.dirty(v);

    emit(
      state.copyWith(
        password: password,
        status: Formz.validate(
          [password, state.name, state.email, state.termsAgreement],
        ),
      ),
    );
  }

  void onTermAgreementCheck() {
    final termsAgreement = TermsAgreementCheck.dirty(
      value: !state.termsAgreement.value,
    );
    emit(
      state.copyWith(
        termsAgreement: termsAgreement,
        status: Formz.validate(
          [termsAgreement, state.name, state.email, state.password],
        ),
      ),
    );
  }

  void onButtonClicked() {
    _registerWithEmailAndPwUseCase(
      email: state.email.value,
      password: state.password.value,
    );
  }
}
