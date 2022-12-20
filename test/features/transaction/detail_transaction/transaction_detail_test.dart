import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/common/common_bottom_sheet.dart';
import 'package:expense_tracker/features/settings/theme/theme.dart';
import 'package:expense_tracker/features/transaction/detail_transaction/transaction_detail.dart';
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart';
import 'package:expense_tracker/features/transaction/edit_transaction/presentation/cubit/edit_transaction_cubit.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

class MockTransactionEntity extends Mock implements TransactionEntity {}

class MockCategoryEntity extends Mock implements CategoryEntity {}

class MockEditTransactionCubit extends Mock implements EditTransactionCubit {}

class MockAppBloc extends Mock implements AppBloc {}

void main() {
  late TransactionEntity transactionEntity;
  late CategoryEntity categoryEntity;
  late EditTransactionCubit editTransactionCubit;
  late AppBloc appBloc;

  const editTransactionScreenMockKey = Key('mockEditTransactionScreenKey');
  const homeScreenMockKey = Key('mockHomeScreenKey');

  Future<void> pumpWidget(WidgetTester tester) {
    return tester.pumpWidget(
      BlocProvider.value(
        value: appBloc,
        child: MaterialApp.router(
          localizationsDelegates: LocalizationFactory.localizationsDelegates,
          theme: themeData,
          routerConfig: GoRouter(
            initialLocation: '/detail',
            routes: [
              GoRoute(
                path: '/detail',
                builder: (_, __) => BlocProvider.value(
                  value: editTransactionCubit,
                  child: TransactionDetailScreen(
                    transaction: transactionEntity,
                  ),
                ),
              ),
              GoRoute(
                path: '/transaction',
                builder: (_, __) => const Scaffold(
                  key: editTransactionScreenMockKey,
                ),
              ),
              GoRoute(
                path: '/',
                builder: (_, __) => const Scaffold(
                  key: homeScreenMockKey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  setUp(() {
    transactionEntity = MockTransactionEntity();
    categoryEntity = MockCategoryEntity();
    when(() => transactionEntity.category).thenReturn(categoryEntity);
    when(() => transactionEntity.dateCreatedStr).thenReturn('04/05/2000');
    when(() => transactionEntity.dateCreated).thenReturn(DateTime(2003));
    when(() => transactionEntity.amount).thenReturn(5);
    when(() => categoryEntity.name).thenReturn('mock category name');

    registerFallbackValue(MockTransactionEntity());

    editTransactionCubit = MockEditTransactionCubit();
    when(() => editTransactionCubit.deleted(any())).thenAnswer((_) async {});
    when(() => editTransactionCubit.state).thenReturn(
      EditTransactionState(date: DateTime(2003)),
    );
    when(() => editTransactionCubit.stream).thenAnswer(
      (_) => const Stream.empty(),
    );

    appBloc = MockAppBloc();
    when(() => appBloc.state).thenReturn(const AppState());
    when(() => appBloc.stream).thenAnswer((_) => const Stream.empty());
  });

  group('transaction detail test', () {
    group('renders', () {
      testWidgets('transaction detail screen', (tester) async {
        await pumpWidget(tester);
        expect(find.byType(TransactionDetailScreen), findsOneWidget);
      });
      testWidgets('show bottom sheet when press delete icon button',
          (tester) async {
        await pumpWidget(tester);
        await tester.tap(find.byKey(deleteTransactionButtonKey));
        await tester.pumpAndSettle();

        expect(find.byType(CommonBottomSheet), findsOneWidget);
        expect(find.text('Remove this transaction?'), findsOneWidget);
      });
    });
    group('navigates', () {
      testWidgets('to edit screen', (tester) async {
        await pumpWidget(tester);

        await tester.tap(find.byKey(editTransactionButtonKey));
        await tester.pumpAndSettle();

        expect(find.byKey(editTransactionScreenMockKey), findsOneWidget);
      });
      testWidgets('to home screen when delete successfully', (tester) async {
        await pumpWidget(tester);

        await tester.tap(find.byKey(deleteTransactionButtonKey));
        await tester.pumpAndSettle();
        await tester.tap(find.text('Yes'));
        await tester.pumpAndSettle();

        expect(find.byKey(homeScreenMockKey), findsOneWidget);
      });
    });
  });
}
