import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../components/default_large_button.dart';
import '../forgor_password/forgot_pw_page.dart';
import '../sign_up/components/hyperlink_text.dart';
import '../sign_up/sign_up_page.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kMediumPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(height: kLargePadding),
                    TextFormField(
                      decoration: const InputDecoration(label: Text('Name')),
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: kMediumPadding),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        label: const Text('Password'),
                        suffixIcon: Image.asset('assets/icons/show.png'),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      textInputAction: TextInputAction.done,
                    ),
                    const SizedBox(height: kMediumPadding),
                    DefaultButton(title: 'Login', onPress: () {}),
                    const SizedBox(height: kLargePadding),
                  ],
                ),
              ),
            ),
            HyperlinkText(
              linkText: 'Forgot Password?',
              normalText: '',
              linkTextStyle: title3.copyWith(color: kViolet100),
              onTap: () {
                Navigator.pushNamed(context, ForgotPasswordPage.routeName);
              },
            ),
            const SizedBox(height: kLargePadding),
            HyperlinkText(
              linkText: 'Sign Up',
              normalText: 'Don’t have an account yet? ',
              onTap: () {
                Navigator.pushNamed(context, SignUpPage.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
