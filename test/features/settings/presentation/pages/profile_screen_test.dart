import 'package:expense_tracker/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:expense_tracker/features/settings/presentation/pages/profile_screen.dart';
import 'package:expense_tracker/features/settings/theme/theme.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthenticationBloc extends Mock implements AuthenticationBloc {}

void main() {
  const accountScreenKey = Key('accountScreen');
  const settingScreenKey = Key('settingScreen');
  const exportDataScreenKey = Key('exportDataScreen');

  late AuthenticationBloc authenticationBloc;

  setUp(() {
    authenticationBloc = MockAuthenticationBloc();
    when(() => authenticationBloc.state).thenReturn(
      const AuthenticationState.authenticated(),
    );
    when(() => authenticationBloc.stream)
        .thenAnswer((_) => const Stream.empty());
  });

  Future<void> _pumpWidget(WidgetTester tester) {
    return tester.pumpWidget(
      BlocProvider.value(
        value: authenticationBloc,
        child: MaterialApp.router(
          theme: themeData,
          localizationsDelegates: LocalizationFactory.localizationsDelegates,
          routerConfig: GoRouter(
            routes: [
              GoRoute(path: '/', builder: (_, __) => const ProfileScreen()),
              GoRoute(
                path: '/profile/account',
                builder: (_, __) {
                  return const Scaffold(key: accountScreenKey);
                },
              ),
              GoRoute(
                path: '/setting',
                builder: (_, __) {
                  return const Scaffold(key: settingScreenKey);
                },
              ),
              GoRoute(
                path: '/profile/export-data',
                builder: (_, __) {
                  return const Scaffold(key: exportDataScreenKey);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  group('renders', () {
    testWidgets('profile screen', (tester) async {
      await _pumpWidget(tester);
      expect(find.byType(ProfileScreen), findsOneWidget);
    });
    testWidgets('log out confirm bottom sheet when user tap log out',
        (tester) async {
      await _pumpWidget(tester);

      await tester.tap(find.byKey(logoutButtonKey));
      await tester.pumpAndSettle();

      expect(find.byKey(logoutBottomSheetKey), findsOneWidget);
    });
  });

  group('calls', () {
    testWidgets('log out when tap yes when user confirms', (tester) async {
      await _pumpWidget(tester);

      await tester.tap(find.byKey(logoutButtonKey));
      await tester.pumpAndSettle();

      expect(find.byKey(logoutBottomSheetKey), findsOneWidget);
      await tester.tap(find.text('Yes'));
      verify(() => authenticationBloc.add(const LogoutRequested())).called(1);
    });
  });
  group('navigates', () {
    testWidgets('to account screen', (tester) async {
      await _pumpWidget(tester);
      await tester.tap(find.byKey(moveToAccountScreenButtonKey));
      await tester.pumpAndSettle();

      expect(find.byKey(accountScreenKey), findsOneWidget);
    });
    testWidgets('to setting screen', (tester) async {
      await _pumpWidget(tester);
      await tester.tap(find.byKey(moveToSettingScreenButtonKey));
      await tester.pumpAndSettle();

      expect(find.byKey(settingScreenKey), findsOneWidget);
    });
    testWidgets('to export data screen', (tester) async {
      await _pumpWidget(tester);
      await tester.tap(find.byKey(moveToExportDataScreenButtonKey));
      await tester.pumpAndSettle();

      expect(find.byKey(exportDataScreenKey), findsOneWidget);
    });
  });
}
