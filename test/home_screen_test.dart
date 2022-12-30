import 'package:expense_tracker/features/home/presentation/home_screen.dart';
import 'package:expense_tracker/features/transaction/transaction_overview/presentation/bloc/transaction_bloc.dart';
import 'package:expense_tracker/features/transaction/transaction_overview/presentation/widgets/recent_transactions.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

class MockTransactionBloc extends Mock implements TransactionBloc {}

void main() {
  late TransactionBloc transactionBloc;

  const mockTransactionsScreenKey = Key('mockTransactionsScreenKey');

  Future<void> pumpWidget(WidgetTester tester) {
    return tester.pumpWidget(
      BlocProvider.value(
        value: transactionBloc,
        child: MaterialApp.router(
          localizationsDelegates: LocalizationFactory.localizationsDelegates,
          routerConfig: GoRouter(
            routes: [
              GoRoute(path: '/', builder: (_, __) => const HomeScreen()),
              GoRoute(
                path: '/transactions',
                builder: (_, __) => const Scaffold(
                  key: mockTransactionsScreenKey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  setUp(() {
    transactionBloc = MockTransactionBloc();
    when(() => transactionBloc.state).thenReturn(const TransactionState());
    when(() => transactionBloc.stream).thenAnswer((_) => const Stream.empty());
  });

  testWidgets('home screen ...', (tester) async {
    await pumpWidget(tester);

    expect(find.byType(HomeScreen), findsOneWidget);
  });

  group('navigates', () {
    testWidgets("to transaction page when tap 'see all' button",
        (tester) async {
      await pumpWidget(tester);

      final seeAllTextButtonFinder = find.byKey(seeAllTransactionButtonKey);

      expect(seeAllTextButtonFinder, findsOneWidget);
      await tester.tap(seeAllTextButtonFinder);
      await tester.pumpAndSettle();
      expect(find.byKey(mockTransactionsScreenKey), findsOneWidget);
    });
  });

  group('calls', () {
    testWidgets('to search page when tap search icon button', (tester) async {
      await pumpWidget(tester);

      final searchIconButtonFinder = find.byKey(searchIconButtonKey);

      expect(searchIconButtonFinder, findsOneWidget);
      await tester.tap(searchIconButtonFinder);
    });
    testWidgets('to notification page when tap notification icon button',
        (tester) async {
      await pumpWidget(tester);

      final notificationsIconButtonFinder =
          find.byKey(notificationIconButtonKey);

      expect(notificationsIconButtonFinder, findsOneWidget);
      await tester.tap(notificationsIconButtonFinder);
    });
  });
}
