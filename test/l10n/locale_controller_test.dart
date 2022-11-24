import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../test_helper/mocks.dart';

void main() {
  late MockLocalCache mockCache;

  setUpAll(() {
    registerFallbackValue(const Locale('vi'));
    mockCache = MockLocalCache();
  });

  test(
    'default language code should be en',
    () async {
      // expect(sut.locale.languageCode, 'en');
    },
  );
  test(
    'change locale invoke set to local cache',
    () async {
      when(
        () => mockCache.set(any(), const Locale('vi')),
      ).thenAnswer((_) async {});

      // await sut.changeLocale(const Locale('vi'));

      // expect(sut.locale.languageCode, 'vi');
      verify(
        () => mockCache.set('locale-key', const Locale('vi')),
      ).called(1);
    },
  );
}
