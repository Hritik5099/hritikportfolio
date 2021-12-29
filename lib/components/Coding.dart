import 'package:flutter/material.dart';

import '../constants.dart';
import 'AnimatedLinearIndicator.dart';

class Codding extends StatelessWidget {
  const Codding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(thickness: 2,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgress(per: 0.8,label: "Dart",),
        AnimatedLinearProgress(per: 0.75,label: "Python",),
        AnimatedLinearProgress(per: 0.7,label: "C++",),
        AnimatedLinearProgress(per: 0.65,label: "SQL",),
        AnimatedLinearProgress(per: 0.6,label: "C",),
      ],
    );
  }
}