import 'package:expense_tracker/features/common/pages/profile/export/export_result_page.dart';
import 'package:expense_tracker/features/settings/theme/theme.dart';
import 'package:expense_tracker/home_screen.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

void main() {
  Future<void> pumpWidget(WidgetTester tester) {
    return tester.pumpWidget(
      MaterialApp.router(
        localizationsDelegates: LocalizationFactory.localizationsDelegates,
        theme: themeData,
        routerConfig: GoRouter(
          routes: [
            GoRoute(
              path: '/',
              builder: (_, __) => const ExportDataPromptPage(),
            ),
          ],
        ),
      ),
    );
  }

  testWidgets('export result page ...', (tester) async {
    await pumpWidget(tester);

    expect(find.byType(ExportDataPromptPage), findsOneWidget);
  });

  group('navigates', () {
    testWidgets('to home when press button', (tester) async {
      await pumpWidget(tester);
      await tester.tap(find.byKey(backToHomeButtonKey));
      await tester.pumpAndSettle();

      expect(find.byType(HomeScreen), findsOneWidget);
    });
  });
}
