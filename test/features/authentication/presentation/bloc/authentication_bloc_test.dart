import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:expense_tracker/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthenticationRepository extends Mock
    implements IAuthenticationRepository {}

class MockUser extends Mock implements User {}

void main() {
  group('Authentication Repository', () {
    late IAuthenticationRepository authenticationRepository;

    setUp(() {
      authenticationRepository = MockAuthenticationRepository();
      when(() => authenticationRepository.user).thenAnswer(
        (_) => const Stream.empty(),
      );
    });
    test('initial state is [Unauthenticated] when user is empty', () {
      expect(
        AuthenticationBloc(authenticationRepository).state,
        const AuthenticationState.unauthenticated(),
      );
    });
    group('UserChanged', () {
      late User user;

      setUp(() {
        user = MockUser();
      });

      blocTest<AuthenticationBloc, AuthenticationState>(
        'emit Authenticated when user is not empty',
        setUp: () {
          when(() => user.isNotEmpty).thenReturn(true);
          when(() => authenticationRepository.user).thenAnswer(
            (_) => Stream.value(user),
          );
        },
        build: () => AuthenticationBloc(authenticationRepository),
        seed: () => const Unauthenticated(),
        expect: () => [const Authenticated()],
      );
      blocTest<AuthenticationBloc, AuthenticationState>(
        'emit Unauthenticated when user is not empty',
        setUp: () {
          when(() => user.isNotEmpty).thenReturn(false);
          when(() => authenticationRepository.user).thenAnswer(
            (_) => Stream.value(user),
          );
        },
        build: () => AuthenticationBloc(authenticationRepository),
        expect: () => [const Unauthenticated()],
      );
    });
    group('LogoutRequested', () {
      blocTest<AuthenticationBloc, AuthenticationState>(
        'invokes logOut',
        setUp: () {
          when(authenticationRepository.logOut).thenAnswer((_) async {});
        },
        build: () => AuthenticationBloc(authenticationRepository),
        act: (bloc) => bloc.add(const LogoutRequested()),
        verify: (_) => verify(authenticationRepository.logOut).called(1),
      );
    });
  });
}
