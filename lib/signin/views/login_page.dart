import 'package:authentication_repository/authentication_repository.dart';
import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:expense_tracker/signin/login.dart';
import 'package:expense_tracker/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants.dart';
import 'login_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);
  static Page page() => const MaterialPage<void>(child: SignInPage());
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const SignInPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        middle: Text('Sign In', style: title3.copyWith(color: kDark100)),
      ),
      body: BlocProvider(
        create: (_) => LoginCubit(context.read<AuthenticationRepository>()),
        child: const LoginForm(),
      ),
    );
  }
}
