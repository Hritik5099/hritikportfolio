import 'package:flutter/material.dart';

import '../constants.dart';

class downPage extends StatelessWidget {
  const downPage({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          //color: darkColor.withOpacity(0.66),
          image: DecorationImage(
            colorFilter: ColorFilter.mode(darkColor.withOpacity(0.66), BlendMode.dstATop),
            image: const AssetImage("assets/images/p.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            ...children, // our footer
          ],
        ),
      ),
    );
  }
}