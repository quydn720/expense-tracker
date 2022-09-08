import 'package:bloc/bloc.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/register_with_email_and_pw.dart';
import 'package:expense_tracker/features/authentication/presentation/pages/register_form.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit({
    required RegisterWithEmailAndPwUseCase registerWithEmailAndPwUseCase,
  })  : _registerWithEmailAndPwUseCase = registerWithEmailAndPwUseCase,
        super(const RegisterState());

  final RegisterWithEmailAndPwUseCase _registerWithEmailAndPwUseCase;

  void onNameChanged(String v) {
    final name = NormalText.dirty(v);

    emit(
      state.copyWith(
        name: name,
        status: Formz.validate([name, state.email, state.password]),
      ),
    );
  }

  void onEmailChanged(String v) {
    final email = EmailInput.dirty(v);

    emit(
      state.copyWith(
        email: email,
        status: Formz.validate([email, state.name, state.password]),
      ),
    );
  }

  void onPasswordChanged(String v) {
    final password = PasswordInput.dirty(v);

    emit(
      state.copyWith(
        password: password,
        status: Formz.validate([password, state.name, state.email]),
      ),
    );
  }

  void onTermAgreementCheck() {
    emit(state.copyWith(termsAgreement: !state.termsAgreement));
  }

  void onButtonClicked() {
    _registerWithEmailAndPwUseCase(
      email: state.email.value,
      password: state.password.value,
    );
  }
}
