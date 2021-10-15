import 'package:expense_tracker/presentations/components/icon_card.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: ListTile(
          tileColor: kLight80,
          horizontalTitleGap: kDefaultPadding,
          leading: const SquaredIconCard(
            color: kYellow20,
            height: 60,
            imagePath: 'assets/icons/shopping-bag.png',
            imageColor: kYellow100,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Shopping',
                style: body2,
              ),
              Text(
                '-VND 200.000',
                style: body2.copyWith(color: kGreen100),
              ),
            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Expanded(
                child: Text(
                  'Buying something very long like this',
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                width: 80,
                child: Text(
                  '3h30 pm',
                  maxLines: 1,
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
