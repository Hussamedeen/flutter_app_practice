import 'package:flutter/material.dart';

class ButtonAddPlace extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  ButtonAddPlace(
      {Key key, @required this.buttonText, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0,

        ),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.lightBlue,
            ],
            begin: FractionalOffset(0.2,0.0),
            end: FractionalOffset (1.0,0.6),
            stops: [0.0,0.6],
            tileMode: TileMode.clamp,
          )
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
