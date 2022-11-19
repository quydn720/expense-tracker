import 'package:authentication_repository/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_google_account_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthenticateRepository extends Mock
    implements IAuthenticationRepository {}

void main() {
  late LoginWithGoogleUseCase sut;
  late IAuthenticationRepository _authRepository;

  setUp(() {
    _authRepository = MockAuthenticateRepository();

    sut = LoginWithGoogleUseCase(auth: _authRepository);
  });
  test(
    'login with google use case forward call to login with google',
    () {
      when(() => _authRepository.logInWithGoogle()).thenAnswer((_) async {});

      sut();

      verify(() => _authRepository.logInWithGoogle()).called(1);
    },
  );
  test(
    'return [right] when success',
    () async {
      when(() => _authRepository.logInWithGoogle()).thenAnswer((_) async {});

      final result = await sut();
      verify(() => _authRepository.logInWithGoogle()).called(1);
      expect(result, isA<Right<dynamic, Unit>>());
    },
  );
  test(
    'return [left] with failure when fail',
    () async {
      when(
        () => _authRepository.logInWithGoogle(),
      ).thenThrow(const LoginWithGoogleFailure());

      final result = await sut();
      verify(() => _authRepository.logInWithGoogle()).called(1);
      expect(result, isA<Left<LoginWithGoogleFailure, Unit>>());
    },
  );
}
