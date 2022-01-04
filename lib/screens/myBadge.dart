import 'package:flutter/material.dart';
import 'package:myportfolio/components/googleBatchCard.dart';
import 'package:myportfolio/models/Recommendation.dart';
import 'package:myportfolio/models/badges.dart';

import '../constants.dart';
import '../responsive.dart';

class myBadges extends StatelessWidget {
  const myBadges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding,),
        Text(
          "   Google Developer Badges ",
          style: Responsive.isDesktop(context)? Theme.of(context).textTheme.headline5!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white
          ):Theme.of(context).textTheme.headline6!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
        const SizedBox(height: defaultPadding,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:List.generate(demo_badges.length, (index) => Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: googlebatchCard(badges: demo_badges[index],),
            )),
          ),
        ),
        const SizedBox(height: defaultPadding,),
      ],
    );
  }
}