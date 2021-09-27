import 'package:expense_tracker/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}

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
      'assets/images/shopping.svg',
      'assets/images/investment.svg',
      'assets/images/payments.svg',
    ];
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: SizedBox(
              width: 280,
              child: PageView.builder(
                onPageChanged: (value) => setState(() {
                  selectedIndex = value;
                }),
                itemCount: 3,
                itemBuilder: (context, index) => SvgPicture.asset(data[index]),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              data.length,
              (index) => Container(
                margin: EdgeInsets.only(left: 4.0),
                height: 10,
                width: index == selectedIndex ? 20 : 10,
                decoration: BoxDecoration(
                  color: index == selectedIndex ? kPrimaryColor : Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 30,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20.0),
                      Text(
                        'Retro occupy',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
                        textAlign: TextAlign.center,
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        height: 40.0,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('I\'m interested'),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
