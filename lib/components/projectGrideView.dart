import 'package:flutter/material.dart';
import 'package:myportfolio/models/Project.dart';

import '../constants.dart';
import 'ProjectCard.dart';

class projectgrideView extends StatelessWidget {
  const projectgrideView({
    Key? key,
    this.crossAxisCount=3,
    this.childAspectRatio=1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context,index)=> ProjectCard( project: demo_projects[index],),
    );
  }
}