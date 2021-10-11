import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    SizeConfig().init(context);

    return Padding(
      padding: const EdgeInsets.all(kHeaderPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20.0),
          SizedBox(
            width: SizeConfig.screenWidth * 0.2,
            height: SizeConfig.screenHeight * 0.3,
            child: SvgPicture.asset('assets/images/shopping.svg'),
          ),
          Spacer(),
          Text(
            'Login to your account',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(height: 20.0),
          Expanded(child: InputLoginForm()),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
            ),
            child: Text('Login'),
            onPressed: () {},
          ),
          TextButton(onPressed: () {}, child: Text('Already have an account?')),
          // ElevatedButton.icon(
          //   style: ButtonStyle(
          //     backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
          //   ),
          //   onPressed: () {},
          //   icon: FaIcon(FontAwesomeIcons.facebook),
          //   label: Text('Continue with Facebook'),
          // ),
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
              hintText: 'Email address',
              contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 10),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              label: Text('Password'),
              hintText: 'Password',
              contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
            ),
          ),
        ],
      ),
    );
  }
}
