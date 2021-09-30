import 'package:flutter/material.dart';
import 'components/body.dart';

class OnboardingPage extends StatelessWidget {
  static String routeName = '/onboarding_page';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}
