import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

void main() {
  testWidgets('no display the back button when being the root', (tester) async {
    final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (_, __) => const Scaffold(
            appBar: DefaultAppBar(title: 'title'),
          ),
        )
      ],
    );
    await tester.pumpWidget(
      MaterialApp.router(
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        routeInformationProvider: router.routeInformationProvider,
      ),
    );

    expect(find.byType(AppBar), findsOneWidget);
    expect(find.text('title'), findsOneWidget);
    expect(
      tester.getSize(find.byType(DefaultAppBar)).height,
      equals(DefaultAppBar.appBarHeight),
    );
    expect(find.byType(BackButton), findsNothing);
  });
  testWidgets('display the back button when can pop', (tester) async {
    final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          redirect: (_) => '/button',
          routes: [
            GoRoute(
              path: 'button',
              builder: (_, __) => const Scaffold(
                appBar: DefaultAppBar(title: 'title'),
              ),
            ),
          ],
        )
      ],
    );
    await tester.pumpWidget(
      MaterialApp.router(
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        routeInformationProvider: router.routeInformationProvider,
      ),
    );

    expect(find.byType(IconButton), findsOneWidget);
  });
}
