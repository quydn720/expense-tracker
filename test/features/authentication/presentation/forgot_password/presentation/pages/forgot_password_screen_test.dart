import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:expense_tracker/features/authentication/presentation/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:expense_tracker/features/authentication/presentation/forgot_password/presentation/pages/forgot_password_email_sent_screen.dart';
import 'package:expense_tracker/features/authentication/presentation/forgot_password/presentation/pages/forgot_password_screen.dart';
import 'package:expense_tracker/features/settings/theme/theme.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';

class MockForgotPasswordCubit extends Mock implements ForgotPasswordCubit {}

void main() {
  late ForgotPasswordCubit forgotPasswordCubit;

  setUp(() {
    forgotPasswordCubit = MockForgotPasswordCubit();

    when(() => forgotPasswordCubit.state).thenReturn(
      const ForgotPasswordState(email: 'email'),
    );
  });

  testWidgets('maps correct error message', (tester) async {
    whenListen(
      forgotPasswordCubit,
      Stream.fromIterable([
        const ForgotPasswordState(
          email: 'email',
          status: Status.failure,
          failure: ForgotPasswordFailure.invalidEmail(),
        ),
        const ForgotPasswordState(
          email: 'email',
          status: Status.failure,
          failure: ForgotPasswordFailure.userNotFound(),
        ),
        const ForgotPasswordState(
          email: 'email',
          status: Status.failure,
          failure: ForgotPasswordFailure(),
        ),
      ]).interval(const Duration(seconds: 1)),
    );

    await _pumpWidget(tester, forgotPasswordCubit);
    await tester.pump(const Duration(seconds: 1));
    expect(find.text('Email is not valid or badly formatted.'), findsOneWidget);
    await tester.pump(const Duration(seconds: 1));
    expect(
      find.text('Email is not found, please create an account.'),
      findsOneWidget,
    );
    await tester.pump(const Duration(seconds: 1));
    expect(find.text('An unknown exception occurred.'), findsOneWidget);
  });

  testWidgets('renders forgot password screen ', (tester) async {
    when(() => forgotPasswordCubit.stream).thenAnswer(
      (_) => const Stream.empty(),
    );
    await _pumpWidget(tester, forgotPasswordCubit);

    expect(find.byType(ForgotPasswordView), findsOneWidget);
  });
  testWidgets('renders correct error messages ', (tester) async {
    when(() => forgotPasswordCubit.stream).thenAnswer(
      (_) => Stream.fromIterable(
        [
          const ForgotPasswordState(
            email: 'email',
            status: Status.failure,
            failure: ForgotPasswordFailure.invalidEmail(),
          ),
        ],
      ),
    );
    when(() => forgotPasswordCubit.state).thenReturn(
      const ForgotPasswordState(
        email: 'email',
        status: Status.failure,
        failure: ForgotPasswordFailure.invalidEmail(),
      ),
    );
    await _pumpWidget(tester, forgotPasswordCubit);
    await tester.pumpAndSettle();

    expect(find.text('Email is not valid or badly formatted.'), findsOneWidget);
  });
  testWidgets('navigates to Success screen when status is [Success]',
      (tester) async {
    when(() => forgotPasswordCubit.stream).thenAnswer(
      (_) => Stream.fromIterable(
        [
          const ForgotPasswordState(email: 'email', status: Status.loading),
          const ForgotPasswordState(email: 'email', status: Status.success),
        ],
      ),
    );
    await _pumpWidget(tester, forgotPasswordCubit);

    expect(find.byType(ForgotPasswordView), findsOneWidget);
    await tester.pumpAndSettle();
    expect(find.byType(ForgotPasswordEmailSentScreen), findsOneWidget);
  });
}

Future<void> _pumpWidget(
  WidgetTester tester,
  ForgotPasswordCubit forgotPasswordCubit,
) {
  return tester.pumpWidget(
    MultiProvider(
      providers: [BlocProvider.value(value: forgotPasswordCubit)],
      child: MaterialApp.router(
        theme: ExpenseTrackerTheme.light,
        localizationsDelegates: LocalizationFactory.localizationsDelegates,
        routerConfig: GoRouter(
          routes: [
            GoRoute(
              path: '/',
              builder: (_, __) => const ForgotPasswordView(),
            ),
            GoRoute(
              path: '/success',
              builder: (_, __) => const ForgotPasswordEmailSentScreen(
                email: '',
              ),
            )
          ],
        ),
      ),
    ),
  );
}
