import "package:flutter/material.dart";
import 'loginButton.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width;
    var height= MediaQuery.of(context).size.height;
    var colorr=0xFF4169D2;
    var colorr2=0xFF514DBC;
    return Scaffold(
      body:  Stack(
        children: <Widget>[
      //    BackGroundGradient(MediaQuery.of(context).size.height, "Welcome",colorr, colorr2),
          Column(
            children: <Widget>[
              Container(
                width: width,
                margin: EdgeInsets.only(
                    top: 260,
                    right: 20,
                    left: 20
                ),
                child: Text(
                  "Hi welcome to MyTrips, You can login using Google",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w600
                  ),

                ) ,
              ),
              Container(
                margin: EdgeInsets.only(
                    top:20
                ),
                   child: LoginButton(),

//                child: SignInButton(
//                  Buttons.Google,
//                  onPressed: (){
//
//                    signInWithGoogle().whenComplete( () {
//                      Navigator.of(context).push(
//                          MaterialPageRoute(
//                              builder: (context) {
//                                return Home();
//                              }
//                          ));
//                    });
//
//                    CloudFirestoreAPI().updateUserData(new Users(uid, name,photourl, email));
//
//                  },
//                  text: "     Sign in With Google",
//
//                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
