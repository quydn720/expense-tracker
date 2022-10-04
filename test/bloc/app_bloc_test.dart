import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
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
      when(() => authenticationRepository.currentUser).thenReturn(User.empty);
    });

    test(
      '''initial value is [Initial] when user (have NOT) completed onboarding''',
      () async {
        expect(
          AppBloc(authenticationRepository: authenticationRepository).state,
          const Initial(),
        );
      },
    );
    test(
      '''initial value is [Initial] when user have (completed) onboarding''',
      () async {
        expect(
          AppBloc(
            authenticationRepository: authenticationRepository,
            showOnboarding: false,
          ).state,
          const Unauthenticated(),
        );
      },
    );
    blocTest<AppBloc, AppState>(
      'emits waitForEmailVerification when user.verify is false',
      setUp: () {
        when(() => user.isNotEmpty).thenReturn(true);
        when(() => user.verified).thenReturn(false);
        when(() => authenticationRepository.user).thenAnswer(
          (_) => Stream.value(user),
        );
      },
      act: (bloc) => bloc.add(OnUserChanged(user)),
      build: () => AppBloc(authenticationRepository: authenticationRepository),
      seed: AppState.unauthenticated,
      expect: () => [const AppState.waitForEmailVerification()],
    );
    blocTest<AppBloc, AppState>(
      'emits authenticated when user is verified',
      setUp: () {
        when(() => user.isNotEmpty).thenReturn(true);
        when(() => user.verified).thenReturn(true);
        when(() => authenticationRepository.user).thenAnswer(
          (_) => Stream.value(user),
        );
      },
      build: () => AppBloc(authenticationRepository: authenticationRepository),
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
      build: () => AppBloc(authenticationRepository: authenticationRepository),
      expect: () => [const AppState.unauthenticated()],
    );
    blocTest<AppBloc, AppState>(
      'emits unauthenticated when LogOutRequested',
      setUp: () {
        when(() => authenticationRepository.user).thenAnswer(
          (_) => Stream.value(User.empty),
        );
      },
      act: (bloc) => bloc.add(const LogoutRequested()),
      build: () => AppBloc(authenticationRepository: authenticationRepository),
      expect: () => [const AppState.unauthenticated()],
    );
  });
}
