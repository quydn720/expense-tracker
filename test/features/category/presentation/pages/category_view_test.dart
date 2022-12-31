import 'package:expense_tracker/features/category/presentation/cubit/category_cubit.dart';
import 'package:expense_tracker/features/category/presentation/pages/select_category_view.dart';
import 'package:expense_tracker/features/category/presentation/widgets/category_bottom_sheet.dart';
import 'package:expense_tracker/features/settings/theme/theme.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:provider/provider.dart';

class MockCategoryCubit extends Mock implements CategoryCubit {}

void main() {
  late CategoryCubit categoryCubit;

  Future<void> pumpWidget(WidgetTester tester) {
    return tester.pumpWidget(
      MultiProvider(
        providers: [BlocProvider.value(value: categoryCubit)],
        child: MaterialApp.router(
          theme: ExpenseTrackerTheme.light,
          localizationsDelegates: LocalizationFactory.localizationsDelegates,
          routerConfig: GoRouter(
            routes: [
              GoRoute(
                path: '/',
                builder: (_, __) => const SelectCategoryView(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  setUp(() {
    categoryCubit = MockCategoryCubit();
    when(() => categoryCubit.state).thenReturn(const CategoryState());
    when(() => categoryCubit.stream).thenAnswer((_) => const Stream.empty());
  });

  group('renders', () {
    testWidgets('category screen', (tester) async {
      await pumpWidget(tester);
    });
    testWidgets('category screen bottom sheet when press fab button',
        (tester) async {
      await pumpWidget(tester);
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();

      expect(find.byType(AddCategoryBottomSheet), findsOneWidget);
    });
  });
}
