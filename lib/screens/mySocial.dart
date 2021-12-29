import 'package:flutter/material.dart';
import 'package:myportfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class mySocial extends StatelessWidget {
  const mySocial({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //const SizedBox(height: defaultPadding,),
        Text(
          "   Social Media",
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
              children:[
                socialButon(url: "https://www.linkedin.com/in/hritik-ranjan-nanda-584b46195",imageName: "linkedin",),
                const SizedBox(width: defaultPadding,),
                socialButon(url: "hritiknanda5099@gmail.com",imageName: "gmail",),
                const SizedBox(width: defaultPadding,),
                socialButon(url: "hhttps://twitter.com/HritikRanjanNa1?t=gfg8mcmR40c7HG62fXb7cQ&s=09",imageName: "twitter",),
                const SizedBox(width: defaultPadding,),
                socialButon(url: "https://www.instagram.com/invites/contact/?i=ri4sv2cdwxxj&utm_content=5lb6t0z",imageName: "instagram",),
                ]),
            ),
        const SizedBox(height: defaultPadding,),
      ],
    );
  }
}

class socialButon extends StatelessWidget {
  const socialButon({
    Key? key, required this.url, required this.imageName,
  }) : super(key: key);

  final String url;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        launch(url);
      },
      child: Container(
      width: 30,
      child: Image.asset("assets/icons/$imageName.png"),
      ),
    );
  }
}

