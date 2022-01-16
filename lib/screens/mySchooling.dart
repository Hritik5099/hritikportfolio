import 'package:flutter/material.dart';
import 'package:myportfolio/components/schoolingCard.dart';
import 'package:myportfolio/models/schooling.dart';
import '../constants.dart';
import '../responsive.dart';

class mySchooling extends StatelessWidget {
  const mySchooling({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding,),
        Text(
          "   My Schooling",
          style: Responsive.isDesktop(context)? Theme.of(context).textTheme.headline5!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white
          ):Theme.of(context).textTheme.headline6!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
        const SizedBox(height: defaultPadding,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:List.generate(demo_schooling.length, (index) => Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: schoolingcard(schooling: demo_schooling[index],),
            )),
          ),
        ),
        const SizedBox(height: defaultPadding,),
      ],
    );
  }
}

