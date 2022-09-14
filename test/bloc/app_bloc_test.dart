import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:expense_tracker/bloc/app_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthenticationRepository extends Mock
    implements IAuthenticationRepository {}

class MockUser extends Mock implements User {}

void main() {
  group('UserChanged', () {
    final user = MockUser();
    late IAuthenticationRepository authenticationRepository;

    setUp(() {
      authenticationRepository = MockAuthenticationRepository();
      when(() => authenticationRepository.user).thenAnswer(
        (_) => const Stream.empty(),
      );
      when(
        () => authenticationRepository.currentUser,
      ).thenReturn(User.empty);
    });
    blocTest<AppBloc, AppState>(
      'emits authenticated when user is not empty',
      setUp: () {
        when(() => user.isNotEmpty).thenReturn(true);
        when(() => user.id).thenReturn('ABC');
        when(() => authenticationRepository.user).thenAnswer(
          (_) => Stream.value(user),
        );
      },
      build: () => AppBloc(authenticationRepository),
      seed: AppState.unauthenticated,
      expect: () => [const AppState.authenticated()],
    );

    blocTest<AppBloc, AppState>(
      'emits unauthenticated when user is empty',
      setUp: () {
        when(() => authenticationRepository.user).thenAnswer(
          (_) => Stream.value(User.empty),
        );
      },
      build: () => AppBloc(authenticationRepository),
      expect: () => [const AppState.authenticated()],
    );
  });
}
