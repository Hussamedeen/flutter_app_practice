import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class TextInput extends StatelessWidget {
  String hintText;
  TextInputType inputType;
  TextEditingController controller;
  int maxLines=1;
  TextInput( { Key key, @required this.hintText, @required this.inputType,@required this.controller, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        right: 20,
        left: 20,
      ),
      child: TextField(
        textAlign: TextAlign.right,
        controller: controller,
        keyboardType: inputType,
        maxLines: maxLines,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,

        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.yellowAccent,
          hintText: hintText,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.all(Radius.circular(9)),
          )
        ),
      ),
    );
  }
}
