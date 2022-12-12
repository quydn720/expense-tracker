import 'package:authentication_repository/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/register_with_email_and_pw.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthenticationRepository extends Mock
    implements IAuthenticationRepository {}

void main() {
  late RegisterWithEmailAndPwUseCase sut;
  late IAuthenticationRepository auth;

  setUp(() {
    auth = MockAuthenticationRepository();
    sut = RegisterWithEmailAndPwUseCase(auth: auth);
  });
  group('Forgot password use case', () {
    test('success case', () async {
      when(
        () => auth.signUp(
          email: any(named: 'email'),
          password: any(named: 'password'),
        ),
      ).thenAnswer((_) async {});

      final result = await sut(email: 'email', password: 'password');

      expect(result, isA<Right<SignUpWithEmailAndPasswordFailure, Unit>>());
      verify(
        () => auth.signUp(
          email: 'email',
          password: 'password',
        ),
      ).called(1);
    });

    test('failure case with [SignUpWithEmailAndPasswordFailure]', () async {
      when(
        () => auth.signUp(
          email: any(named: 'email'),
          password: any(named: 'password'),
        ),
      ).thenThrow(const SignUpWithEmailAndPasswordFailure());

      final result = await sut(email: 'email', password: 'password');

      expect(result, isA<Left<SignUpWithEmailAndPasswordFailure, Unit>>());
      verify(
        () => auth.signUp(
          email: 'email',
          password: 'password',
        ),
      ).called(1);
    });
  });
}
