import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:expense_tracker/features/authentication/domain/entities/form_value.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_email_and_pw.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_google_account_use_case.dart';
import 'package:expense_tracker/features/authentication/presentation/login_form/cubit/login_form_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:mocktail/mocktail.dart';

class MockLoginWithEmailAndPwUseCase extends Mock
    implements LoginWithEmailAndPwUseCase {}

class MockLoginWithGoogleUseCase extends Mock
    implements LoginWithGoogleUseCase {}

void main() {
  late LoginWithEmailAndPwUseCase loginWithEmailAndPwUseCase;
  late LoginWithGoogleUseCase loginWithGoogleUseCase;
  const mockValidEmail = 'validEmail@something.com';
  const mockPassword = 's3cretPword';

  LoginFormCubit createCubit() {
    return LoginFormCubit(
      loginWithGoogleUseCase: loginWithGoogleUseCase,
      loginWithEmailAndPwUseCase: loginWithEmailAndPwUseCase,
    );
  }

  setUp(() {
    loginWithEmailAndPwUseCase = MockLoginWithEmailAndPwUseCase();
    loginWithGoogleUseCase = MockLoginWithGoogleUseCase();
  });

  group('login with google', () {
    blocTest<LoginFormCubit, LoginFormState>(
      'calls login with google use case',
      setUp: () {
        when(
          () => loginWithGoogleUseCase(),
        ).thenAnswer((_) async => const Right(unit));
      },
      build: createCubit,
      act: (bloc) => bloc.loginWithGoogle(),
      verify: (_) {
        verify(() => loginWithGoogleUseCase()).called(1);
      },
    );
    blocTest<LoginFormCubit, LoginFormState>(
      'emits invalid & failure if catch an exception',
      setUp: () {
        when(
          () => loginWithGoogleUseCase(),
        ).thenAnswer((_) async => const Left(LoginWithGoogleFailure()));
      },
      build: createCubit,
      act: (bloc) => bloc.loginWithGoogle(),
      expect: () => [
        const LoginFormState(status: FormzStatus.submissionInProgress),
        const LoginFormState(
          status: FormzStatus.invalid,
          loginFailure: LoginWithGoogleFailure(),
        )
      ],
    );
  });

  blocTest<LoginFormCubit, LoginFormState>(
    'on email changed, cubit emits email validated state',
    build: createCubit,
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
    build: createCubit,
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
    build: createCubit,
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
    build: createCubit,
    act: (cubit) async => cubit.onLoginButtonClicked(),
    verify: (_) => verify(
      () => loginWithEmailAndPwUseCase(email: 'abc', password: 'password'),
    ).called(1),
    expect: () => [
      const LoginFormState(
        email: EmailInput.dirty('abc'),
        password: PasswordInput.dirty('password'),
        status: FormzStatus.submissionInProgress,
      ),
      const LoginFormState(
        email: EmailInput.dirty('abc'),
        password: PasswordInput.dirty('password'),
        status: FormzStatus.submissionSuccess,
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
        return const Left(LoginWithEmailAndPasswordFailure());
      });
    },
    seed: () => const LoginFormState(
      email: EmailInput.dirty('abc'),
      password: PasswordInput.dirty('password'),
    ),
    build: createCubit,
    act: (cubit) async => cubit.onLoginButtonClicked(),
    verify: (_) => verify(
      () => loginWithEmailAndPwUseCase(email: 'abc', password: 'password'),
    ).called(1),
    expect: () => [
      const LoginFormState(
        status: FormzStatus.submissionInProgress,
        email: EmailInput.dirty('abc'),
        password: PasswordInput.dirty('password'),
      ),
      const LoginFormState(
        status: FormzStatus.submissionFailure,
        email: EmailInput.dirty('abc'),
        password: PasswordInput.dirty('password'),
        loginFailure: LoginWithEmailAndPasswordFailure(),
      ),
    ],
  );
}
