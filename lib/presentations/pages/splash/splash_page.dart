import 'package:flutter/material.dart';

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
    return Scaffold(
      body: FutureBuilder(
        future: Future.delayed(const Duration(seconds: 0)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container(
              color: kViolet100,
            );
          } else {
            return const OnboardingPage();
          }
        },
      ),
    );
  }
}
