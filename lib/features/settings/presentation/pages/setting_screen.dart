import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          _SettingTile(title: 'Currency', value: 'USD'),
          _SettingTile(title: 'Language', value: 'English'),
          _SettingTile(title: 'Theme', value: 'Dark'),
          _SettingTile(title: 'Security'),
          _SettingTile(title: 'Notification'),
          SizedBox(height: 32),
          _SettingTile(title: 'About'),
          _SettingTile(title: 'Help'),
        ],
      ),
    );
  }
}

class _SettingTile extends StatelessWidget {
  const _SettingTile({required this.title, this.value});
  final String title;
  final String? value;

  @override
  Widget build(BuildContext context) {
    final titleTextStyle = Theme.of(context).textTheme.bodyText1;
    final valueTextStyle = Theme.of(context).textTheme.subtitle2?.copyWith(
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        );

    return ListTile(
      title: Text(title, style: titleTextStyle),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(value ?? '', style: valueTextStyle),
          const SizedBox(width: 4),
          Image.asset('assets/icons/arrow-right-2.png', width: 24, height: 24),
        ],
      ),
      minVerticalPadding: 16,
    );
  }
}
