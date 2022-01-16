import 'package:flutter/material.dart';
import 'package:myportfolio/components/projectGrideView.dart';

import '../constants.dart';
import '../responsive.dart';

class myProject extends StatelessWidget {
  const myProject({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding,),
        Text(
          "    My Project",
          style: Responsive.isDesktop(context)? Theme.of(context).textTheme.headline5!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white
          ):Theme.of(context).textTheme.headline6!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
        const Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Responsive(
            mobile: projectgrideView(crossAxisCount: 1,childAspectRatio: 2),
            desktop: projectgrideView(),
            mobileLarge: projectgrideView(crossAxisCount: 2,childAspectRatio: 1,),
            tablet: projectgrideView(childAspectRatio: 1.1,),
          ),
        )
      ],
    );
  }
}
