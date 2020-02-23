import 'package:flutter/material.dart';
import 'package:flutter_app_practice/photoCard.dart';
class PhotoCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(left: 20,right: 20,top:320,bottom: 90),
      children: <Widget>[
        PhotoCard("images/quds.jpg","القدس عاصمة دولة فلسطين - صورة حرم المسجد الأقصى"),
        PhotoCard("images/quds.jpg","القدس عاصمة دولة فلسطين - صورة حرم المسجد الأقصى"),
        PhotoCard("images/quds.jpg","القدس عاصمة دولة فلسطين - صورة حرم المسجد الأقصى"),
        PhotoCard("images/quds.jpg","القدس عاصمة دولة فلسطين - صورة حرم المسجد الأقصى"),
        PhotoCard("images/quds.jpg","القدس عاصمة دولة فلسطين - صورة حرم المسجد الأقصى"),
        PhotoCard("images/quds.jpg","القدس عاصمة دولة فلسطين - صورة حرم المسجد الأقصى"),
      ],
    );
  }
}
