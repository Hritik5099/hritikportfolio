import 'package:flutter/material.dart';
import 'package:myportfolio/constants.dart';
import 'package:myportfolio/responsive.dart';
import 'package:myportfolio/screens/slide_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: Responsive.isMobileLarge(context)?AppBar(
      //   title: Text(
      //     "Portflio",
      //     style: Theme.of(context).textTheme.headline5!.copyWith(
      //         fontWeight: FontWeight.bold,
      //         color: Colors.black
      //     ),
      //   ),
      //   leading: Builder(
      //     builder: (context)=>IconButton(
      //       onPressed: (){
      //         Scaffold.of(context).openDrawer();
      //       },
      //       icon: Icon(Icons.menu),
      //     ),
      //   )
      // ):null,
      drawer: SlideMenu(),
      body: Container(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
            Expanded(
              flex: 2, // it will take 2/(2+7)=22% of the screen
                child: SlideMenu()
            ),
            Expanded(
              flex: 7, // it will take 7/(2+7)=78% of the screen
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      //color: darkColor.withOpacity(0.66),
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(darkColor.withOpacity(0.66), BlendMode.dstATop),
                        image: AssetImage("assets/images/p.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: [
                        ...children, // our footer
                      ],
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}

