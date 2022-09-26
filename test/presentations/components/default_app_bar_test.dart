import 'package:expense_tracker/app.dart';
import 'package:expense_tracker/bloc/app_bloc.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/register_with_email_and_pw.dart';
import 'package:expense_tracker/locale_controller.dart';
import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:expense_tracker/routes/router.dart';
import 'package:expense_tracker/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:provider/provider.dart';

class MockAppBloc extends Mock implements AppBloc {}

class MockThemeController extends Mock implements ThemeController {}

class MockLocaleController extends Mock implements LocaleController {}

class MockRegisterWithEmailAndPwUseCase extends Mock
    implements RegisterWithEmailAndPwUseCase {}

void main() {
  late final ThemeController themeController;
  late final LocaleController localeController;
  late final AppBloc appBloc;

  setUpAll(() {
    GetIt.instance.registerSingleton<RegisterWithEmailAndPwUseCase>(
      MockRegisterWithEmailAndPwUseCase(),
    );
    appBloc = MockAppBloc();
    when(() => appBloc.stream).thenAnswer((_) => const Stream.empty());

    themeController = MockThemeController();
    when(() => themeController.themeMode).thenReturn(ThemeMode.dark);
    localeController = MockLocaleController();
    when(() => localeController.locale).thenReturn(const Locale('vi'));
  });

  group('a', () {
    testWidgets('no display the back button when being the root',
        (tester) async {
      when(() => appBloc.state).thenAnswer((_) => const Unauthenticated());

      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider.value(value: themeController),
            ChangeNotifierProvider.value(value: localeController),
          ],
          child:
              App(router: router(appBloc: appBloc), appName: 'Testing App 1'),
        ),
      );

      expect(find.text('Sign up'), findsOneWidget);
      expect(find.byType(DefaultAppBar), findsOneWidget);
      expect(
        tester.getSize(find.byType(DefaultAppBar)).height,
        equals(DefaultAppBar.appBarHeight),
      );
      expect(find.byType(BackButton), findsNothing);
    });

    testWidgets('display the back button when can pop', (tester) async {
      when(() => appBloc.state).thenAnswer((_) => const Authenticated());

      await tester.pumpWidget(
        MaterialApp.router(routerConfig: router(appBloc: appBloc)),
      );
      await tester.tap(find.text('Profile'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Currency'));
      await tester.pumpAndSettle();
      expect(find.byType(IconButton), findsOneWidget);
    });
  });
}
