import 'package:expense_tracker/common/cache/local_cache.dart';
import 'package:expense_tracker/locale_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockLocalCache extends Mock implements ILocalCache {}

void main() {
  test(
    'default language code should be vi',
    () async {
      final mockCache = MockLocalCache();
      final sut = LocaleController(mockCache);

      expect(sut.locale.languageCode, 'vi');
    },
  );
}
