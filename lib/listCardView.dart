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

          CardView("images/aka.jpg","21"),
          CardView("images/gaza.jpg","22"),
          CardView("images/haifa.jpg","23"),
          CardView("images/ramallah.jpg","24"),
          CardView("images/tabaria.jpg","25"),
          CardView("images/yafa.jpg","26"),
          CardView("images/quds.jpg","27"),
        ],
      ),
    );
  }
}
