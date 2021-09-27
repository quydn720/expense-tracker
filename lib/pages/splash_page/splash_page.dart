import 'package:flutter/material.dart';
import 'components/body.dart';

class SplashPage extends StatelessWidget {
  static String routeName = '/splash_page';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}
