import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  static String routeName = '/login_page';
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InputLoginForm(),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
            ),
            child: Text('Login'),
            onPressed: () {},
          ),
          TextButton(onPressed: () {}, child: Text('Already have an account?')),
          Divider(),
          ElevatedButton.icon(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.apple),
            label: Text('Continue with Apple'),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.google),
            label: Text('Continue with Apple'),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.facebook),
            label: Text('Continue with Apple'),
          ),
        ],
      ),
    );
  }
}

class InputLoginForm extends StatelessWidget {
  const InputLoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              label: Text('Email address'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              hintText: 'Email address',
              contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 10),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              hintText: 'Password',
              contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
            ),
          ),
        ],
      ),
    );
  }
}
