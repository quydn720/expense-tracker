import 'package:expense_tracker/features/common/pages/onboarding/body.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});
  static String routeName = '/onboarding_page';
  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Body(),
        ),
      ),
    );
  }
}
