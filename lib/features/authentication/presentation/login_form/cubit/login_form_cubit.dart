import 'package:authentication_repository/authentication_repository.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_email_and_pw.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/form_value.dart';
import '../../../domain/usecases/login_with_google_account.dart';

part 'login_form_state.dart';
part 'login_form_cubit.freezed.dart';

class LoginFormCubit extends Cubit<LoginFormState> {
  LoginFormCubit({
    required LoginWithGoogleUseCase loginWithGoogleUseCase,
    required LoginWithEmailAndPwUseCase loginWithEmailAndPwUseCase,
  })  : _loginWithEmailAndPwUseCase = loginWithEmailAndPwUseCase,
        _loginWithGoogleUseCase = loginWithGoogleUseCase,
        super(const LoginFormState());

  final LoginWithEmailAndPwUseCase _loginWithEmailAndPwUseCase;
  final LoginWithGoogleUseCase _loginWithGoogleUseCase;

  Future<void> onSignInWithGoogleButtonClicked() async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    await _loginWithGoogleUseCase().then(
      (value) => value.leftMap((l) {
        emit(
          state.copyWith(
            status: FormzStatus.submissionFailure,
            loginFailure: l,
          ),
        );
      }),
    );
  }

  Future<void> onLoginButtonClicked() async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    final loginResult = await _loginWithEmailAndPwUseCase(
      email: state.email.value,
      password: state.password.value,
    );

    loginResult.fold(
      (failure) => emit(
        state.copyWith(
          status: FormzStatus.submissionFailure,
          loginFailure: failure,
        ),
      ),
      (_) => emit(state.copyWith(status: FormzStatus.submissionSuccess)),
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

  @override
  Future<void> close() {
    // print('login cubit close');
    return super.close();
  }
}
