import 'package:expense_tracker/common/cache/local_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLocalCache extends Mock implements ILocalCache {}

void main() {
  late ILocalCache caches;

  setUp(() {
    caches = MockLocalCache();
    when(() => caches.set('locale-key', const Locale('vi'))).thenAnswer(
      (_) async {},
    );
    when(() => caches.set('locale-key', const Locale('en'))).thenAnswer(
      (_) async {},
    );
  });
  testWidgets('language screen renders', (tester) async {
    when(() => caches.get<Locale>('locale-key')).thenReturn(const Locale('en'));

    // Default is English
    expect(find.text('Language'), findsOneWidget);
    // Only one selected at a time
    expect(find.byType(SvgPicture), findsOneWidget);
    await tester.tap(find.text('Vietnamese'));
    await tester.pumpAndSettle();
    // Change to Vietnamese
    expect(find.text('Ngôn ngữ'), findsOneWidget);
  });
  testWidgets('language screen renders shows', (tester) async {
    when(() => caches.get<Locale?>('locale-key')).thenReturn(
      const Locale('frz'),
    );

    // Default is English
    expect(find.text('Language'), findsOneWidget);
    expect(find.text('Error'), findsOneWidget);
    expect(find.text('Currency'), findsOneWidget);
  });
}
