import 'package:flutter/material.dart';
import 'package:myportfolio/models/Project.dart';
import 'package:myportfolio/responsive.dart';

import '../constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key, required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(height: defaultPadding,),
          SelectableText(
            project.description!,
            maxLines: Responsive.isMobile(context)?2:Responsive.isMobileLarge(context) || Responsive.isTablet(context)?4:6,
            style: TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}