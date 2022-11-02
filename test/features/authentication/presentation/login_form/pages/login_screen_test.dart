import 'package:authentication_repository/authentication_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/authentication/presentation/login_form/cubit/login_form_cubit.dart';
import 'package:expense_tracker/features/authentication/presentation/login_form/pages/login_screen.dart';
import 'package:expense_tracker/features/settings/theme/theme_controller.dart';
import 'package:expense_tracker/l10n/locale_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../../../../../test_helper/app_test.dart';
import '../../../../../../test_helper/mock_router.dart';
import '../../../../../../test_helper/mocks.dart';

class MockLoginFormCubit extends Mock implements LoginFormCubit {}

void main() {
  late LocaleController localeController;
  late ThemeController themeController;
  late LoginFormCubit loginFormCubit;
  late GoRouter router;
  late AppBloc appBloc;
  late List<SingleChildWidget> providers;

  setUp(() {
    router = mockRouter(
      testingRoute: [
        GoRoute(path: '/', builder: (_, __) => const LoginScreen())
      ],
    );

    loginFormCubit = MockLoginFormCubit();

    localeController = MockLocaleController();
    when(() => localeController.locale).thenReturn(const Locale('en'));

    themeController = MockThemeController();
    when(() => themeController.themeMode).thenReturn(ThemeMode.dark);

    appBloc = MockAppBloc();
    when(() => appBloc.stream).thenAnswer((_) => const Stream.empty());
    when(() => appBloc.state).thenReturn(const Unauthenticated());

    providers = [
      ChangeNotifierProvider.value(value: localeController),
      ChangeNotifierProvider.value(value: themeController),
      BlocProvider.value(value: appBloc),
      BlocProvider.value(value: loginFormCubit),
    ];
  });
  testWidgets('login screen renders', (tester) async {
    when(() => loginFormCubit.stream).thenAnswer((_) => const Stream.empty());
    when(() => loginFormCubit.state).thenReturn(const LoginFormState());

    await tester.pumpWidget(TestApp(providers: providers, router: router));

    expect(find.byType(LoginScreen), findsOneWidget);
  });

  testWidgets('login screen have error message snack bar', (tester) async {
    when(() => loginFormCubit.stream).thenAnswer(
      (_) => Stream.fromIterable([
        const LoginFormState(status: FormzStatus.submissionInProgress),
        LoginFormState(
          status: FormzStatus.submissionFailure,
          authFailureOrSuccessOption: optionOf(
            left(const LogInWithEmailAndPasswordFailure(message: 'f')),
          ),
        ),
      ]),
    );
    when(() => loginFormCubit.state).thenReturn(
      LoginFormState(
        authFailureOrSuccessOption: optionOf(
          left(const LogInWithEmailAndPasswordFailure.invalidEmail()),
        ),
      ),
    );

    await tester.pumpWidget(TestApp(providers: providers, router: router));
    await tester.pumpAndSettle();
    expect(find.text('An unknown exception occurred.'), findsOneWidget);
  });
  testWidgets('login screen have error message snack bar', (tester) async {
    when(() => loginFormCubit.stream).thenAnswer(
      (_) => Stream.fromIterable([
        const LoginFormState(status: FormzStatus.submissionInProgress),
        LoginFormState(
          status: FormzStatus.submissionFailure,
          authFailureOrSuccessOption: optionOf(
            left(const LogInWithEmailAndPasswordFailure.invalidEmail()),
          ),
        ),
      ]),
    );
    when(() => loginFormCubit.state).thenReturn(
      LoginFormState(
        authFailureOrSuccessOption: optionOf(
          left(const LogInWithEmailAndPasswordFailure.invalidEmail()),
        ),
      ),
    );

    await tester.pumpWidget(TestApp(providers: providers, router: router));
    await tester.pumpAndSettle();

    expect(find.text('Email is not valid or badly formatted.'), findsOneWidget);
  });
}
