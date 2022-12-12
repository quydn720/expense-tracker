import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/authentication/domain/entities/form_value.dart';
import 'package:expense_tracker/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:expense_tracker/features/authentication/presentation/register_form/cubit/register_form_cubit.dart';
import 'package:expense_tracker/features/authentication/presentation/register_form/pages/register_screen.dart';
import 'package:expense_tracker/features/settings/theme/theme.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../../test_helper/mocks.dart';

class MockAuthenticationBloc extends Mock implements AuthenticationBloc {}

void main() {
  late RegisterFormCubit registerCubit;
  late AppBloc appBloc;
  late AuthenticationBloc authenticationBloc;

  const moveToLoginButtonKey = Key('registerScreen_moveToLogin_textButton');
  const mockLoginScreenKey = Key('loginScreen');

  final mockFirebaseDynamicLinks = MockFirebaseDynamicLinks();
  when(() => mockFirebaseDynamicLinks.onLink).thenAnswer(
    (_) => const Stream.empty(),
  );
  const nameInputFieldKey = Key('name_input_field');

  Future<void> _pumpTestWidget(WidgetTester tester) {
    return tester.pumpWidget(
      BlocProvider.value(
        value: registerCubit,
        child: MaterialApp.router(
          theme: themeData,
          localizationsDelegates: LocalizationFactory.localizationsDelegates,
          routerConfig: GoRouter(
            routes: [
              GoRoute(path: '/', builder: (_, __) => const RegisterScreen()),
              GoRoute(
                path: '/login',
                builder: (_, __) => Container(key: mockLoginScreenKey),
              )
            ],
          ),
        ),
      ),
    );
  }

  setUp(() {
    registerCubit = MockRegisterCubit();

    when(() => registerCubit.stream).thenAnswer((_) => const Stream.empty());
    when(() => registerCubit.state).thenAnswer((_) => const RegisterState());

    authenticationBloc = MockAuthenticationBloc();
    when(() => authenticationBloc.stream).thenAnswer(
      (_) => const Stream.empty(),
    );
    when(() => authenticationBloc.state).thenReturn(const Unauthenticated());

    appBloc = MockAppBloc();
    when(() => appBloc.stream).thenAnswer((_) => const Stream.empty());
    when(() => appBloc.state).thenReturn(const AppState());
  });

  testWidgets('renders RegisterScreen', (tester) async {
    await _pumpTestWidget(tester);

    expect(find.byType(RegisterScreen), findsOneWidget);
  });
  group('navigates', () {
    testWidgets('to login screen when tap text button [sign in] ',
        (tester) async {
      await _pumpTestWidget(tester);
      await tester.tap(find.byKey(moveToLoginButtonKey));

      await tester.pumpAndSettle();
      expect(find.byKey(mockLoginScreenKey), findsOneWidget);
    });
  });

  testWidgets(
    'invokes bloc.onButtonSubmit',
    (tester) async {
      when(() => registerCubit.stream).thenAnswer((_) => const Stream.empty());
      when(() => registerCubit.state).thenReturn(
        const RegisterState(status: FormzStatus.valid),
      );

      await _pumpTestWidget(tester);

      expect(find.text('Sign Up'), findsOneWidget);
      await tester.tap(find.text('Sign Up'));
      await tester.pumpAndSettle();

      verify(registerCubit.onButtonClicked).called(1);
    },
  );

  testWidgets('button not enable when status is invalid', (tester) async {
    await _pumpTestWidget(tester);
    final buttonFinder = find.byKey(const Key('register_button'));
    final registerButton = tester.widget<ElevatedButton>(buttonFinder);
    expect(registerButton.enabled, isFalse);
  });

  testWidgets('show invalid error string', (tester) async {
    final name = MockNormalText();
    when(() => name.invalid).thenReturn(true);
    when(() => name.error).thenReturn(NormalTextError.invalid);
    when(() => registerCubit.state).thenReturn(RegisterState(name: name));

    await _pumpTestWidget(tester);

    final errorValidationString = find.text('Invalid name');
    expect(errorValidationString, findsOneWidget);
  });

  testWidgets('show empty error string', (tester) async {
    final name = MockNormalText();
    when(() => name.invalid).thenReturn(true);
    when(() => name.error).thenReturn(NormalTextError.empty);
    when(() => registerCubit.state).thenReturn(RegisterState(name: name));

    await _pumpTestWidget(tester);

    final errorValidationString = find.text("Name can't be empty");
    expect(errorValidationString, findsOneWidget);
  });
  testWidgets('show empty error string', (tester) async {
    final name = MockNormalText();
    when(() => name.invalid).thenReturn(true);
    when(() => name.error).thenReturn(null);
    await _pumpTestWidget(tester);
    expect(name.error, isNull);
  });

  testWidgets(
    'change true state when type in the input field',
    (tester) async {
      when(() => registerCubit.stream).thenAnswer((_) => const Stream.empty());
      when(() => registerCubit.state).thenReturn(
        const RegisterState(status: FormzStatus.valid),
      );

      await _pumpTestWidget(tester);

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
