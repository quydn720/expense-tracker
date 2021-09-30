import '../home/home_pages.dart';

import '../../size_config.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  static String routeName = '/splash_page';
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // TODO: Check shared preferences xem thu user co phai lan dau mo app k
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 2)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container(
            color: Colors.white,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return HomePage();
        }
      },
    );
  }
}
