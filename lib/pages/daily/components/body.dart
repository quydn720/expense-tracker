import '../../../constants.dart';
import '../../../size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.025),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (_, index) => Divider(
                thickness: 2.0,
                indent: SizeConfig.screenWidth * 0.2,
                endIndent: SizeConfig.screenWidth * 0.05,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: FaIcon(FontAwesomeIcons.accessibleIcon),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Hello this is a long text aaaaaaaa',
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text('\$300.4'),
                    ],
                  ),
                  subtitle: Text('Fri 10 a.m'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
