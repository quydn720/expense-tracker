import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/authentication/domain/entities/form_value.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/forgot_password_use_case.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_email_and_pw.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_google_account_use_case.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/register_with_email_and_pw.dart';
import 'package:expense_tracker/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:expense_tracker/features/authentication/presentation/forgot_password/presentation/pages/forgot_password_screen.dart';
import 'package:expense_tracker/features/authentication/presentation/login_form/cubit/login_form_cubit.dart';
import 'package:expense_tracker/features/authentication/presentation/login_form/pages/login_screen.dart';
import 'package:expense_tracker/features/authentication/presentation/register_form/pages/register_screen.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:provider/single_child_widget.dart';

import '../../../../../../test_helper/app_test.dart';
import '../../../../../../test_helper/mock_router.dart';
import '../../../../../../test_helper/mocks.dart';
import '../../../../../presentations/components/default_app_bar_test.dart';

class MockLoginFormCubit extends Mock implements LoginFormCubit {}

void main() {
  late LoginFormCubit loginCubit;
  late GoRouter router;
  late AppBloc appBloc;
  late AuthenticationBloc authenticationBloc;
  late List<SingleChildWidget> providers;
  late FirebaseDynamicLinks firebaseDynamicLinks;

  /// Cách đặt tên key: [ScreenName] + [FieldName] + [Type]
  /// Examples: loginForm_continue_raisedButton, loginForm_emailInput_textField
  const passwordInputKey = Key('loginForm_passwordInput_textField');
  const emailInputKey = Key('loginForm_emailInput_textField');
  const loginButtonKey = Key('loginForm_login_elevatedButton');
  const loginWithGoogleButtonKey =
      Key('loginForm_loginWithGoogle_outlinedButton');
  const registerButtonKey = Key('loginForm_register_textButton');
  const forgotPasswordButtonKey = Key('loginForm_forgotPassword_textButton');

  const testPassword = 'testPassword';
  const testEmail = 'testEmail@email.co';

  setUpAll(() {
    GetIt.instance.registerFactory<RegisterWithEmailAndPwUseCase>(
      MockRegisterWithEmailAndPwUseCase.new,
    );
    GetIt.instance.registerFactory<LoginWithGoogleUseCase>(
      MockLoginWithGoogleUseCase.new,
    );
    GetIt.instance.registerFactory<LoginWithEmailAndPwUseCase>(
      MockLoginWithEmailAndPwUseCase.new,
    );
    GetIt.instance.registerFactory<ForgotPasswordUseCase>(
      MockForgotPasswordUseCase.new,
    );
  });
  setUp(() {
    router = mockRouter(
      testingRoute: [
        GoRoute(
          path: '/',
          builder: (_, __) => const Scaffold(body: LoginScreen()),
        ),
        GoRoute(
          path: '/forgot-password',
          builder: (_, __) => const ForgotPasswordScreen(),
        ),
        GoRoute(
          path: '/register',
          builder: (_, __) => const RegisterProvider(),
        ),
      ],
    );

    loginCubit = MockLoginFormCubit();
    when(() => loginCubit.state).thenReturn(const LoginFormState());

    authenticationBloc = MockAuthenticationBloc();
    when(() => authenticationBloc.stream).thenAnswer(
      (_) => const Stream.empty(),
    );
    when(() => authenticationBloc.state).thenReturn(const Unauthenticated());

    appBloc = MockAppBloc();
    when(() => appBloc.stream).thenAnswer((_) => const Stream.empty());
    when(() => appBloc.state).thenReturn(const AppState());

    providers = [
      BlocProvider.value(value: appBloc),
      BlocProvider.value(value: loginCubit),
    ];
  });
  testWidgets('login screen renders', (tester) async {
    final mockFirebaseDynamicLinks = MockFirebaseDynamicLinks();
    when(() => mockFirebaseDynamicLinks.onLink).thenAnswer(
      (_) => const Stream.empty(),
    );
    when(() => loginCubit.stream).thenAnswer((_) => const Stream.empty());
    when(() => loginCubit.state).thenReturn(const LoginFormState());

    await tester.pumpWidget(
      TestApp(
        providers: providers,
        router: router,
        dynamicLinks: mockFirebaseDynamicLinks,
      ),
    );

    expect(find.byType(LoginScreen), findsOneWidget);
  });

  testWidgets('login screen have error message snack bar', (tester) async {
    final mockFirebaseDynamicLinks = MockFirebaseDynamicLinks();
    when(() => mockFirebaseDynamicLinks.onLink).thenAnswer(
      (_) => const Stream.empty(),
    );
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

    await tester.pumpWidget(
      TestApp(
        providers: providers,
        router: router,
        dynamicLinks: mockFirebaseDynamicLinks,
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('An unknown exception occurred.'), findsOneWidget);
  });
  testWidgets('login screen have error message snack bar', (tester) async {
    final mockFirebaseDynamicLinks = MockFirebaseDynamicLinks();
    when(() => mockFirebaseDynamicLinks.onLink).thenAnswer(
      (_) => const Stream.empty(),
    );
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

    await tester.pumpWidget(
      TestApp(
        providers: providers,
        router: router,
        dynamicLinks: mockFirebaseDynamicLinks,
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Email is not valid or badly formatted.'), findsOneWidget);
  });

  group('calls', () {
    setUp(() {
      firebaseDynamicLinks = MockFirebaseDynamicLinks();
      when(() => firebaseDynamicLinks.onLink).thenAnswer(
        (_) => const Stream.empty(),
      );
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

        await tester.pumpWidget(
          TestApp(
            providers: providers,
            router: router,
            dynamicLinks: firebaseDynamicLinks,
          ),
        );

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

      await tester.pumpWidget(
        TestApp(
          providers: providers,
          router: router,
          dynamicLinks: firebaseDynamicLinks,
        ),
      );

      await tester.tap(find.byKey(loginButtonKey));
      verify(loginCubit.onLoginButtonClicked).called(1);
    });
    testWidgets('loginWithGoogle when [sign in with Google] is pressed',
        (tester) async {
      when(() => loginCubit.state).thenReturn(
        const LoginFormState(status: FormzStatus.valid),
      );

      when(loginCubit.loginWithGoogle).thenAnswer((_) async {});

      await tester.pumpWidget(
        TestApp(
          providers: providers,
          router: router,
          dynamicLinks: firebaseDynamicLinks,
        ),
      );

      await tester.tap(find.byKey(loginWithGoogleButtonKey));
      verify(loginCubit.loginWithGoogle).called(1);
    });
    testWidgets(
      'onEmailChanged when email changes',
      (tester) async {
        when(() => loginCubit.state).thenReturn(const LoginFormState());

        await tester.pumpWidget(
          TestApp(
            providers: providers,
            router: router,
            dynamicLinks: firebaseDynamicLinks,
          ),
        );

        await tester.enterText(find.byKey(emailInputKey), testEmail);
        verify(() => loginCubit.onEmailChanged(testEmail)).called(1);
      },
    );
  });
  group('renders', () {
    setUp(() {
      firebaseDynamicLinks = MockFirebaseDynamicLinks();
      when(() => firebaseDynamicLinks.onLink).thenAnswer(
        (_) => const Stream.empty(),
      );
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
      await tester.pumpWidget(
        TestApp(
          providers: providers,
          router: router,
          dynamicLinks: firebaseDynamicLinks,
        ),
      );
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

      await tester.pumpWidget(
        TestApp(
          providers: providers,
          router: router,
          dynamicLinks: firebaseDynamicLinks,
        ),
      );
      await tester.pump();

      expect(
        find.text('Email is not found, please create an account.'),
        findsOneWidget,
      );
    });
  });

  group('navigates', () {
    setUp(() {
      firebaseDynamicLinks = MockFirebaseDynamicLinks();
      when(() => firebaseDynamicLinks.onLink).thenAnswer(
        (_) => const Stream.empty(),
      );
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
    testWidgets('to RegisterScreen when [register] is pressed', (tester) async {
      when(() => loginCubit.state).thenReturn(const LoginFormState());

      await tester.pumpWidget(
        TestApp(
          providers: providers,
          router: router,
          dynamicLinks: firebaseDynamicLinks,
        ),
      );

      await tester.tap(find.byKey(registerButtonKey));
      await tester.pumpAndSettle();
      expect(find.byType(RegisterScreen), findsOneWidget);
    });
    testWidgets('to ForgotPasswordScreen when [forgot password] is pressed',
        (tester) async {
      when(() => loginCubit.state).thenReturn(const LoginFormState());

      await tester.pumpWidget(
        TestApp(
          providers: providers,
          router: router,
          dynamicLinks: firebaseDynamicLinks,
        ),
      );

      await tester.tap(find.byKey(forgotPasswordButtonKey));
      await tester.pumpAndSettle();
      expect(find.byType(ForgotPasswordScreen), findsOneWidget);
    });
  });

  group('LoginPage', () {
    setUp(() {
      firebaseDynamicLinks = MockFirebaseDynamicLinks();
      when(() => firebaseDynamicLinks.onLink).thenAnswer(
        (_) => const Stream.empty(),
      );
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
      router = mockRouter(
        testingRoute: [
          GoRoute(path: '/', builder: (_, __) => const LoginProvider()),
        ],
      );
      await tester.pumpWidget(
        TestApp(
          providers: providers,
          router: router,
          dynamicLinks: firebaseDynamicLinks,
        ),
      );
      expect(find.byType(LoginScreen), findsOneWidget);
    });
  });
}

class MockEmailInput extends Mock implements EmailInput {}
