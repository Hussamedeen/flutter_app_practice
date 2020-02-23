import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String image;
  String titleReview;
  String titleNo;
  String desReview;
  Review(this.image, this.titleReview, this.titleNo, this.desReview);
  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: <Widget>[
        Container(
          height: 80,
          width: 80,
          margin: EdgeInsets.only(
            right: 10,
            left: 10,
            top: 20,
          ),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(image),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          textDirection: TextDirection.rtl,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20.0, left: 15.0),
              child: Text(
                titleReview,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Tajawal",
                ),
              ),
            ),
            Container(
              //margin: EdgeInsets.only(top: 0.0, left: 55.0),
              child: Text(
                titleNo,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: "Tajawal",
                ),
              ),
            ),
            Container(
              // margin: EdgeInsets.only(top: 0.0, right: 10.0),
              child: Text(
                desReview,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: "Tajawal",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
