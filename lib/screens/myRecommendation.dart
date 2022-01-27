import 'package:flutter/material.dart';
import 'package:myportfolio/components/recomdationCard.dart';
import 'package:myportfolio/models/Recommendation.dart';

import '../constants.dart';
import '../responsive.dart';

class myRecommendation extends StatelessWidget {
  const myRecommendation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //const SizedBox(height: defaultPadding,),
        Text(
          "    Recommendations",
          style: Responsive.isDesktop(context)? Theme.of(context).textTheme.headline5!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white
          ):Theme.of(context).textTheme.headline6!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
        const SizedBox(height: defaultPadding*2,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:List.generate(demo_recommendations.length, (index) => Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: RecommendationCard(rec: demo_recommendations[index],),
            )),
          ),
        ),
        const SizedBox(height: defaultPadding,),
      ],
    );
  }
}