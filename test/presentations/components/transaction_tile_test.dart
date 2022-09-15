import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:transaction_repository/transaction_repository.dart';

class MockTransaction extends Mock implements Transaction {}

void main() {
  testWidgets('transaction tile renders', (tester) async {
    final Transaction transaction = MockTransaction();
    when(() => transaction.amount).thenReturn(10);
    when(() => transaction.category).thenReturn('Food');
    when(() => transaction.description).thenReturn('Mock description');
    when(() => transaction.date).thenReturn(DateTime.now());
    when(() => transaction.type).thenReturn(TransactionType.income);

    await tester.pumpWidget(
      MaterialApp(
        home: TransactionTile(
          transaction: transaction,
          onPress: () {},
          onLongPress: () {},
        ),
      ),
    );

    // Renders all properties
    final tile = find.byType(ListTile);
    expect(tile, findsOneWidget);
    expect(find.text('Food'), findsOneWidget);
    expect(find.text('Mock description'), findsOneWidget);

    final amountTextFinder = find.text(r'$ 10.0');
    expect(amountTextFinder, findsOneWidget);

    // The income type case
    expect(tester.widget<Text>(amountTextFinder).style?.color, kGreen100);
  });
}
