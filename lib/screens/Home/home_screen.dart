import 'package:flutter/material.dart';
import 'package:myportfolio/components/banner.dart';
import 'package:myportfolio/screens/main/main_screen.dart';
import 'package:myportfolio/screens/mySocial.dart';

import '../myCertificates.dart';
import '../myProjects.dart';
import '../myRecommendation.dart';
import '../mySchooling.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      banner(),
      myProject(),
      myRecommendation(),
      myCertificates(),
      mySchooling(),
      mySocial(),
    ]);
  }
}

