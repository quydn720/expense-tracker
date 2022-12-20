import 'package:expense_tracker/constants.dart';
import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:expense_tracker/user_preferences.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});
  @override
  BodyState createState() => BodyState();
}

class BodyState extends State<Body> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    const data = kOnboardingData;

    final images = [
      Assets.images.money,
      Assets.images.bill,
      Assets.images.planning,
    ];

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
                    SizedBox(child: images[index].image()),
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
                  ElevatedButton(
                    onPressed: completedOnboarding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Sign In'),
                      ],
                    ),
                  ),
                  const SizedBox(height: kMediumPadding),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(elevation: 0),
                    onPressed: completedOnboarding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Sign up'),
                      ],
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

  Future<void> completedOnboarding() async {
    // context.read<AppBloc>().add(const OnboardingCompleted());
    await getIt<UserPreferences>().completeOnboarding();
  }

  AnimatedContainer buildIndicators(int index) {
    return AnimatedContainer(
      margin: index != 0
          ? const EdgeInsets.only(left: kMediumPadding)
          : EdgeInsets.zero,
      height: index == selectedIndex ? 16.0 : 8.0,
      width: index == selectedIndex ? 16.0 : 8.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kDefaultRadius),
      ),
      duration: const Duration(milliseconds: kAnimationDuration),
    );
  }
}
