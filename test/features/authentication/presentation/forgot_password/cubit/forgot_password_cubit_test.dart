import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/forgot_password_use_case.dart';
import 'package:expense_tracker/features/authentication/presentation/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockForgotPasswordUseCase extends Mock implements ForgotPasswordUseCase {}

void main() {
  late ForgotPasswordUseCase forgotPasswordUseCase;
  group('Forgot password cubit', () {
    setUp(() {
      forgotPasswordUseCase = MockForgotPasswordUseCase();
    });

    test('initial email is correct', () async {
      expect(
        ForgotPasswordCubit(
          forgotPasswordUseCase,
          initialEmail: 'this is an initial email from the user',
        ).state.email,
        'this is an initial email from the user',
      );
    });

    blocTest<ForgotPasswordCubit, ForgotPasswordState>(
      'emits [email] when email changed.',
      build: () => ForgotPasswordCubit(forgotPasswordUseCase),
      act: (bloc) => bloc.onEmailChanged('email'),
      expect: () => [const ForgotPasswordState(email: 'email')],
    );
    blocTest<ForgotPasswordCubit, ForgotPasswordState>(
      'calls [forgot password use case] when submitted.',
      setUp: () {
        when(() => forgotPasswordUseCase.call(any())).thenAnswer(
          (_) async => const Right(unit),
        );
      },
      build: () => ForgotPasswordCubit(forgotPasswordUseCase),
      seed: () => const ForgotPasswordState(email: 'mockEmail@gg.com'),
      act: (bloc) => bloc.submit(),
      verify: (_) {
        verify(() => forgotPasswordUseCase('mockEmail@gg.com')).called(1);
      },
    );
    blocTest<ForgotPasswordCubit, ForgotPasswordState>(
      'emits [loading, success] when calls use case [successfully].',
      setUp: () {
        when(() => forgotPasswordUseCase.call(any())).thenAnswer(
          (_) async => const Right(unit),
        );
      },
      build: () => ForgotPasswordCubit(forgotPasswordUseCase),
      seed: () => const ForgotPasswordState(email: 'mockEmail@gg.com'),
      act: (bloc) => bloc.submit(),
      expect: () => [
        const ForgotPasswordState(
          email: 'mockEmail@gg.com',
          status: Status.loading,
        ),
        const ForgotPasswordState(
          email: 'mockEmail@gg.com',
          status: Status.success,
        )
      ],
    );
    blocTest<ForgotPasswordCubit, ForgotPasswordState>(
      'emits [loading, failure] when the call to use case is a [Failure].',
      setUp: () {
        when(() => forgotPasswordUseCase.call(any())).thenAnswer(
          (_) async => const Left(ForgotPasswordFailure()),
        );
      },
      build: () => ForgotPasswordCubit(forgotPasswordUseCase),
      seed: () => const ForgotPasswordState(email: 'mockEmail@gg.com'),
      act: (bloc) => bloc.submit(),
      expect: () => [
        const ForgotPasswordState(
          email: 'mockEmail@gg.com',
          status: Status.loading,
        ),
        const ForgotPasswordState(
          email: 'mockEmail@gg.com',
          status: Status.failure,
          failure: ForgotPasswordFailure(),
        )
      ],
    );
  });
}
