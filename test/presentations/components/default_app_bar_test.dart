import 'package:expense_tracker/features/app/presentation/app.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/forgot_password_use_case.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_email_and_pw.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_google_account_use_case.dart';
import 'package:expense_tracker/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:expense_tracker/features/authentication/presentation/login_form/pages/login_screen.dart';
import 'package:expense_tracker/features/edit_transaction/domain/usecases/add_transaction_use_case.dart';
import 'package:expense_tracker/features/transaction_overview/presentation/bloc/transaction_bloc.dart';
import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:expense_tracker/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:provider/provider.dart';
import 'package:transaction_repository/transaction_repository.dart';

import '../../../test_helper/app_test.dart';
import '../../../test_helper/mock_router.dart';
import '../../../test_helper/mocks.dart';

class MockAuthenticationBloc extends Mock implements AuthenticationBloc {}

void main() {
  late final AuthenticationBloc appBloc;
  late GoRouter goRouter;

  final TransactionBloc mockTransactionBloc = MockTransactionBloc();

  setUpAll(() {
    GetIt.instance.registerSingleton<LoginWithEmailAndPwUseCase>(
      MockLoginWithEmailAndPwUseCase(),
    );
    GetIt.instance.registerSingleton<LoginWithGoogleUseCase>(
      MockLoginWithGoogleUseCase(),
    );
    GetIt.instance.registerFactory<TransactionBloc>(() => mockTransactionBloc);
    GetIt.instance
        .registerFactory<AddTransactionUseCase>(MockAddTransaction.new);
    GetIt.instance.registerFactory<ForgotPasswordUseCase>(
      MockForgotPasswordUseCase.new,
    );
    GetIt.instance.registerFactory<TransactionRepository>(
      MockTransactionRepository.new,
    );

    appBloc = MockAuthenticationBloc();
    when(() => appBloc.stream).thenAnswer((_) => const Stream.empty());
  });

  group(
    'App bar',
    () {
      setUp(() {
        goRouter = mockRouter(
          testingRoute: [
            GoRoute(path: '/', builder: (_, __) => const LoginScreen())
          ],
        );
      });
      testWidgets('does NOT display the back button when being the root',
          (tester) async {
        when(() => appBloc.state).thenAnswer((_) => const Unauthenticated());
        final mockFirebaseDynamicLinks = MockFirebaseDynamicLinks();
        when(() => mockFirebaseDynamicLinks.onLink).thenAnswer(
          (_) => const Stream.empty(),
        );
        await tester.pumpWidget(
          MultiProvider(
            providers: [
              BlocProvider.value(value: appBloc),
            ],
            child: App(
              router: router(auth: appBloc),
              appName: 'Testing App 1',
              dynamicLinks: mockFirebaseDynamicLinks,
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
        when(() => appBloc.state).thenAnswer((_) => const Unauthenticated());
        when(() => mockTransactionBloc.stream).thenAnswer(
          (_) => const Stream.empty(),
        );
        when(() => mockTransactionBloc.state).thenAnswer(
          (_) => const TransactionsInitial(),
        );

        final mockFirebaseDynamicLinks = MockFirebaseDynamicLinks();
        when(() => mockFirebaseDynamicLinks.onLink).thenAnswer(
          (_) => const Stream.empty(),
        );

        await tester.pumpWidget(
          MultiProvider(
            providers: [
              BlocProvider.value(value: appBloc),
            ],
            child: TestApp(
              router: goRouter,
              dynamicLinks: mockFirebaseDynamicLinks,
              providers: [
                BlocProvider.value(value: appBloc),
              ],
            ),
          ),
        );

        await tester.tap(find.text('Forgot password?'));
        await tester.pumpAndSettle();
        expect(find.byType(IconButton), findsOneWidget);
      });
    },
    skip: true,
  );
}

class MockTransactionBloc extends Mock implements TransactionBloc {}
