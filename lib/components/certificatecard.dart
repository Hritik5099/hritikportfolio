import 'package:flutter/material.dart';
import 'package:myportfolio/models/Recommendation.dart';
import 'package:myportfolio/models/certificates.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';
import '../responsive.dart';

class CertificateCard extends StatelessWidget {
  const CertificateCard({
    Key? key,
    required this.certificates,
  }) : super(key: key);

  final Certificates certificates;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.isMobileLarge(context)?300: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(certificates.source!),
          const SizedBox(height: defaultPadding,),
          Text(
            certificates.name!,
            style:Theme.of(context).textTheme.headline6!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: defaultPadding,),
          SelectableText(
            certificates.link!,
            maxLines: 2,
            //overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          const SizedBox(height: defaultPadding,),
          TextButton(onPressed: (){
            launch(certificates.link!);
          }, child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Download",
                style: TextStyle(color: primaryColor),
              ),
              Icon(Icons.arrow_circle_down_sharp,color: primaryColor,)
            ],
          ))
        ],
      ),
    );
  }
}