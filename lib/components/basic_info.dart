import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

class BasicInfo extends StatelessWidget {
  const BasicInfo(this.title,this.text) ;
  final String? title,text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SelectableText(
            title!,
            style: TextStyle(color: Colors.white),
          ),
          SelectableText(
            text!,
          )
        ],
      ),
    );
  }
}
class BasicInfoButton extends StatelessWidget {
  const BasicInfoButton(this.title,this.text) ;
  final String? title,text;

  _sendingMails() async{
    const url="mailto:hritiknanda5099@gmail.com";
    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw "Could not lauch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SelectableText(
            title!,
            style: TextStyle(color: Colors.white),
          ),
          // InkWell(
          //   onTap: (){
          //     launch(text!);
          //   },
          //   child: SelectableText(
          //     text!,
          //   ),
          // )
          TextButton(
              onPressed: (){
            text=="hritiknanda5099@gmail.com"
                //? launch("https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcRzCMnNFqRdBmSVcZnnNbcbFxJwtVkbFqMBVvnVwlQRxBkJdxqQRSMLgQXGjwZlDrKrKgsWT")
                ?_sendingMails()
                :launch("tel:$text!");
          }, child: Text(
            text!,
            style: TextStyle(fontSize: 10,),
          ))
        ],
      ),
    );
  }
}