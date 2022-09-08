import 'package:expense_tracker/features/authentication/domain/usecases/register_with_email_and_pw.dart';
import 'package:expense_tracker/features/authentication/presentation/pages/cubit/register_cubit.dart';
import 'package:expense_tracker/features/authentication/presentation/pages/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';

class MockRegisterWithEmailAndPwUseCase extends Mock
    implements RegisterWithEmailAndPwUseCase {}

class MockGoRouter extends Mock implements GoRouter {}

class MockRegisterCubit extends Mock implements RegisterCubit {}

GoRouter routers([String? initialLocation, RegisterCubit? registerCubit]) =>
    GoRouter(
      initialLocation: initialLocation ?? 'home',
      routes: [
        GoRoute(
          path: '/h',
          builder: (_, __) => BlocProvider.value(
            value: registerCubit!,
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
  late RegisterCubit registerCubit;

  setUp(() {
    registerCubit = MockRegisterCubit();
    when(() => registerCubit.stream).thenAnswer((_) => const Stream.empty());
    when(() => registerCubit.state).thenAnswer((_) => const RegisterState());
  });

  testWidgets('renders RegisterScreen', (tester) async {
    await tester.pumpWidget(
      MaterialApp.router(
        routeInformationParser: routers(
          '/h',
          registerCubit,
        ).routeInformationParser,
        routerDelegate: routers(
          '/h',
          registerCubit,
        ).routerDelegate,
        routeInformationProvider: routers(
          '/h',
          registerCubit,
        ).routeInformationProvider,
      ),
    );

    expect(find.byType(RegisterScreen), findsOneWidget);
  });
  testWidgets('invokes bloc.onButtonSubmit', (tester) async {
    when(() => registerCubit.stream).thenAnswer((_) => const Stream.empty());
    when(() => registerCubit.state).thenReturn(
      const RegisterState(status: FormzStatus.valid),
    );

    await tester.pumpWidget(
      MaterialApp.router(
        routeInformationParser:
            routers('/h', registerCubit).routeInformationParser,
        routerDelegate: routers('/h', registerCubit).routerDelegate,
        routeInformationProvider:
            routers('/h', registerCubit).routeInformationProvider,
      ),
    );

    await tester.enterText(find.byKey(const Key('name_input_field')), 'name');
    await tester.enterText(find.byKey(const Key('email_input_field')), 'email');
    await tester.enterText(find.byKey(const Key('pw_input_field')), 'pw');

    expect(find.byKey(const Key('name_input_field')), findsOneWidget);
    expect(find.text('Button'), findsOneWidget);
    await tester.tap(find.text('Button'));
    await tester.pumpAndSettle();

    verify(() => registerCubit.onEmailChanged('email')).called(1);
    verify(() => registerCubit.onNameChanged('name')).called(1);
    verify(() => registerCubit.onPasswordChanged('pw')).called(1);
    verify(registerCubit.onButtonClicked).called(1);
  });
}
