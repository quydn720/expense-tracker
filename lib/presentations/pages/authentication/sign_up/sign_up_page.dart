import 'package:expense_tracker/app/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:expense_tracker/presentations/components/expandable_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants.dart';
import '../../../../injector.dart';
import 'components/body.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);
  static String routeName = '/sign_up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        lead: GestureDetector(
          child: Image.asset('assets/icons/arrow-left.png'),
          onTap: () => Navigator.pop(context),
        ),
        text: Text('Sign Up', style: title3.copyWith(color: kDark100)),
      ),
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: const Body(),
      ),
    );
  }
}
