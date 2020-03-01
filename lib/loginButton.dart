import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_practice/profile.dart';
import 'package:flutter_app_practice/signInWithGoogle.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

import 'Cupertino_tab_Bar.dart';
import 'firestore/fire_store_api.dart';
import 'home.dart';
import 'model/users.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GoogleSignInButton(
        onPressed: (){
      signInWithGoogle().whenComplete(() {
       Users user = Users(name,email,imageUrl,userid,DateTime.now().toString());
       CloudFirestoreAPI().updateUserData(user);
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return CupertinoTapBar();
                },
              ),
            );
          });
        },
        darkMode: true,
      ),
    );
//      OutlineButton(
//        splashColor: Colors.grey,
//        onPressed: () {
//          signInWithGoogle().whenComplete(() {
//            Navigator.of(context).push(
//              MaterialPageRoute(
//                builder: (context) {
//                  return Profile();
//                },
//              ),
//            );
//          });
//        },
////        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
////        highlightElevation: 0,
////        borderSide: BorderSide(color: Colors.grey),
//        child: Container(
//          height: 40,
//          width: 140,
//          margin: EdgeInsets.only(
//            top: 50,
//            bottom: 5,
//            right:250,
//          ),
//          decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(30),
//              gradient: LinearGradient(
//                colors: [Color(0xFF3bcc28), Color(0xFF14a027)],
//                begin: FractionalOffset(0.1, 2.0),
//                end: FractionalOffset(1.5, 0.8),
//                stops: [0.0, 0.6],
//                tileMode: TileMode.clamp,
//              ),
//              boxShadow: <BoxShadow> [
//                BoxShadow(
//                  color: Colors.black38,
//                  blurRadius: 10.0,
//                  offset: Offset(0.0, 5.0),
//                ),
//              ]
//          ),
//          child: Center(
//            child: Text(
//              "تسجيل الدخول",
//              style: TextStyle(
//                color: Colors.white,
//                fontFamily: "Lalezar",
//                fontSize: 20,
//                wordSpacing: 7,
//                //letterSpacing: 6,
//              ),
//            ),
//          ),
//        ),
//
////        Padding(
////          padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
////          child: Row(
////            mainAxisSize: MainAxisSize.min,
////            mainAxisAlignment: MainAxisAlignment.center,
////            children: <Widget>[
////              Image(image: AssetImage("assets/google_logo.png"), height: 35.0),
////              Padding(
////                padding: const EdgeInsets.only(left: 10,),
////                child: Text(
////                  'Sign in with Google',
////                  style: TextStyle(
////                    fontSize: 20,
////                    color: Colors.grey,
////                  ),
////                ),
////              )
////            ],
////          ),
////        ),
//      );
//      InkWell(
//      onTap: (){
//        Scaffold.of(context).showSnackBar(SnackBar(
//          content: Text("Log In "),
//        ));
//      },
//      child: Container(
//        height: 40,
//        width: 140,
//        margin: EdgeInsets.only(
//          top: 50,
//         bottom: 5,
//          right:250,
//        ),
//        decoration: BoxDecoration(
//            borderRadius: BorderRadius.circular(30),
//            gradient: LinearGradient(
//              colors: [Color(0xFF3bcc28), Color(0xFF14a027)],
//              begin: FractionalOffset(0.1, 2.0),
//              end: FractionalOffset(1.5, 0.8),
//              stops: [0.0, 0.6],
//              tileMode: TileMode.clamp,
//            ),
//            boxShadow: <BoxShadow> [
//              BoxShadow(
//                color: Colors.black38,
//                blurRadius: 10.0,
//                offset: Offset(0.0, 5.0),
//              ),
//            ]
//        ),
//        child: Center(
//          child: Text(
//            "تسجيل الدخول",
//            style: TextStyle(
//              color: Colors.white,
//              fontFamily: "Lalezar",
//              fontSize: 20,
//              wordSpacing: 7,
//              //letterSpacing: 6,
//            ),
//          ),
//        ),
//      ),
//    );
  }
}
