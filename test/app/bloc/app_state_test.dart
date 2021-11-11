// ignore_for_file: prefer_const_constructors
import 'package:authentication_repository/authentication_repository.dart';
import 'package:expense_tracker/app/bloc/app_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockUser extends Mock implements User {}

void main() {
  group(
    'AppState',
    () {
      group('unauthenticated', () {
        test('has correct status', () {
          final state = AppState.unauthenticated() as Unauthenticated;
          expect(state.status, AppStatus.unauthenticated);
          expect(state.user, User.empty);
        });
      });

      group('authenticated', () {
        test('has correct status', () {
          final user = MockUser();
          final state = AppState.authenticated(user: user) as Authenticated;
          expect(state.status, AppStatus.authenticated);
          expect(state.user, user);
        });
      });
      group('firstTimeOpened', () {
        test('has correct status', () {
          final state = AppState.firstTimeOpened();
          expect(state.status, AppStatus.firstTimeOpened);
        });
      });
    },
  );
}
