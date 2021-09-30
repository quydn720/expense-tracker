import 'components/body.dart';
import 'package:flutter/material.dart';

class DailyPage extends StatelessWidget {
  static String routeName = '/daily_page';
  static String pageName = 'Daily';
  const DailyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Body();
  }
}
