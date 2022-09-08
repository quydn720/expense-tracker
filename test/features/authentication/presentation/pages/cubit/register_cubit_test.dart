import 'package:bloc_test/bloc_test.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/register_with_email_and_pw.dart';
import 'package:expense_tracker/features/authentication/presentation/pages/cubit/register_cubit.dart';
import 'package:expense_tracker/features/authentication/presentation/pages/register_form.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:mocktail/mocktail.dart';

class MockRegisterWithEmailAndPwUseCase extends Mock
    implements RegisterWithEmailAndPwUseCase {}

void main() {
  late RegisterWithEmailAndPwUseCase registerWithEmailAndPwUseCase;
  setUp(() {
    registerWithEmailAndPwUseCase = MockRegisterWithEmailAndPwUseCase();
  });
  group(
    'register form',
    () {
      blocTest<RegisterCubit, RegisterState>(
        'on name changed',
        build: () => RegisterCubit(
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
      blocTest<RegisterCubit, RegisterState>(
        'on email changed',
        build: () => RegisterCubit(
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
      blocTest<RegisterCubit, RegisterState>(
        'on password changed',
        build: () => RegisterCubit(
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
      blocTest<RegisterCubit, RegisterState>(
        'on toggled checkbox turn into true',
        build: () => RegisterCubit(
          registerWithEmailAndPwUseCase: registerWithEmailAndPwUseCase,
        ),
        act: (bloc) => bloc.onTermAgreementCheck(),
        expect: () => [const RegisterState(termsAgreement: true)],
      );
      test('default status is [RegisterState]', () {
        expect(
          RegisterCubit(
            registerWithEmailAndPwUseCase: registerWithEmailAndPwUseCase,
          ).state,
          const RegisterState(),
        );
      });

      blocTest<RegisterCubit, RegisterState>(
        'invokes registerWithEmailAndPwUseCase',
        setUp: () {
          when(
            () => registerWithEmailAndPwUseCase.call(
              email: any(named: 'email'),
              password: any(named: 'password'),
            ),
          ).thenAnswer((_) async {});
        },
        build: () => RegisterCubit(
          registerWithEmailAndPwUseCase: registerWithEmailAndPwUseCase,
        ),
        // seed: () => const RegisterState(
        //   email: EmailInput.dirty('email'),
        //   password: PasswordInput.dirty('password'),
        // ),
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
            status: FormzStatus.valid,
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
