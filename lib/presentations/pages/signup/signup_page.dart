import 'package:authentication_repository/authentication_repository.dart';
import '../../../blocs/signup/signup_cubit.dart';
import '../../../constants.dart';
import '../login/login_page.dart';
import '../login/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'signup_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const SignUpPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up', style: title3.copyWith(color: kDark100)),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: BlocProvider<SignupCubit>(
        create: (_) => SignupCubit(context.read<AuthenticationRepository>()),
        child: Column(
          children: [
            const SignUpForm(),
            HyperlinkText(
              linkText: 'Login',
              normalText: 'Already have an account? ',
              onTap: () {
                Navigator.of(context).push<void>(SignInPage.route());
              },
            ),
          ],
        ),
      ),
    );
  }
}
