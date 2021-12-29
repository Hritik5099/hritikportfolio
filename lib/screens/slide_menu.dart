import 'package:flutter/material.dart';
import 'package:myportfolio/components/slidemenuCard.dart';
import 'package:myportfolio/constants.dart';
class SlideMenu extends StatelessWidget {
  const SlideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          //color: darkColor.withOpacity(0.66),
          image: DecorationImage(
            colorFilter: ColorFilter.mode(darkColor.withOpacity(0.70), BlendMode.dstOut),
            image: AssetImage("assets/images/tec.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: slidemenuCard(),
      ),
    );
  }
}












