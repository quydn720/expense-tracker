import 'package:authentication_repository/authentication_repository.dart';
import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/authentication/domain/usecases/register_with_email_and_pw.dart';
import 'package:expense_tracker/features/authentication/presentation/pages/cubit/register_cubit.dart';
import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';

import 'register_form.dart';

class RegisterProvider extends StatelessWidget {
  const RegisterProvider({super.key});
  static const routeName = '/register';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RegisterCubit(
        registerWithEmailAndPwUseCase: RegisterWithEmailAndPwUseCase(
          verificationService: VerificationService(),
          auth: getIt<IAuthenticationRepository>(),
        ),
      ),
      child: const RegisterScreen(),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: 'Sign up'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            Spacer(),
            _NameInputField(),
            SizedBox(height: 24),
            _EmailInputField(),
            SizedBox(height: 24),
            _PasswordInputField(),
            SizedBox(height: 16),
            _TermAgreementField(),
            SizedBox(height: 24),
            _RegisterButton(),
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
            _MoveToLoginButton(),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}

class _TermAgreementField extends StatelessWidget {
  const _TermAgreementField();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const _TermAgreementCheckbox(),
        const SizedBox(width: 10),
        Expanded(
          child: Text.rich(
            TextSpan(
              text: 'By signing up, you agree to the ',
              children: [
                TextSpan(
                  text: 'Terms of Service and Privacy Policy',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _MoveToLoginButton extends StatelessWidget {
  const _MoveToLoginButton();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Already has account? '),
        TextButton(
          onPressed: () {},
          child: const Text('Sign in'),
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
      onPressed: () {},
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

class _RegisterButton extends StatelessWidget {
  const _RegisterButton();

  @override
  Widget build(BuildContext context) {
    final isValid = context.watch<RegisterCubit>().state.status.isValidated;
    return ElevatedButton(
      onPressed: isValid ? context.read<RegisterCubit>().onButtonClicked : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Button'),
        ],
      ),
    );
  }
}

class _NameInputField extends StatelessWidget {
  const _NameInputField();

  @override
  Widget build(BuildContext context) {
    final nameField = context.watch<RegisterCubit>().state.name;

    String? errorText;

    if (nameField.invalid) {
      switch (nameField.error) {
        case NormalTextError.empty:
          errorText = 'l10n.asdkjf';
          break;
        case NormalTextError.invalid:
          errorText = 'l1';
          break;
        case null:
          errorText = null;
          break;
      }
    }

    return TextField(
      key: const Key('name_input_field'),
      onChanged: (v) => context.read<RegisterCubit>().onNameChanged(v),
      decoration: InputDecoration(hintText: 'Name', errorText: errorText),
    );
  }
}

class _EmailInputField extends StatelessWidget {
  const _EmailInputField();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: const Key('email_input_field'),
      onChanged: (v) => context.read<RegisterCubit>().onEmailChanged(v),
      decoration: InputDecoration(
        hintText: 'Email',
        errorText: context.watch<RegisterCubit>().state.email.invalid
            ? context.watch<RegisterCubit>().state.email.error
            : null,
      ),
    );
  }
}

class _PasswordInputField extends StatelessWidget {
  const _PasswordInputField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (_, state) {
        return TextFormField(
          key: const Key('pw_input_field'),
          onChanged: (v) => context.read<RegisterCubit>().onPasswordChanged(v),
          decoration: InputDecoration(
            hintText: 'Password',
            errorText: state.password.invalid ? state.password.error : null,
            suffixIcon: IconButton(
              icon: const Icon(Icons.visibility_off),
              onPressed: () {},
            ),
          ),
        );
      },
    );
  }
}

class _TermAgreementCheckbox extends StatelessWidget {
  const _TermAgreementCheckbox();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (_, state) => InkWell(
        onTap: context.read<RegisterCubit>().onTermAgreementCheck,
        splashFactory: NoSplash.splashFactory,
        child: state.termsAgreement
            ? Assets.icons.checkbox.svg()
            : Assets.icons.checkboxBlank.svg(),
      ),
    );
  }
}
