import '../pages/daily/components/day_indicator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExtendedAppBarPage extends StatelessWidget {
  const ExtendedAppBarPage({
    Key? key,
    required this.body,
    required this.title,
  });

  final Widget body;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      appBar: AppBar(
        flexibleSpace: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.search,
                      size: 20.0,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                    7, (index) => DayIndicator(day: 27, dayOfWeek: 'Mon')),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
