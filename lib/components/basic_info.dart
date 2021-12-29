import 'package:flutter/material.dart';

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
