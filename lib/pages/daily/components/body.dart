import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const SizedBox(height: 10.0),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (_, index) => Divider(
                thickness: 2.0,
                indent: 75.0,
                endIndent: 25.0,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                      child: FaIcon(FontAwesomeIcons.accessibleIcon)),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hello this is a long text',
                      ),
                      Text('\$300.4'),
                    ],
                  ),
                  subtitle: Text('Fri 10 a.m'),
                );
              },
            ),
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
