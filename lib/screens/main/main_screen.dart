import 'package:flutter/material.dart';
import 'package:myportfolio/components/allFunctions.dart';
import 'package:myportfolio/constants.dart';
import 'package:myportfolio/responsive.dart';
import 'package:myportfolio/screens/slide_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: SlideMenu(),
      body: Container(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: mainScreenWidgets(children: children),
      ),
    );
  }
}

