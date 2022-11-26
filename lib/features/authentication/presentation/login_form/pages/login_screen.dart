import 'package:authentication_repository/authentication_repository.dart';
import 'package:expense_tracker/l10n/gen/app_localizations.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';

import '../../../../../di/injector.dart';
import '../cubit/login_form_cubit.dart';

class LoginProvider extends StatelessWidget {
  const LoginProvider({super.key});
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: context.l10n.login),
      body: BlocProvider(
        create: (_) => getIt<LoginFormCubit>(),
        child: const LoginScreen(),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginFormCubit, LoginFormState>(
      listenWhen: (prev, curr) {
        final fail = curr.status == FormzStatus.invalid ||
            curr.status == FormzStatus.submissionFailure;
        return (prev.status != curr.status) && fail;
      },
      listener: (context, state) {
        final content = state.loginFailure?.toLocalizedString(context.l10n);

        ScaffoldMessenger.of(context).removeCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(content!)),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            Spacer(),
            _EmailInputField(),
            SizedBox(height: 24),
            _PasswordInputField(),
            SizedBox(height: 8),
            Align(alignment: Alignment.centerRight, child: _ForgotPassword()),
            SizedBox(height: 16),
            _LoginButton(),
            SizedBox(height: 12),
            Text(
              'Or with',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xff91919F),
              ),
            ),
            SizedBox(height: 12),
            _SignInWithGoogleButton(),
            SizedBox(height: 16),
            _MoveToRegisterButton(),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}

class _ForgotPassword extends StatelessWidget {
  const _ForgotPassword();

  @override
  Widget build(BuildContext context) {
    final emailValue = context.read<LoginFormCubit>().state.email.value;

    return TextButton(
      key: const Key('loginForm_forgotPassword_textButton'),
      child: const Text('Forgot password?'),
      onPressed: () {
        context.push('/forgot-password', extra: emailValue);
      },
    );
  }
}

class _MoveToRegisterButton extends StatelessWidget {
  const _MoveToRegisterButton();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme.bodyText1;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don’t have an account yet? ',
          style: textTheme?.copyWith(color: theme.colorScheme.outline),
        ),
        TextButton(
          key: const Key('loginForm_register_textButton'),
          onPressed: () => context.go('/register'),
          child: Text(
            context.l10n.signUp,
            style: textTheme?.copyWith(color: theme.colorScheme.primary),
          ),
        ),
      ],
    );
  }
}

class _SignInWithGoogleButton extends StatelessWidget {
  const _SignInWithGoogleButton();

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      key: const Key('loginForm_loginWithGoogle_outlinedButton'),
      onPressed: context.read<LoginFormCubit>().loginWithGoogle,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/icons/google.svg'),
          const SizedBox(width: 8),
          const Text('Sign in with Google'),
        ],
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    final isValid = context.watch<LoginFormCubit>().state.status.isValidated;
    final isLoading =
        context.watch<LoginFormCubit>().state.status.isSubmissionInProgress;

    return ElevatedButton(
      key: const Key('loginForm_login_elevatedButton'),
      onPressed:
          isValid ? context.read<LoginFormCubit>().onLoginButtonClicked : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(isLoading ? 'Loading' : context.l10n.login)],
      ),
    );
  }
}

class _EmailInputField extends StatelessWidget {
  const _EmailInputField();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: const Key('loginForm_emailInput_textField'),
      onChanged: context.read<LoginFormCubit>().onEmailChanged,
      autocorrect: false,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Email',
        errorText: context.watch<LoginFormCubit>().state.email.invalid
            ? context.watch<LoginFormCubit>().state.email.error
            : null,
      ),
    );
  }
}

class _PasswordInputField extends StatelessWidget {
  const _PasswordInputField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginFormCubit, LoginFormState>(
      builder: (_, state) {
        final formCubit = context.read<LoginFormCubit>();

        return TextFormField(
          key: const Key('loginForm_passwordInput_textField'),
          onChanged: formCubit.onPasswordChanged,
          autocorrect: false,
          decoration: InputDecoration(
            hintText: 'Password',
            errorText: state.password.invalid ? state.password.error : null,
            suffixIcon: IconButton(
              icon: state.isObscured
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off),
              onPressed: formCubit.toggle,
            ),
          ),
          obscureText: state.isObscured,
        );
      },
    );
  }
}

extension LoginFailureX on LoginFailure {
  String toLocalizedString(AppLocalizations dict) {
    return map(
      withGoogle: (failure) => failure.code.map(
        invalidCredential: (_) => dict.about,
        accountExistsWithDifferentCredential: (_) => dict.about,
        operationNotAllowed: (_) => dict.about,
        userDisabled: (_) => dict.about,
        userNotFound: (_) => dict.about,
        wrongPassword: (_) => dict.about,
        invalidVerificationCode: (_) => dict.about,
        invalidVerificationId: (_) => dict.about,
        userCancelled: (_) => dict.googleError_userCancelled,
        unknown: (_) => dict.about,
      ),
      withEmailAndPassword: (failure) => failure.code.map(
        invalidEmail: (_) => dict.authError_invalidEmail,
        userDisabled: (_) => dict.authError_userDisabled,
        userNotFound: (_) => dict.authError_userNotFound,
        wrongPassword: (_) => dict.authError_wrongPassword,
        unknown: (_) => dict.authError_unknownException,
      ),
      (_) => dict.authError_unknownException,
    )!;
  }
}
