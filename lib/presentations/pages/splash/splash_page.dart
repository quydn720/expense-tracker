import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/auth/auth_bloc.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../authentication/sign_up/sign_up_page.dart';
import '../home/home_pages.dart';

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
            Navigator.pushReplacementNamed(context, HomePage.routeName);
          },
          unauthenticated: (_) {
            print('not authenticated');
            Navigator.pushReplacementNamed(context, SignUpPage.routeName);
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
