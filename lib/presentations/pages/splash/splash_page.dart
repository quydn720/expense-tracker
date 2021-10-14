import 'package:expense_tracker/app/auth/auth_bloc.dart';
import 'package:expense_tracker/presentations/pages/authentication/sign_up/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../onboarding/onboarding_page.dart';

class SplashPage extends StatelessWidget {
  static String routeName = '/splash_page';
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // TODO: Check shared preferences xem thu user co phai lan dau mo app k
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            print(' authenticated');
          },
          unauthenticated: (_) {
            print('not authenticated');
            Navigator.pushNamed(context, SignUpPage.routeName);
          },
        );
      },
      child: Scaffold(
        body: Container(
          color: kViolet100,
        ),
      ),
    );
  }
}
