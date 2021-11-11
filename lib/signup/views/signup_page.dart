import 'package:authentication_repository/authentication_repository.dart';
import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:expense_tracker/signup/cubit/signup_cubit.dart';
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
      appBar: DefaultAppBar(
        lead: GestureDetector(
          child: Image.asset('assets/icons/arrow-left.png'),
          onTap: () => Navigator.pop(context),
        ),
        middle: Text('Sign Up', style: title3.copyWith(color: kDark100)),
      ),
      body: BlocProvider<SignupCubit>(
        create: (_) => SignupCubit(context.read<AuthenticationRepository>()),
        child: const SignUpForm(),
      ),
    );
  }
}
