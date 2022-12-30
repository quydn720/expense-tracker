import 'package:expense_tracker/features/budget/budget.dart';
import 'package:expense_tracker/features/budget/presentation/pages/create_new_budget_screen.dart';
import 'package:expense_tracker/features/budget/presentation/widgets/budget_tile.dart';
import 'package:expense_tracker/features/settings/theme/theme.dart';
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
                path: '/', builder: (_, __) => const BudgetScreenProvider()),
            GoRoute(
              path: '/create-budget',
              builder: (_, __) => const CreateNewBudgetScreenProvider(),
            )
          ],
        ),
      ),
    );
  }

  group('renders', () {
    testWidgets('budget screen', (tester) async {
      await pumpWidget(tester);
      expect(find.byType(BudgetScreenProvider), findsOneWidget);
      expect(find.byType(BudgetTile), findsWidgets);
    });
  });
  group('navigates', () {
    testWidgets('to create new budget screen', (tester) async {
      await pumpWidget(tester);

      await tester.tap(find.byKey(createNewBudgetButtonKey));
      await tester.pumpAndSettle();

      expect(find.byType(CreateNewBudgetScreenProvider), findsOneWidget);
    });
  });
}
