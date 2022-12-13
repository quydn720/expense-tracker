import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';

import '../../../app/presentation/widgets/default_app_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  static const String routeName = '/setting/notification';

  @override
  Widget build(BuildContext context) {
    final titleTextStyle = Theme.of(context).textTheme.bodyText1?.copyWith(
          color: const Color(0xff292B2D),
        );
    final subtitleTextStyle = Theme.of(context).textTheme.subtitle2?.copyWith(
          fontSize: 13,
        );

    return Scaffold(
      appBar: DefaultAppBar(title: context.l10n.notification),
      body: Column(
        children: [
          SwitchListTile.adaptive(
            value: true,
            onChanged: (v) {},
            activeColor: Theme.of(context).primaryColor,
            inactiveTrackColor: const Color(0xffEEE5FF),
            title: Text(
              'Expense Alert',
              style: titleTextStyle,
            ),
            subtitle: Text(
              'Get notification about your expense',
              style: subtitleTextStyle,
            ),
            isThreeLine: true,
          ),
          SwitchListTile.adaptive(
            activeColor: Theme.of(context).primaryColor,
            inactiveTrackColor: const Color(0xffEEE5FF),
            value: true,
            onChanged: (v) {},
            title: Text(
              'Budget',
              style: titleTextStyle,
            ),
            subtitle: Text(
              'Get notification when your budget exceeding the limit',
              style: subtitleTextStyle,
            ),
            isThreeLine: true,
          ),
          SwitchListTile.adaptive(
            value: false,
            onChanged: (v) {},
            activeColor: Theme.of(context).primaryColor,
            inactiveTrackColor: const Color(0xffEEE5FF),
            title: Text(
              'Tips & Articles',
              style: titleTextStyle,
            ),
            subtitle: Text(
              'Small & useful pieces of pratical financial advice',
              style: subtitleTextStyle,
            ),
            isThreeLine: true,
          ),
        ],
      ),
    );
  }
}
