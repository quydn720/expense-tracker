import '../../constants.dart';
import '../../size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: SizeConfig.screenHeight * 0.125,
        title: Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text('Profile', style: TextStyle(color: Colors.black)),
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: kDefaultPadding),
            child: IconButton(
              icon: FaIcon(FontAwesomeIcons.cog, color: Colors.black),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Body(),
    );
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
