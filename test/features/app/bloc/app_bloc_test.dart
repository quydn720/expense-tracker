// ignore_for_file: avoid_redundant_argument_values

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_helper/mocks.dart';

void main() {
  group('Initialization', () {
    late IAuthenticationRepository authenticationRepository;

    setUpAll(() {
      authenticationRepository = MockAuthenticateRepo();
    });

    test(
      'state should be FirstTimeOpenApp if showOnboarding is TRUE',
      () {
        final appBloc = AppBloc(
          authenticationRepository: authenticationRepository,
          showOnboarding: true,
        );
        expect(appBloc.state, const FirstTimeOpenApp());
      },
    );
    test(
      'state should be Unauthenticated if showOnboarding is FALSE',
      () {
        final appBloc = AppBloc(
          authenticationRepository: authenticationRepository,
          showOnboarding: false,
        );
        expect(appBloc.state, const Unauthenticated());
      },
    );
  });

  group('UserChanged', () {
    final user = MockUser();
    late IAuthenticationRepository authenticationRepository;

    setUpAll(() {
      authenticationRepository = MockAuthenticationRepository();
    });

    blocTest<AppBloc, AppState>(
      'emits [WaitForEmailVerification] when '
      '[AuthenticationRepository] returns an unverified user',
      setUp: () {
        when(() => authenticationRepository.user).thenAnswer(
          (_) => Stream.value(user),
        );

        when(() => user.isNotEmpty).thenReturn(true);
        when(() => user.verified).thenReturn(false);
      },
      act: (bloc) => bloc.add(OnUserChanged(user)),
      build: () => AppBloc(authenticationRepository: authenticationRepository),
      seed: AppState.unauthenticated,
      expect: () => [WaitForEmailVerification(user)],
    );
    blocTest<AppBloc, AppState>(
      'emits [Authenticated] when '
      '[AuthenticationRepository] returns a verified user',
      setUp: () {
        when(() => authenticationRepository.user).thenAnswer(
          (_) => Stream.value(user),
        );

        when(() => user.isNotEmpty).thenReturn(true);
        when(() => user.verified).thenReturn(true);
      },
      build: () => AppBloc(authenticationRepository: authenticationRepository),
      seed: AppState.unauthenticated,
      expect: () => [const Authenticated()],
    );

    blocTest<AppBloc, AppState>(
      'emits [Unauthenticated] when '
      '[AuthenticationRepository] returns an empty user',
      setUp: () {
        when(() => authenticationRepository.user).thenAnswer(
          (_) => Stream.value(User.empty),
        );
      },
      build: () => AppBloc(authenticationRepository: authenticationRepository),
      expect: () => [const Unauthenticated()],
    );

    group('OnEmailVeified', () {
      // blocTest<AppBloc, AppState>(
      //   'invokes [AuthenticationRepository] sendVerificationEmail()',
      //   setUp: () {
      //     when(() => authenticationRepository.user).thenAnswer(
      //       (_) => const Stream.empty(),
      //     );
      //     when(() => user.verified).thenReturn(true);
      //     when(authenticationRepository.sendVerificationEmail).thenAnswer(
      //       (_) async {},
      //     );
      //   },
      //   build: () => AppBloc(
      //     authenticationRepository: authenticationRepository,
      //   ),
      //   verify: (_) =>
      //       verify(authenticationRepository.sendVerificationEmail).called(1),
      //   act: (bloc) => bloc.add(OnEmailVerified(user)),
      // );
      // blocTest<AppBloc, AppState>(
      //   'emits WaitForEmailVerification when '
      //   '[AuthenticationRepository] returns a unverified user',
      //   setUp: () {
      //     when(() => authenticationRepository.user).thenAnswer(
      //       (_) => const Stream.empty(),
      //     );
      //     when(() => user.verified).thenReturn(true);
      //     when(authenticationRepository.sendVerificationEmail).thenAnswer(
      //       (_) async {},
      //     );
      //   },
      //   build: () => AppBloc(
      //     authenticationRepository: authenticationRepository,
      //   ),
      //   verify: (_) =>
      //       verify(authenticationRepository.sendVerificationEmail).called(1),
      //   act: (bloc) => bloc.add(OnEmailVerified(user)),
      // );
    });

    group(
      'LogOutRequested',
      () {
        blocTest<AppBloc, AppState>(
          'invokes [AuthenticationRepository] logOut()',
          setUp: () {
            when(() => authenticationRepository.user).thenAnswer(
              (_) => Stream.value(User.empty),
            );
            when(() => authenticationRepository.logOut()).thenAnswer(
              (_) async {},
            );
          },
          act: (bloc) => bloc.add(const LogoutRequested()),
          build: () => AppBloc(
            authenticationRepository: authenticationRepository,
          ),
          seed: () => const Authenticated(),
          expect: () => [const Unauthenticated()],
          verify: (_) => verify(authenticationRepository.logOut).called(1),
        );
      },
    );
  });
}
