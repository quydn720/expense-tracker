// ignore_for_file: prefer_const_constructors

import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:expense_tracker/blocs/app_bloc/app_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockAuthenticationRepository extends Mock
    implements AuthenticationRepository {}

class MockUser extends Mock implements User {}

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  group('AppBloc', () {
    late SharedPreferences sharedPreferences;
    late AuthenticationRepository authenticationRepository;
    // final user = MockUser();

    setUp(() {
      authenticationRepository = MockAuthenticationRepository();
      sharedPreferences = MockSharedPreferences();

      when(() => authenticationRepository.user).thenAnswer(
        (_) => Stream.empty(),
      );
      when(
        () => authenticationRepository.currentUser,
      ).thenReturn(User.empty);
    });
    test('initial state is first time opened', () {
      expect(
        AppBloc(
          authenticationRepository: authenticationRepository,
          sharedPreferences: sharedPreferences,
        ).state,
        AppState.firstTimeOpened(),
      );
    });

    group('AppStarted', () {
      blocTest<AppBloc, AppState>(
        'call getString when AppStarted',
        build: () => AppBloc(
          authenticationRepository: authenticationRepository,
          sharedPreferences: sharedPreferences,
        ),
        act: (bloc) => bloc.add(AppStarted()),
        verify: (_) {
          verify(() => sharedPreferences.getString(firstTimeKey)).called(1);
          // verify(() => authenticationRepository.currentUser).called(1);
          verify(
            () => sharedPreferences.setString(firstTimeKey, 'YES'),
          ).called(1);
        },
      );

      test('description', () {
        final result = sharedPreferences.getString(firstTimeKey);
        expect(result, isNull);
      });
    });
    group('LogoutRequested', () {
      blocTest<AppBloc, AppState>(
        'invokes logOut',
        build: () => AppBloc(
          authenticationRepository: authenticationRepository,
          sharedPreferences: sharedPreferences,
        ),
        act: (bloc) => bloc.add(AppLogOutRequested()),
        verify: (_) {
          verify(() => authenticationRepository.logOut()).called(1);
        },
      );
    });
  });
}
