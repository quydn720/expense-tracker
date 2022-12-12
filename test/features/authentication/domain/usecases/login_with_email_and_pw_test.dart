import 'package:authentication_repository/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_email_and_pw.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthenticationRepository extends Mock
    implements IAuthenticationRepository {}

void main() {
  late LoginWithEmailAndPwUseCase sut;
  late IAuthenticationRepository auth;

  setUp(() {
    auth = MockAuthenticationRepository();
    sut = LoginWithEmailAndPwUseCase(auth: auth);
  });
  group('Forgot password use case', () {
    test('success case', () async {
      when(
        () => auth.logInWithEmailAndPassword(
          email: any(named: 'email'),
          password: any(named: 'password'),
        ),
      ).thenAnswer((_) async {});

      final result = await sut(email: 'email', password: 'password');

      expect(result, isA<Right<LoginWithEmailAndPasswordFailure, Unit>>());
      verify(
        () => auth.logInWithEmailAndPassword(
          email: 'email',
          password: 'password',
        ),
      ).called(1);
    });

    test('failure case with [LoginWithEmailAndPasswordFailure]', () async {
      when(
        () => auth.logInWithEmailAndPassword(
          email: any(named: 'email'),
          password: any(named: 'password'),
        ),
      ).thenThrow(const LoginWithEmailAndPasswordFailure());

      final result = await sut(email: 'email', password: 'password');

      expect(result, isA<Left<LoginWithEmailAndPasswordFailure, Unit>>());
      verify(
        () => auth.logInWithEmailAndPassword(
          email: 'email',
          password: 'password',
        ),
      ).called(1);
    });
  });
}
