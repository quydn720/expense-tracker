import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
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

  Future<void> pumpWidget(WidgetTester tester) {
    return tester.pumpWidget(
      BlocProvider.value(
        value: appBloc,
        child: MaterialApp.router(
          routerConfig: GoRouter(
            routes: [
              GoRoute(path: '/', builder: (_, __) => const ThemeScreen())
            ],
          ),
          theme: themeData,
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

      expect(find.byType(ThemeScreen), findsOneWidget);
    });
  });
  group('calls', () {
    testWidgets('add change theme mode event to app bloc', (tester) async {
      await pumpWidget(tester);

      await tester.tap(find.text('Dark'));

      verify(
        () => appBloc.add(const ChangeThemeMode(ThemeMode.dark)),
      ).called(1);
    });
  });
}
