import 'package:flutter/material.dart';
class ButtonBlue extends StatelessWidget {
  String name;
  ButtonBlue(this.name);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text("جاري التحميل"),
        ));
      },
      child: Container(
        height: 50,
        width: 180,
        margin: EdgeInsets.only(
          top: 20,
          bottom: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            colors: [Color(0xFF4268D3), Color(0xFF584CD1)],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp,
          ),
          boxShadow: <BoxShadow> [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 15.0,
              offset: Offset(0.0, 7.0),
            ),
          ]
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Lalezar",
              fontSize: 25,
              wordSpacing: 7,
              //letterSpacing: 6,
            ),
          ),
        ),
      ),
    );
  }
}
