import 'package:expense_tracker/features/authentication/presentation/forgot_password/presentation/pages/forgot_password_email_sent_screen.dart';
import 'package:expense_tracker/features/authentication/presentation/login_form/cubit/login_form_cubit.dart';
import 'package:expense_tracker/features/authentication/presentation/login_form/pages/login_screen.dart';
import 'package:expense_tracker/features/settings/theme/theme.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

class MockLoginFormCubit extends Mock implements LoginFormCubit {}

void main() {
  late LoginFormCubit loginFormCubit;

  setUp(() {
    loginFormCubit = MockLoginFormCubit();
    when(() => loginFormCubit.state).thenReturn(
      const LoginFormState(status: FormzStatus.valid),
    );
    when(() => loginFormCubit.stream).thenAnswer((_) => const Stream.empty());
  });
  testWidgets('navigates to Login screen when press the button',
      (tester) async {
    await _pumpWidget(tester, loginFormCubit);
    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();
    expect(find.byType(LoginScreen), findsOneWidget);
  });
}

Future<void> _pumpWidget(WidgetTester tester, LoginFormCubit loginFormCubit) {
  return tester.pumpWidget(
    BlocProvider.value(
      value: loginFormCubit,
      child: MaterialApp.router(
        theme: themeData,
        routerConfig: GoRouter(
          routes: [
            GoRoute(
              path: '/login',
              builder: (_, __) => const Scaffold(body: LoginScreen()),
            ),
            GoRoute(
              path: '/',
              builder: (_, __) => const ForgotPasswordEmailSentScreen(
                email: '',
              ),
            )
          ],
        ),
        localizationsDelegates: LocalizationFactory.localizationsDelegates,
      ),
    ),
  );
}
