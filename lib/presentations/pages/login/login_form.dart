import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../../constants.dart';
import '../../../blocs/login/login_cubit.dart';
import '../../components/default_button.dart';
import '../forgot_password/forgot_pw_page.dart';
import '../signup/signup_page.dart';
import 'widgets.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.status == FormzStatus.submissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.errorMessage ?? 'Authentication Failure'),
              ),
            );
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(kMediumPadding),
        child: Align(
          alignment: const Alignment(0, -2 / 3),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: kMediumPadding),
                _EmailInput(),
                const SizedBox(height: kMediumPadding),
                _PasswordInput(),
                const SizedBox(height: kMediumPadding),
                _LoginButton(),
                const SizedBox(height: kMediumPadding),
                _GoogleLoginButton(),
                const SizedBox(height: kMediumPadding),
                HyperlinkText(
                  linkText: 'Forgot Password?',
                  normalText: '',
                  linkTextStyle: title3.copyWith(color: kViolet100),
                  onTap: () {
                    Navigator.of(context)
                        .push<void>(ForgotPasswordPage.route());
                  },
                ),
                const SizedBox(height: kMediumPadding),
                HyperlinkText(
                  linkText: 'Sign Up',
                  normalText: 'Don’t have an account yet? ',
                  onTap: () {
                    Navigator.of(context).push<void>(SignUpPage.route());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextField(
          key: const Key('loginForm_emailInput_textField'),
          onChanged: (email) => context.read<LoginCubit>().emailChanged(email),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Email',
            helperText: '',
            errorText: state.email.invalid ? 'Invalid email' : null,
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          key: const Key('loginForm_passwordInput_textField'),
          onChanged: (password) =>
              context.read<LoginCubit>().passwordChanged(password),
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            helperText: '',
            errorText: state.password.invalid ? 'Invalid password' : null,
          ),
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : DefaultButton(
                key: const Key('loginForm_continue_raisedButton'),
                onPressed: state.status.isValidated
                    ? () => context.read<LoginCubit>().logInWithCredentials()
                    : null,
                title: 'Sign in',
              );
      },
    );
  }
}

class _GoogleLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultOutlinedButton(
      key: const Key('loginForm_googleLogin_raisedButton'),
      title: 'Sign in with Google',
      onPress: () => context.read<LoginCubit>().logInWithGoogle(),
      icon: Image.asset('assets/icons/flat-color-icons_google.png'),
    );
  }
}

//                         TextFormField(
//                           obscureText: bloc.state.isPasswordVisible,
//                           decoration: InputDecoration(
//                             label: const Text('Password'),
//                             suffixIcon: IconButton(
//                               icon: Image.asset('assets/icons/show.png'),
//                               onPressed: () =>
//                                   bloc.add(const ShowPasswordPressed()),
//                             ),
//                           ),
//                           textInputAction: TextInputAction.done,
//                           validator: (_) => bloc.state.password.value.fold(
//                             (failure) {
//                               return failure.maybeMap(
//                                 shortPassword: (_) => 'Short Password',
//                                 orElse: () => null,
//                               );
//                             },
//                             (_) => null,
//                           ),
//                           onChanged: (v) => bloc.add(PasswordChanged(v)),
//                         ),
