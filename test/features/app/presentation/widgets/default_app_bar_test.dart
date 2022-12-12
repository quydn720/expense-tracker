import 'package:expense_tracker/features/app/presentation/widgets/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

void main() {
  const rootKey = Key('sample_key');

  Future<void> pumpWidget(WidgetTester tester) {
    return tester.pumpWidget(
      MaterialApp.router(
        routerConfig: GoRouter(
          initialLocation: '/testAppBar',
          routes: [
            GoRoute(
              path: '/',
              builder: (_, __) => const Scaffold(key: rootKey),
              routes: [
                GoRoute(
                  path: 'testAppBar',
                  builder: (_, __) => const DefaultAppBar(title: 'title'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  testWidgets('NOT displays back button when GoRouter can not pop',
      (tester) async {
    await tester.pumpWidget(
      MaterialApp.router(
        routerConfig: GoRouter(
          routes: [
            GoRoute(
              path: '/',
              builder: (_, __) => const DefaultAppBar(title: 'title'),
            ),
          ],
        ),
      ),
    );
    expect(find.byType(BackButton), findsNothing);
  });
  testWidgets('default app bar displays back button when GoRouter can pop',
      (tester) async {
    await pumpWidget(tester);

    expect(find.byType(IconButton), findsOneWidget);
  });
  testWidgets('pop to the previous screen when press the back button',
      (tester) async {
    await pumpWidget(tester);

    await tester.tap(find.byType(IconButton));
    await tester.pumpAndSettle();

    expect(find.byType(Scaffold), findsOneWidget);
    expect(find.byKey(rootKey), findsOneWidget);
  });
}
