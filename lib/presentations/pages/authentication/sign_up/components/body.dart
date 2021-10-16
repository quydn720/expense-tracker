import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/pages/authentication/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';

import 'sign_up_form.dart';
import 'hyperlink_text.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kMediumPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SignUpForm(),
            const Text('Or with'),
            const SizedBox(height: kMediumPadding),
            HyperlinkText(
              linkText: 'Login',
              onTap: () => Navigator.pushNamed(context, SignInPage.routeName),
              normalText: 'Already have an account? ',
            ),
          ],
        ),
      ),
    );
  }
}
