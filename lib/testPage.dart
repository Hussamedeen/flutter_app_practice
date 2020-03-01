import 'package:flutter/material.dart';
class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 100),
              child: RaisedButton(
                onPressed: (){print("Hello");},
                color: Colors.black38,
                child: Text(
                  "Test Button",
                ),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
