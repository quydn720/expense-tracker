import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage();

  @override
  Widget build(BuildContext context) {
    return Body();
  }
}

class Body extends StatelessWidget {
  const Body();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Column(
        children: [
          Spacer(),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Text('PT'),
                  radius: SizeConfig.screenWidth * 0.125,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Pham Quoc Trung',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text('Credit score: 73.50'),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(kDefaultPadding),
              ),
            ),
            width: double.infinity,
            height: SizeConfig.screenHeight * 0.125,
          ),
          Spacer(),
          Divider(),
          ListTile(
            title: Text('Email'),
            subtitle: Text('sasukekun@gmail.com'),
          ),
          Divider(),
          ListTile(
            title: Text('Date of birth'),
            subtitle: Text('sasukekun@gmail.com'),
          ),
          Divider(),
          ListTile(
            title: Text('Email'),
            subtitle: Text('sasukekun@gmail.com'),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
