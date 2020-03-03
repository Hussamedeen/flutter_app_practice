import 'package:flutter/material.dart';
import 'package:flutter_app_practice/signInWithGoogle.dart';
import 'firestore/fire_store_api.dart';
import 'home.dart';
import 'main.dart';
import 'model/users.dart';
import 'package:flutter_app_practice/model/users.dart';

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
                onPressed: () {
                  print("Hello");
                },
                color: Colors.black38,
                child: Text(
                  "Test Button",
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 100),
              child: RaisedButton(
                onPressed: () {
                  signInWithGoogle().whenComplete(() {
                    Users user =
                        new Users(name, email, imageUrl, userid,DateTime.now().toString());
                   CloudFirestoreAPI().updateUserData(user);
//                    CloudFirestoreAPI().getData();
                 //    CloudFirestoreAPI().deleteUser(userid);
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return MyApp();
                    }));
                  });
                },
                color: Colors.blue,
                child: Text(
                  "حذف العضو",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
