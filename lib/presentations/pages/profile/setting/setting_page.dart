import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/presentations/components/bars.dart';
import 'package:expense_tracker/presentations/components/default_app_widget.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);
  static String routeName = '/Setting';
  @override
  Widget build(BuildContext context) {
    return DefaultAppWidget(
      title: 'Settings',
      body: Column(
        children: [
          SelectionBar(
            sectionTitle: 'Currency',
            currentSelected: 'USD',
            onTap: () {},
          ),
          SelectionBar(
            sectionTitle: 'Language',
            currentSelected: 'English',
            onTap: () {},
          ),
          SelectionBar(
            sectionTitle: 'Theme',
            currentSelected: 'Dark',
            onTap: () {},
          ),
          SelectionBar(
            sectionTitle: 'Security',
            currentSelected: 'Fingerprint',
            onTap: () {},
          ),
          SelectionBar(
            sectionTitle: 'Notification',
            onTap: () {},
          ),
          const SizedBox(height: kLargePadding),
          SelectionBar(
            sectionTitle: 'About',
            onTap: () {},
          ),
          SelectionBar(
            sectionTitle: 'Help',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
