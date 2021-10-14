import 'package:another_flushbar/flushbar.dart';
import 'package:expense_tracker/app/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:expense_tracker/presentations/components/default_outlined_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constants.dart';
import '../../../../components/default_large_button.dart';
import 'package:flutter/material.dart';

import 'hyperlink_text.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String name = '';
  bool isVisible = true;
  bool agreeTerm = false;

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
                  cancelledByUser: (_) => 'cancelledByUser',
                  serverError: (_) => 'serverError',
                  emailAlreadyInUse: (_) => 'emailAlreadyInUse',
                  invalidEmailAndPasswordCombination: (_) =>
                      'invalidEmailAndPasswordCombination',
                ),
                duration: const Duration(seconds: 2),
              ).show(context);
            },
            (_) {
              print('register successfully');
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
                  onSaved: (v) => name = v!,
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
                    obscureText: isVisible,
                    autocorrect: false,
                    decoration: InputDecoration(
                      label: const Text('Password'),
                      suffixIcon: IconButton(
                        icon: Image.asset('assets/icons/show.png'),
                        onPressed: () => setState(
                          () => isVisible = !isVisible,
                        ),
                      ),
                    ),
                    validator: (_) => bloc.state.password.value.fold(
                          (failure) => failure.maybeMap(
                            shortPassword: (_) => 'Short Password',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.done,
                    onChanged: (v) => bloc.add(PasswordChanged(v))),
                const SizedBox(height: kMediumPadding),
                Row(
                  children: [
                    Checkbox(
                        value: agreeTerm,
                        onChanged: (v) => setState(() => agreeTerm = v!)),
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
                DefaultOutlinedButton(
                  title: 'Sign up with Google',
                  onPress: () {
                    bloc.add(const SignInFormEvent.signInWithGooglePressed());
                  },
                  icon: Image.asset('assets/icons/flat-color-icons_google.png'),
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
