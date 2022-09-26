import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../main/main_page.dart';

class ExportDataPromptPage extends StatelessWidget {
  const ExportDataPromptPage({super.key});
  static String routeName = '/export_result';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kMediumPadding),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Image.asset('assets/images/data_table.png'),
                    const SizedBox(height: kMediumPadding),
                    const Text(
                      '''
                      Check your email, we send you the financial report.
                      In certain cases, it might take a little longer,
                      depending on the time period and 
                      the volume of activity.''',
                      style: body1,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                child: const Text('Back to Home'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, MainPage.routeName);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
