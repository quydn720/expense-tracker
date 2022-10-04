import 'package:authentication_repository/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_email_and_pw.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/form_value.dart';

part 'login_form_state.dart';
part 'login_form_cubit.freezed.dart';

class LoginFormCubit extends Cubit<LoginFormState> {
  LoginFormCubit({
    required LoginWithEmailAndPwUseCase loginWithEmailAndPwUseCase,
  })  : _loginWithEmailAndPwUseCase = loginWithEmailAndPwUseCase,
        super(const LoginFormState());

  final LoginWithEmailAndPwUseCase _loginWithEmailAndPwUseCase;

  Future<void> onButtonClicked() async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    final failure = await _loginWithEmailAndPwUseCase(
      email: state.email.value,
      password: state.password.value,
    );
    failure.fold(
      (l) {
        emit(
          state.copyWith(
            authFailureOrSuccessOption: optionOf(failure),
            status: FormzStatus.submissionFailure,
          ),
        );
      },
      (r) {
        emit(
          state.copyWith(
            authFailureOrSuccessOption: none(),
            status: FormzStatus.submissionSuccess,
          ),
        );
      },
    );
  }

  void onEmailChanged(String v) {
    final email = EmailInput.dirty(v);

    emit(
      state.copyWith(
        email: email,
        status: Formz.validate([email, state.password]),
      ),
    );
  }

  void onPasswordChanged(String v) {
    final password = PasswordInput.dirty(v);

    emit(
      state.copyWith(
        password: password,
        status: Formz.validate([password, state.email]),
      ),
    );
  }

  void toggle() {
    final obscured = !state.isObscured;
    emit(state.copyWith(isObscured: obscured));
  }
}
