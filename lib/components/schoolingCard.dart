import 'package:flutter/material.dart';
import 'package:myportfolio/models/Recommendation.dart';
import 'package:myportfolio/models/schooling.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class schoolingcard extends StatelessWidget {
  const schoolingcard({
    Key? key,
    required this.schooling,
  }) : super(key: key);

  final Schooling schooling;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(schooling.grade!),
          const SizedBox(height: defaultPadding,),
          Text(
            schooling.name!,
            style:Theme.of(context).textTheme.headline6!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: defaultPadding,),
          Text(
            schooling.text!,
            //overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          const SizedBox(height: defaultPadding,),
          TextButton(onPressed: (){
            launch(schooling.link!);
          }, child: Text(
              schooling.link!,
            style: TextStyle(
              shadows: [
                Shadow(
                  color: Colors.white,
                  offset: Offset(0,-5),
                )
              ],
                color: Colors.transparent,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
              decorationThickness: 4,
            ),
          )),
          const SizedBox(height: defaultPadding,),
          TextButton(onPressed: (){
            launch(schooling.marksheet!);
          }, child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Download marksheet",
                style: TextStyle(color: primaryColor),
              ),
              Icon(Icons.arrow_circle_down_sharp,color: primaryColor,)
            ],
          ))
        ],
      ),
    );
  }
}