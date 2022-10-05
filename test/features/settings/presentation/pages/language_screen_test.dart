import 'package:expense_tracker/common/cache/local_cache.dart';
import 'package:expense_tracker/features/settings/presentation/pages/language_screen.dart';
import 'package:expense_tracker/features/settings/presentation/pages/setting_screen.dart';
import 'package:expense_tracker/l10n/locale_controller.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:provider/provider.dart';

class MockLocaleController extends Mock implements LocaleController {}

class MockLocalCache extends Mock implements ILocalCache {}

void main() {
  late LocaleController localeController;
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
    localeController = LocaleController(caches);
    await tester.pumpWidget(
      ChangeNotifierProvider.value(
        value: localeController,
        child: const MockApp(),
      ),
    );
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
    localeController = LocaleController(caches);

    await tester.pumpWidget(
      ChangeNotifierProvider.value(
        value: localeController,
        child: const MockApp(initLocation: '/setting'),
      ),
    );
    // Default is English
    expect(find.text('Language'), findsOneWidget);
    expect(find.text('Error'), findsOneWidget);
    expect(find.text('Currency'), findsOneWidget);
  });
}

class MockApp extends StatelessWidget {
  const MockApp({super.key, this.initLocation = '/'});
  final String initLocation;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: context.watch<LocaleController>().locale,
      localizationsDelegates: LocalizationFactory.localizationsDelegates,
      supportedLocales: LocalizationFactory.supportedLocales,
      routerConfig: GoRouter(
        initialLocation: initLocation,
        routes: [
          GoRoute(path: '/', builder: (_, __) => const LanguageScreen()),
          GoRoute(path: '/setting', builder: (_, __) => const SettingScreen()),
        ],
      ),
    );
  }
}
