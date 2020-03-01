import 'package:flutter/material.dart';
import 'package:flutter_app_practice/favButton.dart';
class PhotoCard extends StatelessWidget {
  String photoCard;
  String photoName;
  PhotoCard(this.photoCard,this.photoName);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0.0, 0.5),
      children: <Widget>[
        Container(
          height: 250,
          margin: EdgeInsets.only(bottom: 90,),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(photoCard),
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            boxShadow: <BoxShadow> [
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 5.0)
              ),
            ]
          ),
        ),
        Container(
          height: 150,
          width: 270,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
              boxShadow: <BoxShadow> [
                BoxShadow(
                    color: Colors.black38,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 5.0)
                ),
              ]
          ),
          child: Stack(
            alignment: Alignment(0.50, 0.9),
            children: <Widget>[
              Container(
                alignment: Alignment(-0.9, 1.25),
                child: FavButton("card"),
              ),
              Column(
                textDirection: TextDirection.rtl,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10,right: 10,left: 10,),
                    child: Text(
                      photoName,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: "Tajawal",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10,right: 10,left: 10,),
                    child: Text(
                      "القدس عاصمة دولة فلسطين - صورة حرم المسجد الأقصى",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black38,
                        fontFamily: "Tajawal",
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10,right: 10,left: 10,),
                    child: Text(
                      "الإحداثيات 200،200،200،230",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue,
                        fontFamily: "Tajawal",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),


      ],
    );
  }
}
