import 'package:expense_tracker/features/authentication/domain/entities/form_value.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/register_with_email_and_pw.dart';
import 'package:expense_tracker/features/authentication/presentation/register_form/cubit/register_form_cubit.dart';
import 'package:expense_tracker/features/authentication/presentation/register_form/pages/register_screen.dart';
import 'package:expense_tracker/features/settings/theme/theme_controller.dart';
import 'package:expense_tracker/l10n/locale_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:provider/provider.dart';

import '../../../../../../test_helper/app_test.dart';
import '../../../../../../test_helper/mock_router.dart';
import '../../../../../../test_helper/mocks.dart';

void main() {
  late RegisterFormCubit registerCubit;
  late LocaleController localeController;
  late ThemeController themeController;

  const nameInputFieldKey = Key('name_input_field');

  Future<void> _pumpTestWidget(WidgetTester tester) {
    return tester.pumpWidget(
      TestApp(
        providers: [
          ChangeNotifierProvider.value(value: localeController),
          ChangeNotifierProvider.value(value: themeController),
          BlocProvider.value(value: registerCubit),
        ],
        router: mockRouter(
          testingRoute: [
            GoRoute(path: '/', builder: (_, __) => const RegisterScreen())
          ],
        ),
      ),
    );
  }

  setUpAll(() {
    GetIt.instance.registerSingleton<RegisterWithEmailAndPwUseCase>(
      MockRegisterWithEmailAndPwUseCase(),
    );
  });

  setUp(() {
    registerCubit = MockRegisterCubit();

    when(() => registerCubit.stream).thenAnswer((_) => const Stream.empty());
    when(() => registerCubit.state).thenAnswer((_) => const RegisterState());

    localeController = MockLocaleController();
    when(() => localeController.locale).thenReturn(const Locale('en'));

    themeController = MockThemeController();
    when(() => themeController.themeMode).thenReturn(ThemeMode.dark);
  });

  testWidgets('renders RegisterScreen', (tester) async {
    await _pumpTestWidget(tester);

    expect(find.byType(RegisterScreen), findsOneWidget);
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
