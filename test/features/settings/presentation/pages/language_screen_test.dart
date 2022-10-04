import 'package:expense_tracker/common/cache/local_cache.dart';
import 'package:expense_tracker/features/settings/presentation/pages/language_screen.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:expense_tracker/locale_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:provider/provider.dart';

class MockLocaleController extends Mock implements LocaleController {}

class MockLocalCache extends Mock implements ILocalCache {}

void main() {
  late final LocaleController localeController;
  late ILocalCache caches;

  setUp(() {
    caches = MockLocalCache();
    when(() => caches.get<Locale>('locale-key')).thenReturn(const Locale('en'));
    when(() => caches.set('locale-key', const Locale('vi'))).thenAnswer(
      (_) async {},
    );
    when(() => caches.set('locale-key', const Locale('en'))).thenAnswer(
      (_) async {},
    );

    localeController = LocaleController(caches);
  });
  testWidgets('language screen ...', (tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider.value(
        value: localeController,
        child: const MockApp(),
      ),
    );

    expect(find.text('Language'), findsOneWidget);
    expect(find.byType(SvgPicture), findsOneWidget);
    await tester.tap(find.text('Vietnamese'));
    await tester.pumpAndSettle();
    expect(find.text('Ngôn ngữ'), findsOneWidget);
  });
}

class MockApp extends StatelessWidget {
  const MockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: context.watch<LocaleController>().locale,
      localizationsDelegates: LocalizationFactory.localizationsDelegates,
      supportedLocales: LocalizationFactory.supportedLocales,
      routerConfig: GoRouter(
        routes: [
          GoRoute(path: '/', builder: (_, __) => const LanguageScreen())
        ],
      ),
    );
  }
}
