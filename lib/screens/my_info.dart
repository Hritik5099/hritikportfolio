import 'package:flutter/material.dart';

class my_info extends StatelessWidget {
  const my_info({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        //color: Color(0xFF242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 2,),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,
              //backgroundImage: AssetImage("assets/images/h.jpeg"),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "assets/images/h1.jpeg",
                  width: 100,
                  height: 100,
                  fit: BoxFit.fitHeight,),

              ),
            ),
            Spacer(),
            Text(
              "Hritik Ranjan Nanda",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              "App, IOS & Web \n Developer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}
