import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/presentations/components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockTransaction extends Mock implements TransactionEntity {}

class MockAppBloc extends Mock implements AppBloc {}

class MockCategoryEntity extends Mock implements CategoryEntity {}

void main() {
  late AppBloc appBloc;
  late TransactionEntity transaction;
  const category = CategoryEntity(
    name: 'category',
    icon: Icons.abc,
    color: Colors.black,
  );

  setUp(() {
    appBloc = MockAppBloc();
    when(() => appBloc.stream).thenAnswer((_) => const Stream.empty());
    when(() => appBloc.state).thenReturn(const AppState());

    transaction = MockTransaction();
    when(() => transaction.amount).thenReturn(10);
    when(() => transaction.category).thenReturn(category);
    when(() => transaction.description).thenReturn('Mock description');
    when(() => transaction.dateCreated).thenReturn(DateTime(2022));
  });
  testWidgets('transaction tile renders', (tester) async {
    await tester.pumpWidget(
      BlocProvider.value(
        value: appBloc,
        child: MaterialApp(
          home: TransactionTile(transaction: transaction, onPress: () {}),
        ),
      ),
    );
    expect(find.byType(TransactionTile), findsOneWidget);
  });
}
