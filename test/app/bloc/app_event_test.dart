// ignore_for_file: prefer_const_constructors
import 'package:authentication_repository/authentication_repository.dart';
import 'package:expense_tracker/app/bloc/app_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockUser extends Mock implements User {}

void main() {
  group('AppEvent', () {
    group('AppUserChanged', () {
      final user = MockUser();
      test('supports value comparisons', () {
        expect(
          AppUserChanged(user),
          AppUserChanged(user),
        );
      });
    });

    group('AppLogoutRequested', () {
      test('supports value comparisons', () {
        expect(
          AppLogOutRequested(),
          AppLogOutRequested(),
        );
      });
    });
  });
}
