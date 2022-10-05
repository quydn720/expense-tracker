import 'package:bloc_test/bloc_test.dart';
import 'package:expense_tracker/features/authentication/domain/entities/form_value.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/register_with_email_and_pw.dart';
import 'package:expense_tracker/features/authentication/presentation/register_form/cubit/register_form_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../../test_helper/mocks.dart';

void main() {
  late final RegisterWithEmailAndPwUseCase registerWithEmailAndPwUseCase;

  setUpAll(() {
    registerWithEmailAndPwUseCase = MockRegisterWithEmailAndPwUseCase();
  });

  group(
    'register form',
    () {
      blocTest<RegisterFormCubit, RegisterState>(
        'on name changed',
        build: () => RegisterFormCubit(
          registerWithEmailAndPwUseCase: registerWithEmailAndPwUseCase,
        ),
        act: (bloc) => bloc.onNameChanged('Do Ngoc Quy'),
        expect: () => [
          const RegisterState(
            name: NormalText.dirty('Do Ngoc Quy'),
            status: FormzStatus.invalid,
          ),
        ],
      );
      blocTest<RegisterFormCubit, RegisterState>(
        'on email changed',
        build: () => RegisterFormCubit(
          registerWithEmailAndPwUseCase: registerWithEmailAndPwUseCase,
        ),
        act: (bloc) => bloc.onEmailChanged('quytests@extrack.com'),
        expect: () => [
          const RegisterState(
            email: EmailInput.dirty('quytests@extrack.com'),
            status: FormzStatus.invalid,
          ),
        ],
      );
      blocTest<RegisterFormCubit, RegisterState>(
        'on password changed',
        build: () => RegisterFormCubit(
          registerWithEmailAndPwUseCase: registerWithEmailAndPwUseCase,
        ),
        act: (bloc) => bloc.onPasswordChanged('supersecurepw'),
        expect: () => [
          const RegisterState(
            password: PasswordInput.dirty('supersecurepw'),
            status: FormzStatus.invalid,
          ),
        ],
      );
      blocTest<RegisterFormCubit, RegisterState>(
        'on toggled checkbox turn into true',
        build: () => RegisterFormCubit(
          registerWithEmailAndPwUseCase: registerWithEmailAndPwUseCase,
        ),
        act: (bloc) => bloc.onTermAgreementCheck(),
        expect: () => [
          const RegisterState(
            termsAgreement: TermsAgreementCheck.dirty(value: true),
            status: FormzStatus.invalid,
          )
        ],
      );
      test('default status is [RegisterState]', () {
        expect(
          RegisterFormCubit(
            registerWithEmailAndPwUseCase: registerWithEmailAndPwUseCase,
          ).state,
          const RegisterState(),
        );
      });

      blocTest<RegisterFormCubit, RegisterState>(
        'invokes registerWithEmailAndPwUseCase',
        setUp: () {
          when(
            () => registerWithEmailAndPwUseCase.call(
              email: any(named: 'email'),
              password: any(named: 'password'),
            ),
          ).thenAnswer((_) async {});
        },
        build: () => RegisterFormCubit(
          registerWithEmailAndPwUseCase: registerWithEmailAndPwUseCase,
        ),
        act: (bloc) {
          bloc
            ..onNameChanged('name')
            ..onEmailChanged('email')
            ..onPasswordChanged('pw')
            ..onButtonClicked();
        },
        expect: () => [
          const RegisterState(
            name: NormalText.dirty('name'),
            status: FormzStatus.invalid,
          ),
          const RegisterState(
            name: NormalText.dirty('name'),
            email: EmailInput.dirty('email'),
            status: FormzStatus.invalid,
          ),
          const RegisterState(
            name: NormalText.dirty('name'),
            email: EmailInput.dirty('email'),
            password: PasswordInput.dirty('pw'),
            status: FormzStatus.invalid,
          ),
        ],
        verify: (bloc) => verify(
          () => registerWithEmailAndPwUseCase.call(
            email: 'email',
            password: 'pw',
          ),
        ).called(1),
      );
    },
  );
}
