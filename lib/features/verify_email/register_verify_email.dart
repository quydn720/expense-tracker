import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerificationEmailView extends StatelessWidget {
  const VerificationEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter your Verification Code',
                    style: textTheme.headline4,
                  ),
                  const SizedBox(height: 48),
                  Row(
                    children: [
                      Text('8', style: textTheme.headline5),
                      const SizedBox(width: 16),
                      Text('8', style: textTheme.headline5),
                      const SizedBox(width: 16),
                      Text('8', style: textTheme.headline5),
                      const SizedBox(width: 16),
                      Text('8', style: textTheme.headline5),
                      const SizedBox(width: 16),
                      Text('8', style: textTheme.headline5),
                      const SizedBox(width: 16),
                      Expanded(
                        child: TextField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '•',
                            hintStyle: textTheme.headline5
                                ?.copyWith(color: Colors.grey),
                          ),
                          showCursor: false,
                          style: textTheme.headline5,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 48),
                  Text(
                    '4:59',
                    style: textTheme.button?.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '''We send verification code to your email brajaoma*****@gmail.com. You can check your inbox.''',
                    style: textTheme.bodyText1,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'I didn’t received the code? Send again',
                    style: textTheme.bodyText1?.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  const SizedBox(height: 48),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Verify'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
