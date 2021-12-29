import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/responsive.dart';

import '../constants.dart';

class banner extends StatelessWidget {
  const banner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 4,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/tec2.jpg",
            fit: BoxFit.cover,
          ),
          Container(color: darkColor.withOpacity(0.66),),
          AnimatedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "My investment on\n Learnings!",
            style:Responsive.isDesktop(context)? Theme.of(context).textTheme.headline3!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white
            ):Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          ),
          if (Responsive.isMobileLarge(context) && !Responsive.isMobile(context))
            const SizedBox(height: defaultPadding/2,),
          if (!Responsive.isMobile(context))
          DefaultTextStyle(
            style: Theme.of(context).textTheme.subtitle1!,
            child: Row(
              children: [
                if (!Responsive.isMobileLarge(context))
                Text("I bulit",style: TextStyle(color: primaryColor),),
                AnimatedTextKit(animatedTexts: [
                  TyperAnimatedText(
                    " responsive web and mobile app.",
                    speed: Duration(milliseconds: 60),
                  ),
                  TyperAnimatedText(
                    " python projects.",
                    speed: Duration(milliseconds: 60),
                  ),
                ]),
              ],
            ),
          ),
          if (!Responsive.isMobile(context))
          SizedBox(height: defaultPadding,),
        ],
      ),
    );
  }
}
