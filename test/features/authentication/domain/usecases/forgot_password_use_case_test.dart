import 'package:authentication_repository/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/forgot_password_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthenticationRepository extends Mock
    implements IAuthenticationRepository {}

void main() {
  late ForgotPasswordUseCase sut;
  late IAuthenticationRepository auth;

  setUp(() {
    auth = MockAuthenticationRepository();
    sut = ForgotPasswordUseCase(auth: auth);
  });
  group('Forgot password use case', () {
    test('success case', () async {
      when(() => auth.forgotPassword(any())).thenAnswer((_) async {});

      final result = await sut('email');

      expect(result, isA<Right<ForgotPasswordFailure, Unit>>());
      verify(() => auth.forgotPassword('email')).called(1);
    });
    test('failure case', () async {
      when(() => auth.forgotPassword(any())).thenThrow(Exception());

      final result = await sut('email');

      expect(result, isA<Left<ForgotPasswordFailure, Unit>>());
      verify(() => auth.forgotPassword('email')).called(1);
    });
    test('failure case with [ForgotPasswordFailure]', () async {
      when(() => auth.forgotPassword(any())).thenThrow(
        const ForgotPasswordFailure(),
      );

      final result = await sut('email');

      expect(result, isA<Left<ForgotPasswordFailure, Unit>>());
      verify(() => auth.forgotPassword('email')).called(1);
    });
  });
}
