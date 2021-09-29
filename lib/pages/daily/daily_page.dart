import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../components/extended_app_bar_page.dart';
import 'components/body.dart';
import 'package:flutter/material.dart';

class DailyPage extends StatelessWidget {
  static String routeName = '/daily_page';
  const DailyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ExtendedAppBarPage(
        body: Body(), // TODO: body take the index of app bar
        title: 'Daily transactions',
        icon: FontAwesomeIcons.search,
      ),
    );
  }
}
