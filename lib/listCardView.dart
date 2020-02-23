import 'package:flutter/material.dart';
import 'package:flutter_app_practice/cardView.dart';
class ListCardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: EdgeInsets.only(top: 10,bottom: 20),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[

          CardView("images/aka.jpg"),
          CardView("images/gaza.jpg"),
          CardView("images/haifa.jpg"),
          CardView("images/ramallah.jpg"),
          CardView("images/tabaria.jpg"),
          CardView("images/yafa.jpg"),
          CardView("images/quds.jpg"),
        ],
      ),
    );
  }
}
