import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/email_address.dart';
import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/password.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<EmailChanged>((event, emit) {
      emit(state.copyWith(
        emailAddress: EmailAddress(event.emailStr),
        authFailureOrSuccessOption: none(),
      ));
    });

    on<DisplayNameChanged>((event, emit) {
      emit(state.copyWith(
        displayName: event.displayName,
        authFailureOrSuccessOption: none(),
      ));
    });

    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(
        password: Password(event.passwordStr),
        authFailureOrSuccessOption: none(),
      ));
    });

    on<CheckboxChanged>((event, emit) {
      emit(state.copyWith(
        checkboxState: event.checkboxState,
        authFailureOrSuccessOption: none(),
      ));
    });
    on<ShowPasswordPressed>((event, emit) {
      emit(state.copyWith(
        isPasswordVisible: !state.isPasswordVisible,
        authFailureOrSuccessOption: none(),
      ));
    });

    on<SignInWithGooglePressed>((event, emit) async {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));
      final failureOrSuccess = await _authFacade.signInWithGoogle();
      emit(state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess)));
    });

    on<RegisterWithEmailAndPasswordPressed>(
      (event, emit) async {
        late Either<AuthFailure, Unit> failureOrSuccess;
        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();
        if (state.checkboxState) {
          // if user has tick the checkbox, then we continue to check email/pw
          if (isEmailValid && isPasswordValid) {
            emit(state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ));
            failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
              emailAddress: state.emailAddress,
              password: state.password,
              displayName: state.displayName,
              // TODO: Should move the display name to another event
              // like [UpdateUserInfo]
            );
          }
          emit(state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: optionOf(failureOrSuccess),
          ));
        } else {
          emit(state.copyWith(
            checkboxState: false,
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: optionOf(left(const NotAgreeTerms())),
          ));
        }
      },
    );

    on<SignInWithEmailAndPasswordPressed>((event, emit) async {
      late Either<AuthFailure, Unit> failureOrSuccess;
      final isEmailValid = state.emailAddress.isValid();
      final isPasswordValid = state.password.isValid();
      if (isEmailValid && isPasswordValid) {
        emit(state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ));

        failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
          emailAddress: state.emailAddress,
          password: state.password,
        );
      }
      emit(state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));
    });
  }
}
