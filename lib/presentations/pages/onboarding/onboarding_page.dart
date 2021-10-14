import 'package:flutter/material.dart';

import 'body.dart';

class OnboardingPage extends StatelessWidget {
  static String routeName = '/onboarding_page';
  const OnboardingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}
