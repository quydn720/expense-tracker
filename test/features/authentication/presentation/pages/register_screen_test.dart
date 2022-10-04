import 'package:expense_tracker/features/authentication/domain/entities/form_value.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/register_with_email_and_pw.dart';
import 'package:expense_tracker/features/authentication/presentation/register_form/cubit/register_form_cubit.dart';
import 'package:expense_tracker/features/authentication/presentation/register_form/pages/register_screen.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

class MockRegisterWithEmailAndPwUseCase extends Mock
    implements RegisterWithEmailAndPwUseCase {}

class MockGoRouter extends Mock implements GoRouter {}

class MockRegisterCubit extends Mock implements RegisterFormCubit {}

class MockNormalText extends Mock implements NormalText {}

GoRouter mockRouter({
  String? initialLocation,
  required RegisterFormCubit registerCubit,
}) =>
    GoRouter(
      initialLocation: initialLocation ?? 'home',
      routes: [
        GoRoute(
          path: '/register',
          builder: (_, __) => BlocProvider.value(
            value: registerCubit,
            child: const RegisterScreen(),
          ),
        ),
        GoRoute(
          path: '/login',
          builder: (_, __) => const Scaffold(),
        )
      ],
    );

void main() {
  late RegisterFormCubit registerCubit;
  const nameInputFieldKey = Key('name_input_field');

  setUp(() {
    registerCubit = MockRegisterCubit();

    when(() => registerCubit.stream).thenAnswer((_) => const Stream.empty());
    when(() => registerCubit.state).thenAnswer((_) => const RegisterState());
  });

  testWidgets('renders RegisterScreen', (tester) async {
    await tester.pumpWidget(materialApp(registerCubit));

    expect(find.byType(RegisterScreen), findsOneWidget);
  });
  testWidgets(
    'invokes bloc.onButtonSubmit',
    (tester) async {
      when(() => registerCubit.stream).thenAnswer((_) => const Stream.empty());
      when(() => registerCubit.state).thenReturn(
        const RegisterState(status: FormzStatus.valid),
      );

      await tester.pumpWidget(materialApp(registerCubit));

      expect(find.text('Sign Up'), findsOneWidget);
      await tester.tap(find.text('Sign Up'));
      await tester.pumpAndSettle();

      verify(registerCubit.onButtonClicked).called(1);
    },
  );

  testWidgets('button not enable when status is invalid', (tester) async {
    await tester.pumpWidget(materialApp(registerCubit));
    final buttonFinder = find.byKey(const Key('register_button'));
    final registerButton = tester.widget<ElevatedButton>(buttonFinder);
    expect(registerButton.enabled, isFalse);
  });

  testWidgets('show invalid error string', (tester) async {
    final name = MockNormalText();
    when(() => name.invalid).thenReturn(true);
    when(() => name.error).thenReturn(NormalTextError.invalid);
    when(() => registerCubit.state).thenReturn(RegisterState(name: name));

    await tester.pumpWidget(materialApp(registerCubit));

    final errorValidationString = find.text('Invalid name');
    expect(errorValidationString, findsOneWidget);
  });
  testWidgets('show empty error string', (tester) async {
    final name = MockNormalText();
    when(() => name.invalid).thenReturn(true);
    when(() => name.error).thenReturn(NormalTextError.empty);
    when(() => registerCubit.state).thenReturn(RegisterState(name: name));

    await tester.pumpWidget(materialApp(registerCubit));

    final errorValidationString = find.text("Name can't be empty");
    expect(errorValidationString, findsOneWidget);
  });
  testWidgets('show empty error string', (tester) async {
    final name = MockNormalText();
    when(() => name.invalid).thenReturn(true);
    when(() => name.error).thenReturn(null);
    await tester.pumpWidget(materialApp(registerCubit));
    expect(name.error, isNull);
  });

  testWidgets(
    'change true state when type in the input field',
    (tester) async {
      when(() => registerCubit.stream).thenAnswer((_) => const Stream.empty());
      when(() => registerCubit.state).thenReturn(
        const RegisterState(status: FormzStatus.valid),
      );

      await tester.pumpWidget(materialApp(registerCubit));

      await tester.enterText(find.byKey(nameInputFieldKey), 'name');
      verify(() => registerCubit.onNameChanged('name')).called(1);

      await tester.enterText(
        find.byKey(const Key('email_input_field')),
        'email',
      );
      verify(() => registerCubit.onEmailChanged('email')).called(1);

      await tester.enterText(find.byKey(const Key('pw_input_field')), 'pw');
      verify(() => registerCubit.onPasswordChanged('pw')).called(1);
    },
  );
}

MaterialApp materialApp(RegisterFormCubit registerCubit) {
  return MaterialApp.router(
    localizationsDelegates: LocalizationFactory.localizationsDelegates,
    routeInformationParser: mockRouter(
      initialLocation: '/register',
      registerCubit: registerCubit,
    ).routeInformationParser,
    routerDelegate: mockRouter(
      initialLocation: '/register',
      registerCubit: registerCubit,
    ).routerDelegate,
    routeInformationProvider: mockRouter(
      initialLocation: '/register',
      registerCubit: registerCubit,
    ).routeInformationProvider,
  );
}
