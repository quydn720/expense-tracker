import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';

class CommonBottomSheet extends StatelessWidget {
  const CommonBottomSheet({
    super.key,
    required this.title,
    required this.subtitle,
    required this.confirmCallback,
  });

  final String title;
  final String subtitle;
  final VoidCallback confirmCallback;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final l10n = context.l10n;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title, style: textTheme.button),
            const SizedBox(height: 32),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: textTheme.bodyText1?.copyWith(color: Colors.grey),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffEEE5FF),
                      foregroundColor: Theme.of(context).primaryColor,
                      elevation: 0,
                    ),
                    onPressed: Navigator.of(context).pop,
                    child: Text(l10n.no_str),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(elevation: 0),
                    onPressed: confirmCallback,
                    child: Text(l10n.yes_str),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
