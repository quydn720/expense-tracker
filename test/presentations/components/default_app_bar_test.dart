import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/app/presentation/app.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_email_and_pw.dart';
import 'package:expense_tracker/features/authentication/presentation/login_form/cubit/login_form_cubit.dart';
import 'package:expense_tracker/features/settings/theme/theme_controller.dart';
import 'package:expense_tracker/features/transaction_overview/presentation/bloc/transaction_bloc.dart';
import 'package:expense_tracker/l10n/locale_controller.dart';
import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:expense_tracker/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:provider/provider.dart';

import '../../../test_helper/mocks.dart';

void main() {
  late final ThemeController themeController;
  late final LocaleController localeController;
  late final AppBloc appBloc;
  final TransactionBloc mockTransactionBloc = MockTransactionBloc();

  setUpAll(() {
    GetIt.instance.registerSingleton<LoginWithEmailAndPwUseCase>(
      MockLoginWithEmailAndPwUseCase(),
    );
    GetIt.instance.registerSingleton<LoginWithGoogleUseCase>(
      MockLoginWithGoogleUseCase(),
    );
    GetIt.instance.registerFactory<TransactionBloc>(() => mockTransactionBloc);

    appBloc = MockAppBloc();
    when(() => appBloc.stream).thenAnswer((_) => const Stream.empty());

    themeController = MockThemeController();
    when(() => themeController.themeMode).thenReturn(ThemeMode.dark);
    localeController = MockLocaleController();
    when(() => localeController.locale).thenReturn(const Locale('en'));
  });

  group('App bar', () {
    testWidgets('does NOT display the back button when being the root',
        (tester) async {
      when(() => appBloc.state).thenAnswer((_) => const Unauthenticated());

      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider.value(value: themeController),
            ChangeNotifierProvider.value(value: localeController),
          ],
          child: App(
            router: router(appBloc: appBloc),
            appName: 'Testing App 1',
          ),
        ),
      );

      // User is on the login screen
      expect(find.text('Login'), findsWidgets);
      expect(find.byType(DefaultAppBar), findsOneWidget);

      expect(
        tester.getSize(find.byType(DefaultAppBar)).height,
        equals(DefaultAppBar.appBarHeight),
      );
      expect(find.byType(BackButton), findsNothing);
    });

    testWidgets('displays the back button when can pop', (tester) async {
      when(() => appBloc.state).thenAnswer((_) => const Authenticated());
      when(() => mockTransactionBloc.stream)
          .thenAnswer((_) => const Stream.empty());
      when(() => mockTransactionBloc.state)
          .thenAnswer((_) => TransactionsInitial());

      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider.value(value: themeController),
            ChangeNotifierProvider.value(value: localeController),
          ],
          child: App(
            router: router(appBloc: appBloc),
            appName: 'Testing App 1',
          ),
        ),
      );
      await tester.tap(find.text('Profile'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Currency'));
      await tester.pumpAndSettle();
      expect(find.byType(IconButton), findsOneWidget);
    });
  });
}

class MockTransactionBloc extends Mock implements TransactionBloc {}
