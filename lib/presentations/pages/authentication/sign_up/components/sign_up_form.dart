import 'dart:async';

import 'package:another_flushbar/flushbar.dart';
import 'package:expense_tracker/app/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:expense_tracker/presentations/pages/main/main_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constants.dart';
import '../../../../components/default_button.dart';
import 'package:flutter/material.dart';

import 'hyperlink_text.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SignInFormBloc>();
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              Flushbar(
                message: failure.map(
                  cancelledByUser: (_) => 'Your registration has been canceled',
                  serverError: (_) => 'Server error',
                  emailAlreadyInUse: (_) => 'Email already in use',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Wrong email or password',
                  notAgreeTerms: (_) => 'You must agree with Terms of Service',
                ),
                duration: const Duration(seconds: 2),
              ).show(context);
            },
            (_) {
              Flushbar(
                message: 'Register successfully',
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
        return Form(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: kLargePadding),
                TextFormField(
                  decoration: const InputDecoration(label: Text('Name')),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  onChanged: (v) => bloc.add(DisplayNameChanged(v)),
                ),
                const SizedBox(height: kMediumPadding),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(label: Text('Email')),
                  textInputAction: TextInputAction.next,
                  validator: (_) => bloc.state.emailAddress.value.fold(
                    (failure) => failure.maybeMap(
                      invalidEmail: (_) => 'Invalid Email',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: (v) => bloc.add(EmailChanged(v)),
                ),
                const SizedBox(height: kMediumPadding),
                TextFormField(
                    obscureText: bloc.state.isPasswordVisible,
                    autocorrect: false,
                    decoration: InputDecoration(
                      label: const Text('Password'),
                      suffixIcon: IconButton(
                        icon: Image.asset('assets/icons/show.png'),
                        onPressed: () => bloc.add(const ShowPasswordPressed()),
                      ),
                    ),
                    validator: (_) => bloc.state.password.value.fold(
                          (failure) {
                            return failure.maybeMap(
                              shortPassword: (_) => 'Short Password',
                              orElse: () => null,
                            );
                          },
                          (_) => null,
                        ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.done,
                    onChanged: (v) => bloc.add(PasswordChanged(v))),
                const SizedBox(height: kMediumPadding),
                Row(
                  children: [
                    Checkbox(
                      value: bloc.state.checkboxState,
                      onChanged: (v) => bloc.add(CheckboxChanged(v!)),
                    ),
                    const Expanded(
                      child: HyperlinkText(
                        normalText: 'By signing up, you agree to the ',
                        linkText: 'Terms of Service and Privacy Policy',
                      ),
                    )
                  ],
                ),
                const SizedBox(height: kMediumPadding),
                DefaultButton(
                  title: 'Sign up',
                  onPress: () {
                    bloc.add(const RegisterWithEmailAndPasswordPressed());
                  },
                ),
                const SizedBox(height: kMediumPadding),
              ],
            ),
          ),
        );
      },
    );
  }
}
