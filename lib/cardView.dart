import 'package:flutter/material.dart';
import 'package:flutter_app_practice/favButton.dart';
class CardView extends StatelessWidget {
  String imgBath;
  CardView(this.imgBath);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0.8,0.98),
      children: <Widget>[
        Container(
          height: 350,
          width: 250,
          margin: EdgeInsets.only(
            top: 100,
            left: 20,
            right: 20,
            bottom: 20,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              image: AssetImage(imgBath),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(30)),
            boxShadow: <BoxShadow> [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0,7.0),
              ),
            ],
          ),
        ),
        FavButton(),
      ],

    );
  }
}