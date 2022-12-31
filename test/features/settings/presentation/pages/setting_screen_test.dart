import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/settings/presentation/pages/currency_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/language_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/notification_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/security_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/setting_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/theme_screen.dart';
import 'package:expense_tracker/features/settings/theme/theme.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

class MockAppBloc extends Mock implements AppBloc {}

void main() {
  late AppBloc appBloc;
  const currencyKey = Key('settingScreen_currencyTile_button');
  const languageKey = Key('settingScreen_languageTile_button');
  const themeModeKey = Key('settingScreen_themeModeTile_button');
  const securityKey = Key('settingScreen_securityTile_button');
  const notificationKey = Key('settingScreen_notificationTile_button');

  Future<void> pumpWidget(WidgetTester tester) {
    return tester.pumpWidget(
      BlocProvider.value(
        value: appBloc,
        child: MaterialApp.router(
          routerConfig: GoRouter(
            routes: [
              GoRoute(path: '/', builder: (_, __) => const SettingScreen()),
              GoRoute(
                path: CurrencyScreen.routeName,
                builder: (_, __) => const CurrencyScreen(),
              ),
              GoRoute(
                path: LanguageScreen.routeName,
                builder: (_, __) => const LanguageScreen(),
              ),
              GoRoute(
                path: ThemeScreen.routeName,
                builder: (_, __) => const ThemeScreen(),
              ),
              GoRoute(
                path: NotificationSettingScreen.routeName,
                builder: (_, __) => const NotificationSettingScreen(),
              ),
              GoRoute(
                path: SecurityScreen.routeName,
                builder: (_, __) => const SecurityScreen(),
              ),
            ],
          ),
          theme: ExpenseTrackerTheme.light,
          localizationsDelegates: LocalizationFactory.localizationsDelegates,
        ),
      ),
    );
  }

  setUp(() {
    appBloc = MockAppBloc();
    when(() => appBloc.state).thenReturn(const AppState());
    when(() => appBloc.stream).thenAnswer((_) => const Stream.empty());
  });

  group('renders', () {
    testWidgets('theme screen', (tester) async {
      await pumpWidget(tester);

      expect(find.byType(SettingScreen), findsOneWidget);
    });
    testWidgets('setting tile with localized name', (tester) async {
      when(() => appBloc.state).thenReturn(
        const AppState(locale: Locale('en')),
      );
      await pumpWidget(tester);

      final languageTile = find.text('English');

      expect(languageTile, findsOneWidget);
    });
  });

  group('navigates', () {
    testWidgets('to currency screen', (tester) async {
      await pumpWidget(tester);
      await tester.tap(find.byKey(currencyKey));
      await tester.pumpAndSettle();

      expect(find.byType(CurrencyScreen), findsOneWidget);
    });
    testWidgets('to language screen', (tester) async {
      await pumpWidget(tester);
      await tester.tap(find.byKey(languageKey));
      await tester.pumpAndSettle();

      expect(find.byType(LanguageScreen), findsOneWidget);
    });
    testWidgets('to theme screen', (tester) async {
      await pumpWidget(tester);
      await tester.tap(find.byKey(themeModeKey));
      await tester.pumpAndSettle();

      expect(find.byType(ThemeScreen), findsOneWidget);
    });
    testWidgets('to notification screen', (tester) async {
      await pumpWidget(tester);
      await tester.tap(find.byKey(notificationKey));
      await tester.pumpAndSettle();

      expect(find.byType(NotificationSettingScreen), findsOneWidget);
    });
    testWidgets('to security screen', (tester) async {
      await pumpWidget(tester);
      await tester.tap(find.byKey(securityKey));
      await tester.pumpAndSettle();

      expect(find.byType(SecurityScreen), findsOneWidget);
    });
  });
}
