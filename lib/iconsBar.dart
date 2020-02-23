import 'package:flutter/material.dart';
import 'package:flutter_app_practice/myIcons.dart';

class IconBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            MyIcons(
                true, Icons.person, 20.0, Color.fromRGBO(255, 255, 255, 0.6)),
            MyIcons(true, Icons.mail_outline, 20.0,
                Color.fromRGBO(255, 255, 255, 0.6)),
            MyIcons(false, Icons.add, 40.0, Color.fromRGBO(255, 255, 255, 1)),
            MyIcons(true, Icons.card_travel, 20.0,
                Color.fromRGBO(255, 255, 255, 0.6)),
            MyIcons(true, Icons.turned_in_not, 20.0,
                Color.fromRGBO(255, 255, 255, 1)),
          ],
        ));
  }
}
