import 'package:bloc_test/bloc_test.dart';
import 'package:expense_tracker/features/home/bloc/home_bloc.dart';
import 'package:expense_tracker/features/home/presentation/widget/recent_transactions.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

class MockHomeBloc extends MockBloc<HomeEvent, HomeState> implements HomeBloc {}

void main() {
  late HomeBloc homeBloc;
  const mockTransactionScreenKey = Key('transactionScreen');

  setUp(() {
    homeBloc = MockHomeBloc();
    when(() => homeBloc.stream).thenAnswer((_) => const Stream.empty());
  });
  testWidgets('recent transactions ...', (tester) async {
    when(() => homeBloc.state).thenReturn(const HomeState());

    await tester.pumpWidget(
      BlocProvider.value(
        value: homeBloc,
        child: MaterialApp(
          home: const Scaffold(body: RecentTransactions()),
          localizationsDelegates: LocalizationFactory.localizationsDelegates,
        ),
      ),
    );
  });
  testWidgets('navigates to transaction screen', (tester) async {
    when(() => homeBloc.state).thenReturn(const HomeState());

    await tester.pumpWidget(
      BlocProvider.value(
        value: homeBloc,
        child: MaterialApp.router(
          routerConfig: GoRouter(
            routes: [
              GoRoute(
                path: '/',
                builder: (_, __) => const Scaffold(body: RecentTransactions()),
              ),
              GoRoute(
                path: '/transactions',
                builder: (_, __) {
                  return const Scaffold(key: mockTransactionScreenKey);
                },
              )
            ],
          ),
          localizationsDelegates: LocalizationFactory.localizationsDelegates,
        ),
      ),
    );

    await tester.tap(find.byKey(seeAllTransactionButtonKey));
    await tester.pumpAndSettle();

    expect(find.byKey(mockTransactionScreenKey), findsOneWidget);
  });
}
