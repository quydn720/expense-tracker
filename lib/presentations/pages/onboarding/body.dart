import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../components/default_button.dart';
import '../login/login_page.dart';
import '../signup/signup_page.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);
  @override
  BodyState createState() => BodyState();
}

class BodyState extends State<Body> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    const data = kOnboardingData;

    return Padding(
      padding: const EdgeInsets.all(kMediumPadding),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged: (value) => setState(() {
                selectedIndex = value;
              }),
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      width: SizeConfig.screenWidth * 0.7,
                      child: Image.asset(
                        data[index]['image'].toString(),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            data[selectedIndex]['title'].toString(),
                            style: title1,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: kDefaultPadding),
                          Text(
                            data[selectedIndex]['content'].toString(),
                            style:
                                body1.copyWith(color: const Color(0xff91919F)),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            height: 16,
            margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                data.length,
                buildIndicators,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DefaultButton(
                    title: 'Sign in',
                    onPressed: () => Navigator.of(context).pushReplacement(
                      SignInPage.route(),
                    ),
                  ),
                  const SizedBox(height: kMediumPadding),
                  DefaultButton(
                    isSecondary: true,
                    title: 'Sign up',
                    onPressed: () => Navigator.of(context).pushReplacement(
                      SignUpPage.route(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildIndicators(int index) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(left: kMediumPadding),
      height: index == selectedIndex ? 16.0 : 8.0,
      width: index == selectedIndex ? 16.0 : 8.0,
      decoration: BoxDecoration(
        color: index == selectedIndex ? kViolet100 : kViolet20,
        borderRadius: BorderRadius.circular(kDefaultRadius),
      ),
      duration: const Duration(milliseconds: kAnimationDuration),
    );
  }
}
