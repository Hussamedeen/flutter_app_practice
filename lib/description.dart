import 'package:flutter/material.dart';
import 'package:flutter_app_practice/starReview.dart';

import 'button.dart';

class Description extends StatelessWidget {
  String title;
  String des;
  Description(this.title,this.des);
  @override
  Widget build(BuildContext context) {
    return Column(
      //textDirection: TextDirection.rtl,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          textDirection: TextDirection.rtl,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                top: 340,
                left: 20,
                right: 20,
              ),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 30,
                  //fontWeight: FontWeight.w900,
                  fontFamily: "Lalezar",
                ),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.left,
              ),
            ),
            Star(),
            Star(),
            Star(),
            Star(),
            Star(),
          ],
        ),
//        Row(
//          textDirection: TextDirection.rtl,
//          children: <Widget>[
//            Star(),
//            Star(),
//            Star(),
//            Star(),
//            Star(),
//          ],
//        ),
      Container(
        margin: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Text(
          des,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 17,
            fontFamily: "Tajawal",
            wordSpacing: 1.5,
            height: 1.5,
          ),
        ),
      ),
        Container(
          margin: EdgeInsets.only(
            top: 10,
          ),
            child:
            ButtonBlue("إقـرأ المـزيـد")
        ),
      ],

    );
  }
}
