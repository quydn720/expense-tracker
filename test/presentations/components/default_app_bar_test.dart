import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('default app bar ...', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(appBar: DefaultAppBar(title: 'title')),
      ),
    );

    expect(find.byType(AppBar), findsOneWidget);
    expect(find.byType(IconButton), findsOneWidget);
    expect(find.text('title'), findsOneWidget);
    expect(find.text('title'), findsOneWidget);
    expect(
      tester.getSize(find.byType(DefaultAppBar)).height,
      equals(DefaultAppBar.appBarHeight),
    );
  });
}
