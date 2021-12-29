import 'package:flutter/material.dart';
import 'package:myportfolio/components/AnimatedCircularIndicator.dart';

import '../constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AnimatedCircularProgressIndicator(
            per: 0.8,
            label: "Flutter",
          ),
        ),
        SizedBox(width: defaultPadding,),
        Expanded(
          child: AnimatedCircularProgressIndicator(
            per: 0.8,
            label: "FireBase",
          ),
        ),
        SizedBox(width: defaultPadding,),
        Expanded(
          child: AnimatedCircularProgressIndicator(
            per: 0.7,
            label: "Cloud FireStore",
          ),
        ),
      ],
    );
  }
}