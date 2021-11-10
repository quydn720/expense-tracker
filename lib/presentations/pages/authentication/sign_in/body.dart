import 'dart:async';

import 'package:another_flushbar/flushbar.dart';
import 'package:expense_tracker/app/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:expense_tracker/presentations/pages/authentication/forgot_password/forgot_pw_page.dart';
import 'package:expense_tracker/presentations/pages/main/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants.dart';
import '../../../components/default_button.dart';
import '../sign_up/components/hyperlink_text.dart';
import '../sign_up/sign_up_page.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SignInFormBloc>();
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              failure.maybeMap(
                invalidEmailAndPasswordCombination: (_) =>
                    'Wrong email or password',
                orElse: () {},
              );
            },
            (_) {
              Flushbar(
                message: 'Login with Google successfully',
                duration: const Duration(seconds: 1),
              ).show(context);
              Timer(const Duration(seconds: 2), () {
                Navigator.pushReplacementNamed(context, MainPage.routeName);
              });
            },
          ),
        );
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(kMediumPadding),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Form(
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(height: kLargePadding),
                        TextFormField(
                          decoration:
                              const InputDecoration(label: Text('Name')),
                          textInputAction: TextInputAction.next,
                          onChanged: (v) => bloc.add(EmailChanged(v)),
                          validator: (_) => bloc.state.emailAddress.value.fold(
                            (failure) => failure.maybeMap(
                              invalidEmail: (_) => 'Invalid Email',
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                        ),
                        const SizedBox(height: kMediumPadding),
                        TextFormField(
                          obscureText: bloc.state.isPasswordVisible,
                          decoration: InputDecoration(
                            label: const Text('Password'),
                            suffixIcon: IconButton(
                              icon: Image.asset('assets/icons/show.png'),
                              onPressed: () =>
                                  bloc.add(const ShowPasswordPressed()),
                            ),
                          ),
                          textInputAction: TextInputAction.done,
                          validator: (_) => bloc.state.password.value.fold(
                            (failure) {
                              return failure.maybeMap(
                                shortPassword: (_) => 'Short Password',
                                orElse: () => null,
                              );
                            },
                            (_) => null,
                          ),
                          onChanged: (v) => bloc.add(PasswordChanged(v)),
                        ),
                        const SizedBox(height: kMediumPadding),
                        DefaultButton(
                          title: 'Login',
                          onPress: () {
                            bloc.add(const SignInWithEmailAndPasswordPressed());
                          },
                        ),
                        const SizedBox(height: kMediumPadding),
                        const Text('Or with'),
                        const SizedBox(height: kMediumPadding),
                        DefaultOutlinedButton(
                          title: 'Sign in with Google',
                          onPress: () =>
                              bloc.add(const SignInWithGooglePressed()),
                          icon: Image.asset(
                              'assets/icons/flat-color-icons_google.png'),
                        ),
                        const SizedBox(height: kMediumPadding),
                        const SizedBox(height: kLargePadding),
                      ],
                    ),
                  ),
                ),
                HyperlinkText(
                  linkText: 'Forgot Password?',
                  normalText: '',
                  linkTextStyle: title3.copyWith(color: kViolet100),
                  onTap: () {
                    Navigator.pushNamed(context, ForgotPasswordPage.routeName);
                  },
                ),
                const SizedBox(height: kLargePadding),
                HyperlinkText(
                  linkText: 'Sign Up',
                  normalText: 'Don’t have an account yet? ',
                  onTap: () {
                    Navigator.pushNamed(context, SignUpPage.routeName);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
// TODO: add empty password failure for login event
