import 'package:expense_tracker/features/authentication/domain/usecases/login_with_email_and_pw.dart';
import 'package:expense_tracker/features/authentication/presentation/login_form/pages/login_screen.dart';
import 'package:expense_tracker/features/settings/theme/theme_controller.dart';
import 'package:expense_tracker/l10n/locale_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:provider/provider.dart';

import '../../../../../../test_helper/app_test.dart';
import '../../../../../../test_helper/mock_router.dart';
import '../../../../../../test_helper/mocks.dart';

void main() {
  late LocaleController localeController;
  late ThemeController themeController;
  late GoRouter router;

  setUp(() {
    GetIt.instance.registerSingleton<LoginWithEmailAndPwUseCase>(
      MockLoginWithEmailAndPwUseCase(),
    );

    router = mockRouter(
      testingRoute: [
        GoRoute(path: '/', builder: (_, __) => const LoginProvider())
      ],
    );

    localeController = MockLocaleController();
    when(() => localeController.locale).thenReturn(const Locale('en'));

    themeController = MockThemeController();
    when(() => themeController.themeMode).thenReturn(ThemeMode.dark);
  });
  testWidgets('login screen ...', (tester) async {
    await tester.pumpWidget(
      TestApp(
        providers: [
          ChangeNotifierProvider.value(value: localeController),
          ChangeNotifierProvider.value(value: themeController)
        ],
        router: router,
      ),
    );

    expect(find.byType(LoginScreen), findsOneWidget);
  });
}
