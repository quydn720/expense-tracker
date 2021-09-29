import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../home_pages/home_pages.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              height: 40.0,
              width: double.infinity,
              child: DefaultButton(
                title: 'I\'m interested',
                onPressed: () {
                  Navigator.popAndPushNamed(context, HomePage.routeName);
                },
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
