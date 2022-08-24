import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrencyScreen extends StatelessWidget {
  const CurrencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.subtitle2?.copyWith(
          color: const Color(0xff0D0E0F),
        );

    return Scaffold(
      body: ListView.builder(
        itemBuilder: (_, index) => ListTile(
          title: Text(_currencies[index]['name']!, style: textStyle),
          minVerticalPadding: 17,
          trailing: SvgPicture.asset(
            'assets/icons/success.svg',
            color: Theme.of(context).primaryColor,
          ),
        ),
        itemCount: _currencies.length,
      ),
    );
  }
}

final _currencies = [
  {'name': 'United States (USD)'},
  {'name': 'Vietnam (VND)'},
  {'name': 'Indonesia (IDR)'},
  {'name': 'Japan (JPY)'},
  {'name': 'Russia (RUB)'},
  {'name': 'Korea (WON)'},
];
