import 'package:expense_tracker/common/cache/local_cache.dart';
import 'package:expense_tracker/locale_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLocalCache extends Mock implements ILocalCache {}

void main() {
  late final MockLocalCache mockCache;
  late final LocaleController sut;

  setUpAll(() {
    mockCache = MockLocalCache();
    sut = LocaleController(mockCache);
  });

  test(
    'default language code should be en',
    () async {
      expect(sut.locale.languageCode, 'en');
    },
  );
}
