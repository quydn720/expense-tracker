import 'package:authentication_repository/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_email_and_pw.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/form_value.dart';

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
            // authFailureOrSuccessOption: optionOf(l)
          ),
        );
      }),
    );
  }

  Future<void> onLoginButtonClicked() async {
    void _emitSuccess() {
      return emit(
        state.copyWith(
          authFailureOrSuccessOption: none(),
          status: FormzStatus.submissionSuccess,
        ),
      );
    }

    void _emitFailure(Either<LogInWithEmailAndPasswordFailure, Unit> failure) {
      return emit(
        state.copyWith(
          authFailureOrSuccessOption: optionOf(failure),
          status: FormzStatus.submissionFailure,
        ),
      );
    }

    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    final failure = await _loginWithEmailAndPwUseCase(
      email: state.email.value,
      password: state.password.value,
    );

    failure.fold(
      (_) => _emitFailure(failure),
      (_) => _emitSuccess(),
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

@injectable
class LoginWithGoogleUseCase {
  LoginWithGoogleUseCase({
    required IAuthenticationRepository auth,
  }) : _auth = auth;

  final IAuthenticationRepository _auth;
  Future<Either<LogInWithGoogleFailure, Unit>> call() async {
    await _auth.logInWithGoogle();
    return right(unit);
  }
}
