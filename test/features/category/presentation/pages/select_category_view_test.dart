import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/category/presentation/cubit/category_cubit.dart';
import 'package:expense_tracker/features/category/presentation/pages/select_category_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

class MockCategoryCubit extends Mock implements CategoryCubit {}

class MockCategoryEntity extends Mock implements CategoryEntity {}

void main() {
  late CategoryCubit categoryCubit;

  const mockKey = Key('rootScreen');

  Future<void> pumpWidget(WidgetTester tester) {
    return tester.pumpWidget(
      MaterialApp.router(
        routerConfig: GoRouter(
          initialLocation: '/categories',
          routes: [
            GoRoute(
              path: '/',
              builder: (_, __) {
                return const Scaffold(key: mockKey);
              },
              routes: [
                GoRoute(
                  path: 'categories',
                  builder: (_, __) => BlocProvider.value(
                    value: categoryCubit,
                    child: const SelectCategoryView(),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  setUp(() {
    categoryCubit = MockCategoryCubit();
    when(() => categoryCubit.state).thenReturn(
      const CategoryState(
        categories: [
          CategoryEntity(
            name: 'mock category',
            icon: Icons.abc,
            color: Colors.green,
          categoryType: CategoryType.income,
          ),
        ],
      ),
    );
    when(() => categoryCubit.stream).thenAnswer((_) => const Stream.empty());
  });
  group('navigates', () {
    testWidgets('back to edit screen when selected a category', (tester) async {
      await pumpWidget(tester);
      await tester.tap(find.byType(CircleAvatar));
      await tester.pumpAndSettle();

      expect(find.byKey(mockKey), findsOneWidget);
    });
  });
  group('renders', () {
    testWidgets('category icons', (tester) async {
      await pumpWidget(tester);

      expect(find.byType(CircleAvatar), findsNWidgets(1));
    });
  });
  group('calls', () {
    testWidgets('search when tap search icon', (tester) async {
      await pumpWidget(tester);
      await tester.tap(find.byKey(searchIconButtonKey));
    });
  });
}
