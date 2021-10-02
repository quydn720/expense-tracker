import '../../../size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'custom_card.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = [
      {
        'image': 'assets/images/shopping.svg',
        'title': 'Retro occupy',
        'content':
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
      },
      {
        'image': 'assets/images/investment.svg',
        'title': 'Synth polaroid',
        'content':
            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
      },
      {
        'image': 'assets/images/payments.svg',
        'title': 'Keytar sweenet',
        'content':
            'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',
      },
    ];
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(
              width: SizeConfig.screenWidth * 0.6,
              child: PageView.builder(
                onPageChanged: (value) => setState(() {
                  selectedIndex = value;
                }),
                itemCount: data.length,
                itemBuilder: (context, index) => SvgPicture.asset(
                  data[index]['image'].toString(),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      data.length,
                      (index) => buildIndicators(index),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Expanded(
                    child: CustomCard(
                      title: data[selectedIndex]['title'].toString(),
                      subtitle: data[selectedIndex]['content'].toString(),
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
      margin: const EdgeInsets.only(left: 4.0),
      height: 8.0,
      width: index == selectedIndex ? 20.0 : 10.0,
      decoration: BoxDecoration(
        color: index == selectedIndex ? kPrimaryColor : Colors.grey,
        borderRadius: BorderRadius.circular(kRadius),
      ),
      duration: Duration(milliseconds: kAnimationDuration),
    );
  }
}
