import 'package:flutter/material.dart';
import 'package:myportfolio/models/badges.dart';
import 'package:myportfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class googlebatchCard extends StatelessWidget {
  const googlebatchCard({
    Key? key,
    required this.badges,
  }) : super(key: key);

  final Badges badges;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        launch(badges.link!);
      },
      child: Container(
        width: Responsive.isMobileLarge(context)?300: 400,
        padding: EdgeInsets.all(defaultPadding),
        // color: secondaryColor,
        child: Image.asset(badges.image!),

        ),
      );
  }
}