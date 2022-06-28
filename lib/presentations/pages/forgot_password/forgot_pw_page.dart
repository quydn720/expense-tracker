import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../components/default_app_widget.dart';
import '../../components/default_button.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);
  static String routeName = '/forgot_pw';
  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const ForgotPasswordPage());
  }

  @override
  Widget build(BuildContext context) {
    return const DefaultAppWidget(
      title: 'Forgot password',
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kMediumPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: kMediumPadding),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Don’t worry.\n',
                      style: title1.copyWith(color: kDark100),
                    ),
                    TextSpan(
                      text:
                          'Enter your email and we’ll send you a link to reset your password.',
                      style: title1.copyWith(color: kDark100),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: kLargePadding),
            TextFormField(),
            const SizedBox(height: kLargePadding),
            DefaultButton(title: 'Continue', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
