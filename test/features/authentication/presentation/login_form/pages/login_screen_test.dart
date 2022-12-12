import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/authentication/domain/entities/form_value.dart';
import 'package:expense_tracker/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:expense_tracker/features/authentication/presentation/login_form/cubit/login_form_cubit.dart';
import 'package:expense_tracker/features/authentication/presentation/login_form/pages/login_screen.dart';
import 'package:expense_tracker/features/settings/theme/theme.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:provider/provider.dart';

class MockLoginFormCubit extends Mock implements LoginFormCubit {}

class MockEmailInput extends Mock implements EmailInput {}

class MockAuthenticationBloc extends Mock implements AuthenticationBloc {}

void main() {
  late LoginFormCubit loginCubit;

  /// Cách đặt tên key: [ScreenName] + [FieldName] + [Type]
  /// Examples: loginForm_continue_raisedButton, loginForm_emailInput_textField
  const mockForgotPasswordScreenKey = Key('forgotPasswordScreen');
  const mockRegisterScreenKey = Key('registerScreen');
  const passwordInputKey = Key('loginForm_passwordInput_textField');
  const emailInputKey = Key('loginForm_emailInput_textField');
  const loginButtonKey = Key('loginForm_login_elevatedButton');
  const loginWithGoogleButtonKey =
      Key('loginForm_loginWithGoogle_outlinedButton');
  const registerButtonKey = Key('loginForm_register_textButton');
  const forgotPasswordButtonKey = Key('loginForm_forgotPassword_textButton');

  const testPassword = 'testPassword';
  const testEmail = 'testEmail@email.co';

  Future<void> pumpWidget(WidgetTester tester) {
    return tester.pumpWidget(
      MultiProvider(
        providers: [BlocProvider.value(value: loginCubit)],
        child: MaterialApp.router(
          theme: themeData,
          localizationsDelegates: LocalizationFactory.localizationsDelegates,
          routerConfig: GoRouter(
            routes: [
              GoRoute(
                path: '/',
                builder: (_, __) => const LoginScreen(),
              ),
              GoRoute(
                path: '/forgot-password',
                builder: (_, __) {
                  return Scaffold(
                    key: mockForgotPasswordScreenKey,
                    appBar: AppBar(),
                  );
                },
              ),
              GoRoute(
                path: '/register',
                builder: (_, __) {
                  return Scaffold(
                    key: mockRegisterScreenKey,
                    appBar: AppBar(),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  setUp(() {
    loginCubit = MockLoginFormCubit();
    when(() => loginCubit.state).thenReturn(const LoginFormState());
    when(() => loginCubit.stream).thenAnswer((_) => const Stream.empty());
  });

  group('renders', () {
    testWidgets('login screen renders', (tester) async {
      await pumpWidget(tester);

      expect(find.byType(LoginScreen), findsOneWidget);
    });

    testWidgets('login screen have error message snack bar', (tester) async {
      when(() => loginCubit.stream).thenAnswer(
        (_) => Stream.fromIterable([
          const LoginFormState(status: FormzStatus.submissionInProgress),
          const LoginFormState(
            status: FormzStatus.submissionFailure,
            loginFailure: LoginWithEmailAndPasswordFailure(),
          ),
        ]),
      );
      when(() => loginCubit.state).thenReturn(
        const LoginFormState(loginFailure: LoginWithEmailAndPasswordFailure()),
      );

      await pumpWidget(tester);

      await tester.pumpAndSettle();
      expect(find.text('An unknown exception occurred.'), findsOneWidget);
    });
    testWidgets('login screen have error message snack bar', (tester) async {
      when(() => loginCubit.stream).thenAnswer(
        (_) => Stream.fromIterable([
          const LoginFormState(status: FormzStatus.submissionInProgress),
          const LoginFormState(
            status: FormzStatus.submissionFailure,
            loginFailure: LoginWithEmailAndPasswordFailure(
              code: LoginWithEmailAndPasswordError.invalidEmail(),
            ),
          ),
        ]),
      );
      when(() => loginCubit.state).thenReturn(
        const LoginFormState(
          loginFailure: LoginWithEmailAndPasswordFailure(
            code: LoginWithEmailAndPasswordError.invalidEmail(),
          ),
        ),
      );

      await pumpWidget(tester);
      await tester.pumpAndSettle();

      expect(
        find.text('Email is not valid or badly formatted.'),
        findsOneWidget,
      );
    });
  });

  group('calls', () {
    setUp(() {
      when(() => loginCubit.stream).thenAnswer(
        (_) => Stream.fromIterable([
          const LoginFormState(status: FormzStatus.submissionInProgress),
          const LoginFormState(
            status: FormzStatus.submissionFailure,
            loginFailure: LoginWithEmailAndPasswordFailure(
              code: LoginWithEmailAndPasswordError.invalidEmail(),
            ),
          ),
        ]),
      );
    });
    testWidgets(
      'onPasswordChanged when password changes',
      (tester) async {
        when(() => loginCubit.state).thenReturn(const LoginFormState());

        await pumpWidget(tester);

        await tester.enterText(find.byKey(passwordInputKey), testPassword);
        verify(() => loginCubit.onPasswordChanged(testPassword)).called(1);
      },
    );
    testWidgets('onLoginButtonClicked when login button is pressed',
        (tester) async {
      when(() => loginCubit.state).thenReturn(
        const LoginFormState(status: FormzStatus.valid),
      );

      when(loginCubit.onLoginButtonClicked).thenAnswer((_) async {});

      await pumpWidget(tester);

      await tester.tap(find.byKey(loginButtonKey));
      verify(loginCubit.onLoginButtonClicked).called(1);
    });
    testWidgets('loginWithGoogle when [sign in with Google] is pressed',
        (tester) async {
      when(() => loginCubit.state).thenReturn(
        const LoginFormState(status: FormzStatus.valid),
      );

      when(loginCubit.loginWithGoogle).thenAnswer((_) async {});

      await pumpWidget(tester);

      await tester.tap(find.byKey(loginWithGoogleButtonKey));
      verify(loginCubit.loginWithGoogle).called(1);
    });
    testWidgets(
      'onEmailChanged when email changes',
      (tester) async {
        when(() => loginCubit.state).thenReturn(const LoginFormState());

        await pumpWidget(tester);

        await tester.enterText(find.byKey(emailInputKey), testEmail);
        verify(() => loginCubit.onEmailChanged(testEmail)).called(1);
      },
    );
  });
  group('renders', () {
    setUp(() {
      when(() => loginCubit.stream).thenAnswer(
        (_) => Stream.fromIterable([
          const LoginFormState(status: FormzStatus.submissionInProgress),
          const LoginFormState(
            status: FormzStatus.submissionFailure,
            loginFailure: LoginWithEmailAndPasswordFailure(
              code: LoginWithEmailAndPasswordError.invalidEmail(),
            ),
          ),
        ]),
      );
    });
    testWidgets('invalid email error text when email is invalid 2',
        (tester) async {
      whenListen(
        loginCubit,
        Stream.fromIterable(const <LoginFormState>[
          LoginFormState(status: FormzStatus.submissionInProgress),
          LoginFormState(
            status: FormzStatus.submissionFailure,
            loginFailure: LoginFailure(),
          ),
        ]),
      );
      await pumpWidget(tester);
      await tester.pump();
      expect(find.text('An unknown exception occurred.'), findsOneWidget);
    });

    testWidgets('correct error message with code', (tester) async {
      whenListen(
        loginCubit,
        Stream.fromIterable(const <LoginFormState>[
          LoginFormState(status: FormzStatus.submissionInProgress),
          LoginFormState(
            status: FormzStatus.submissionFailure,
            loginFailure: LoginFailure.withEmailAndPassword(
              code: LoginWithEmailAndPasswordError_UserNotFound(),
            ),
          ),
        ]),
      );

      await pumpWidget(tester);
      await tester.pump();

      expect(
        find.text('Email is not found, please create an account.'),
        findsOneWidget,
      );
    });
  });

  group('navigates', () {
    testWidgets('''
(push) to forgot password screen when user press text button 
and can navigates back to login screen
    ''', (tester) async {
      await pumpWidget(tester);

      await tester.tap(find.byKey(forgotPasswordButtonKey));
      await tester.pumpAndSettle();

      expect(find.byKey(mockForgotPasswordScreenKey), findsOneWidget);
      expect(find.byType(AppBar), findsOneWidget);
      expect(find.byType(BackButton), findsOneWidget);
    });

    testWidgets('''
(go) to RegisterScreen when [register] is pressed
and can NOT navigates back to login screen
    ''', (tester) async {
      await pumpWidget(tester);

      await tester.tap(find.byKey(registerButtonKey));
      await tester.pumpAndSettle();

      expect(find.byKey(mockRegisterScreenKey), findsOneWidget);
      expect(find.byType(AppBar), findsOneWidget);
      expect(find.byType(BackButton), findsNothing);
    });
  });

  group('LoginPage', () {
    setUp(() {
      when(() => loginCubit.stream).thenAnswer(
        (_) => Stream.fromIterable([
          const LoginFormState(status: FormzStatus.submissionInProgress),
          const LoginFormState(
            status: FormzStatus.submissionFailure,
            loginFailure: LoginWithEmailAndPasswordFailure(
              code: LoginWithEmailAndPasswordError.invalidEmail(),
            ),
          ),
        ]),
      );
      when(() => loginCubit.state).thenReturn(const LoginFormState());

      GetIt.instance.registerFactory<LoginFormCubit>(
        () => LoginFormCubit(
          loginWithGoogleUseCase: getIt(),
          loginWithEmailAndPwUseCase: getIt(),
        ),
      );
    });
    testWidgets('renders a LoginForm', (tester) async {
      await pumpWidget(tester);
      expect(find.byType(LoginScreen), findsOneWidget);
    });
  });
}
