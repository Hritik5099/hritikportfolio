import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/components/certificatecard.dart';
import 'package:myportfolio/models/certificates.dart';
import 'package:myportfolio/responsive.dart';

import '../constants.dart';

class myCertificates extends StatelessWidget {
  const myCertificates({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding,),
        Text(
          "   Certificates",
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
            children:List.generate(demo_certificates.length, (index) => Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: CertificateCard(certificates: demo_certificates[index],),
            )),
          ),
        ),
        const SizedBox(height: defaultPadding,),
      ],
    );
  }
}

