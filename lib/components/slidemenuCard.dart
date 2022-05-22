import 'package:flutter/material.dart';
import 'package:myportfolio/responsive.dart';
import 'package:myportfolio/screens/my_info.dart';
import 'package:myportfolio/screens/skills.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';
import 'Coding.dart';
import 'basic_info.dart';

class slidemenuCard extends StatelessWidget {
  const slidemenuCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        my_info(),
        Divider(thickness: 2,),
        Expanded(child: SingleChildScrollView(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              BasicInfo("Residence:", "Malout,Punjab"),
              BasicInfo("Age:", "21"),
              Responsive.isDesktop(context)?BasicInfo("Mobile Number:", "9914025983"):BasicInfoButton("Mobile Number:", "9914025983"),
              BasicInfoButton("E-mail:", "hritiknanda5099@gmail.com"),
              Divider(thickness: 2,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "Skills",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                ],
              ),
              Skills(),
              SizedBox(height: defaultPadding,),
              Codding(),
              Divider(thickness: 2,),
              SizedBox(height: defaultPadding / 2),
              TextButton(
                onPressed: (){
                  launch("https://drive.google.com/file/d/1mez43l0erX8Ii0CAixoirZg8Fu1hR3Dm/view?usp=sharing");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Download CV",
                      style: TextStyle(
                        color: primaryColor,
                      ),
                    ),
                    SizedBox(width: defaultPadding/2,),
                    Icon(Icons.arrow_circle_down_sharp,color: primaryColor,)
                  ],
                ),
              ),

            ],
          ),
        ))
      ],
    );
  }
}