import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/features/settings/theme/theme_controller.dart';
import 'package:expense_tracker/l10n/locale_controller.dart';
import 'package:expense_tracker/presentations/components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:provider/provider.dart';
import 'package:transaction_repository/transaction_repository.dart';

import '../../../test_helper/app_test.dart';
import '../../../test_helper/mock_router.dart';
import '../../../test_helper/mocks.dart';

class MockTransaction extends Mock implements Transaction {}

void main() {
  late LocaleController localeController;
  late ThemeController themeController;

  setUp(() {
    localeController = MockLocaleController();
    themeController = MockThemeController();
  });
  testWidgets('transaction tile renders', (tester) async {
    final Transaction transaction = MockTransaction();
    when(() => transaction.amount).thenReturn(10);
    when(() => transaction.category).thenReturn('Food');
    when(() => transaction.description).thenReturn('Mock description');
    when(() => transaction.date).thenReturn(DateTime.now());
    when(() => transaction.type).thenReturn(TransactionType.income);

    when(() => localeController.locale).thenReturn(const Locale('en'));
    when(() => themeController.themeMode).thenReturn(ThemeMode.dark);
    final mockFirebaseDynamicLinks = MockFirebaseDynamicLinks();
    when(() => mockFirebaseDynamicLinks.onLink).thenAnswer(
      (_) => const Stream.empty(),
    );
    await tester.pumpWidget(
      TestApp(
        providers: [
          ChangeNotifierProvider.value(value: localeController),
          ChangeNotifierProvider.value(value: themeController),
        ],
        router: mockRouter(
          testingRoute: [
            GoRoute(
              path: '/',
              builder: (_, __) => TransactionTile(
                transaction: transaction,
                onPress: () {},
                onLongPress: () {},
              ),
            )
          ],
        ),
        dynamicLinks: mockFirebaseDynamicLinks,
      ),
    );

    // Renders all properties
    final tile = find.byType(ListTile);
    expect(tile, findsOneWidget);
    expect(find.text('Food'), findsOneWidget);
    expect(find.text('Mock description'), findsOneWidget);

    final amountTextFinder = find.text(r'$10.00');
    expect(amountTextFinder, findsOneWidget);

    // The income type case
    expect(tester.widget<Text>(amountTextFinder).style?.color, kGreen100);
  });
}
