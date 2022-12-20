import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/settings/presentation/pages/language_screen.dart';
import 'package:expense_tracker/features/settings/theme/theme.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

class MockAppBloc extends Mock implements AppBloc {}

void main() {
  late AppBloc appBloc;

  Future<void> pumpWidget(WidgetTester tester) {
    return tester.pumpWidget(
      BlocProvider.value(
        value: appBloc,
        child: MaterialApp.router(
          theme: themeData,
          localizationsDelegates: LocalizationFactory.localizationsDelegates,
          routerConfig: GoRouter(
            routes: [
              GoRoute(path: '/', builder: (_, __) => const LanguageScreen()),
            ],
          ),
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
    testWidgets('language screen with N support locale language tile',
        (tester) async {
      await pumpWidget(tester);

      expect(find.byType(LanguageScreen), findsOneWidget);
      expect(
        find.byType(ListTile),
        findsNWidgets(LocalizationFactory.supportedLocales.length),
      );
    });
    testWidgets('''
current selected language tile with the indicator
others with SizedBox.shrink (nothings)
''', (tester) async {
      when(() => appBloc.state).thenReturn(
        const AppState(locale: Locale('en')),
      );
      await pumpWidget(tester);

      final englishTile = tester.widget<ListTile>(
        find.widgetWithText(ListTile, 'English'),
      );
      final vietnameseTile = tester.widget<ListTile>(
        find.widgetWithText(ListTile, 'Vietnamese'),
      );

      expect(englishTile.trailing, isA<SvgPicture>());
      expect(vietnameseTile.trailing, isA<SizedBox>());
    });
  });
  group('calls', () {
    testWidgets('change language with the chosen language', (tester) async {
      await pumpWidget(tester);

      await tester.tap(find.text('Vietnamese'));
      verify(
        () {
          appBloc.add(
            const ChangeLanguage(Locale.fromSubtags(languageCode: 'vi')),
          );
        },
      ).called(1);
    });
  });
}
