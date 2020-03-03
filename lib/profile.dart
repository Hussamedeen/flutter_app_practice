import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_practice/colorOfHead.dart';
import 'package:flutter_app_practice/home.dart';
import 'package:flutter_app_practice/photoCardList.dart';
import 'package:flutter_app_practice/signInWithGoogle.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'colorOfProfile.dart';
import 'iconsBar.dart';
import 'main.dart';

class Profile extends StatelessWidget {
//  String imgProfile;
//  Profile(this.imgProfile);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: PhotoCardList(),
        ),
        ColorOfProfile(),
        Column(
          textDirection: TextDirection.rtl,
          children: <Widget>[
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 35,
                right: 30,
              ),
              child: Text(
                "الملف الشخصي",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontFamily: "Lalezar",
                ),
              ),
            ),
            Row(
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Container(
                  width: 100.0,
                  height: 100.0,
                  margin: EdgeInsets.only(
                    top: 10,
                    right: 20,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        right: 30,
                      ),
                      child: Text(
                        name,
                        style: TextStyle(
                          fontFamily: "Tajawal",
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 5,
                        left: 50,
                      ),
                      child: Text(
                        email,
                        style: TextStyle(
                          fontFamily: "Tajawal",
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    RaisedButton(
                        onPressed: () {
                                                  signOutGoogle();
                       Navigator.of(context).pushAndRemoveUntil(
                         MaterialPageRoute(builder: (context) {
                      return MyApp();
                        }), ModalRoute.withName('/'));
                      },
                      color: Colors.green,
                      child: Text(
                        'تسجيل خروج',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),

                    ),
                  ],
                ),
              ],
            ),
            IconBar(),
          ],
        ),
      ],
    );
  }
}
