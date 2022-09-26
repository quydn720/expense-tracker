import 'dart:developer';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../di/injector.dart';

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
                  Pinput(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    scrollPadding: EdgeInsets.zero,
                    length: 6,
                    showCursor: false,
                    onCompleted: log,
                    defaultPinTheme: PinTheme(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      textStyle: textTheme.headline5,
                      margin: const EdgeInsets.only(right: 32),
                    ),
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
                    onPressed: () {
                      (getIt<IAuthenticationRepository>()
                              as MockAuthenticateRepo)
                          .verifyEmail('123456');
                    },
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
