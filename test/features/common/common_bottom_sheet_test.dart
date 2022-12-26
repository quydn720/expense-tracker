import 'package:expense_tracker/features/common/common_bottom_sheet.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('common bottom sheet ...', (tester) async {
    var i = 0;
    void callback() {
      i++;
    }

    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: LocalizationFactory.localizationsDelegates,
        home: YesNoBottomSheet(
          title: 'title',
          subtitle: 'subtitle',
          confirmCallback: callback,
        ),
      ),
    );
    await tester.tap(find.text('Yes'));

    expect(find.byType(ElevatedButton), findsNWidgets(2));
    expect(i, 1);
  });
}
