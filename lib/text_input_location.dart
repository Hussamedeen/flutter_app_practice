import 'package:flutter/material.dart';

class TextInputLocation extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final IconData iconData;

  TextInputLocation(
      {Key key,
      @required this.hintText,
      @required this.controller,
      @required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: 20.0,
        left: 20.0,
      ),
      child: TextField(textAlign: TextAlign.right,
      controller: controller,
        style: TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: Icon(iconData),
          fillColor: Colors.yellowAccent,
          filled: true,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide( color: Colors.black),
            borderRadius:BorderRadius.all(Radius.circular(12.0)),
          ),
        ),
      ),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 15.0,
            offset: Offset(0.0,7.0),
          )
        ]
      ),
    );
  }
}
