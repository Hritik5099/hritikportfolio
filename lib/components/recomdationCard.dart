import 'package:flutter/material.dart';
import 'package:myportfolio/models/Recommendation.dart';

import '../constants.dart';
import '../responsive.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    Key? key,
    required this.rec,
  }) : super(key: key);

  final Recommendation rec;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(rec.source!),
          const SizedBox(height: defaultPadding,),
          Text(
            rec.name!,
            style:Theme.of(context).textTheme.headline6!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
          ),
          ),
          const SizedBox(height: defaultPadding,),
          Text(
            rec.text!,
            maxLines: 6,
            //overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          const SizedBox(height: defaultPadding,),
          // TextButton(onPressed: (){}, child: Text(
          //   "Read More>>",
          //   style: TextStyle(color: primaryColor),
          // ))
        ],
      ),
    );
  }
}