import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordEmailSentScreen extends StatelessWidget {
  const ForgotPasswordEmailSentScreen({super.key, required this.email});
  final String email;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final textStyle = textTheme.headline2?.copyWith(
      color: Theme.of(context).colorScheme.onBackground,
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/images/send_email.png'),
            const SizedBox(height: 18),
            Text(
              'Your email is on the way',
              style: textStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Text(
              context.l10n.forgot_password_sent(email),
              style: textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: () => context.go('/login'),
                child: const Text('Back to Login'),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
