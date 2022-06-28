import 'package:flutter/material.dart';

import 'body.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);
  static String routeName = '/onboarding_page';
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: const SafeArea(
        child: Scaffold(
          body: Body(),
        ),
      ),
    );
  }
}
