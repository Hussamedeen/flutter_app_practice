import 'package:flutter/material.dart';
class Star extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
       top: 320,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Colors.yellow,
      ),
    );
  }
}

