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
    return AspectRatio(
      aspectRatio: Responsive.isMobileLarge(context)?2:Responsive.isTablet(context)?3:4,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/books.jpg",
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
    return Column(
      children: [
        if (!Responsive.isDesktop(context))
          PreferredSize(
            preferredSize: Size.zero,
            child: AppBar(
                backgroundColor: Colors.transparent,
                leading: Builder(
                  builder: (context)=>IconButton(
                    onPressed: (){
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icon(Icons.menu,color: Colors.white,),
                  ),
                )
            ),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: defaultPadding,),
              Text(
                intro_heading,
                style:Responsive.isDesktop(context)? Theme.of(context).textTheme.headline3!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ):
                Responsive.isMobile(context)?
                Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white)
                    :Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
              Text(
                intro,
                style: Responsive.isDesktop(context)? Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ):
                Responsive.isMobile(context)?
                Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white)
                    :Theme.of(context).textTheme.headline5!.copyWith(
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
                    if (!Responsive.isMobile(context))
                    Text("I bulid",style: TextStyle(color: primaryColor),),
                    AnimatedTextKit(animatedTexts: [
                      TyperAnimatedText(
                        " responsive web and mobile app.",
                        speed: Duration(milliseconds: 60),
                      ),
                      TyperAnimatedText(
                        " python projects.",
                        speed: Duration(milliseconds: 60),
                      ),
                      TyperAnimatedText(
                        " flutter projects.",
                        speed: Duration(milliseconds: 60),
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
