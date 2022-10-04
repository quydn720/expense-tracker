import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:expense_tracker/features/authentication/domain/entities/form_value.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_email_and_pw.dart';
import 'package:expense_tracker/features/authentication/presentation/login_form/cubit/login_form_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:mocktail/mocktail.dart';

class MockLoginWithEmailAndPwUseCase extends Mock
    implements LoginWithEmailAndPwUseCase {}

void main() {
  late LoginWithEmailAndPwUseCase loginWithEmailAndPwUseCase;
  const mockValidEmail = 'validEmail@something.com';
  const mockPassword = 's3cretPword';

  setUp(() {
    loginWithEmailAndPwUseCase = MockLoginWithEmailAndPwUseCase();
  });

  blocTest<LoginFormCubit, LoginFormState>(
    'on email changed, cubit emits email validated state',
    build: () => LoginFormCubit(
      loginWithEmailAndPwUseCase: loginWithEmailAndPwUseCase,
    ),
    act: (cubit) {
      cubit.onEmailChanged(mockValidEmail);
    },
    expect: () => [
      const LoginFormState(
        email: EmailInput.dirty(mockValidEmail),
        status: FormzStatus.invalid,
      )
    ],
  );
  blocTest<LoginFormCubit, LoginFormState>(
    'on password changed, cubit emits password validated state',
    build: () => LoginFormCubit(
      loginWithEmailAndPwUseCase: loginWithEmailAndPwUseCase,
    ),
    act: (cubit) => cubit.onPasswordChanged(mockPassword),
    expect: () => [
      const LoginFormState(
        password: PasswordInput.dirty(mockPassword),
        status: FormzStatus.invalid,
      )
    ],
  );
  blocTest<LoginFormCubit, LoginFormState>(
    'on toggled, cubit emits opposite state of obscured text',
    build: () => LoginFormCubit(
      loginWithEmailAndPwUseCase: loginWithEmailAndPwUseCase,
    ),
    seed: () => const LoginFormState(isObscured: false),
    act: (cubit) => cubit.toggle(),
    expect: () => [const LoginFormState(isObscured: true)],
  );
  blocTest<LoginFormCubit, LoginFormState>(
    'on button clicked',
    setUp: () {
      when(
        () => loginWithEmailAndPwUseCase(
          email: 'abc',
          password: 'password',
        ),
      ).thenAnswer((_) async => right(unit));
    },
    seed: () => const LoginFormState(
      email: EmailInput.dirty('abc'),
      password: PasswordInput.dirty('password'),
    ),
    build: () => LoginFormCubit(
      loginWithEmailAndPwUseCase: loginWithEmailAndPwUseCase,
    ),
    act: (cubit) async => cubit.onButtonClicked(),
    verify: (_) => verify(
      () => loginWithEmailAndPwUseCase(email: 'abc', password: 'password'),
    ).called(1),
    expect: () => [
      LoginFormState(
        email: const EmailInput.dirty('abc'),
        password: const PasswordInput.dirty('password'),
        status: FormzStatus.submissionInProgress,
        authFailureOrSuccessOption: none(),
      ),
      LoginFormState(
        email: const EmailInput.dirty('abc'),
        password: const PasswordInput.dirty('password'),
        status: FormzStatus.submissionSuccess,
        authFailureOrSuccessOption: none(),
      ),
    ],
  );
  blocTest<LoginFormCubit, LoginFormState>(
    'on button clicked',
    setUp: () {
      when(
        () => loginWithEmailAndPwUseCase(
          email: 'abc',
          password: 'password',
        ),
      ).thenAnswer((_) async {
        return const Left(
          LogInWithEmailAndPasswordFailure(message: 'mock error message'),
        );
      });
    },
    seed: () => const LoginFormState(
      email: EmailInput.dirty('abc'),
      password: PasswordInput.dirty('password'),
    ),
    build: () => LoginFormCubit(
      loginWithEmailAndPwUseCase: loginWithEmailAndPwUseCase,
    ),
    act: (cubit) async => cubit.onButtonClicked(),
    verify: (_) => verify(
      () => loginWithEmailAndPwUseCase(email: 'abc', password: 'password'),
    ).called(1),
    expect: () => [
      const LoginFormState(
        status: FormzStatus.submissionInProgress,
        email: EmailInput.dirty('abc'),
        password: PasswordInput.dirty('password'),
      ),
      LoginFormState(
        status: FormzStatus.submissionFailure,
        email: const EmailInput.dirty('abc'),
        password: const PasswordInput.dirty('password'),
        authFailureOrSuccessOption: optionOf(
          const Left(
            LogInWithEmailAndPasswordFailure(message: 'mock error message'),
          ),
        ),
      ),
    ],
  );
}
