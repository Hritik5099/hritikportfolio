import 'package:flutter/material.dart';
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
        Expanded(child: SingleChildScrollView(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              BasicInfo("Residence:", "Malout,Punjab"),
              BasicInfo("Age:", "21"),
              BasicInfo("Mobile Number:", "9914025983"),
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
                  launch("https://drive.google.com/file/d/1xmQhvkYLUMESUFfs12s73zZjLABMTcL-/view?usp=sharing");
                },
                child: Row(
                  children: [
                    Text(
                      "Download CV",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: defaultPadding/2,),
                    Icon(Icons.arrow_circle_down_sharp,color: Colors.grey,)
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