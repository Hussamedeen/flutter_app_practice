import 'package:flutter/material.dart';
import 'package:flutter_app_practice/colorOfHead.dart';
import 'package:flutter_app_practice/description.dart';
import 'package:flutter_app_practice/listCardView.dart';
import 'package:flutter_app_practice/reviews.dart';

import 'loginButton.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          ListView(
            children: <Widget>[
              Description("المسجد الأقصى",
                  "المسجد الأقصى أحد أكبر مساجد العالم وأحد المساجد الثلاثة التي يشد المسلمون الرحال إليها، وهو أيضًا أول القبلتين في الإسلام. يقع داخل البلدة القديمة بالقدس في فلسطين. وهو كامل المنطقة المحاطة بالسور واسم لكل ما هو داخل سور المسجد الأقصى الواقع في أقصى الزاوية الجنوبية الشرقية من البلدة القديمة المسورة"),
              Review("images/Ahmed.jpg",
                  "المهندس / أحمد حمدان",
                  "مراجعة (1) صور (5) ",
                  "القدس عاصمة دولة فلسطين"
              ),
              Review("images/hussamedeen.jpg",
                  "المستشار / حسام الدين محيسن",
                  "مراجعة (1) صور (3) ",
                  "القدس عربية إسلامية وستعود إن شاء الله"
              ),
              Review("images/ahmedhaya.jpg",
                  "المدرب / أحمد أبو حية",
                  "مراجعة (1) صور (5) ",
                  "إشتياقي لكِ يا قدس يزداد يوم بعد يوم"
              ),
              Review("images/hussam.jpg",
                  "المستشار / حسام الدين محيسن",
                  "مراجعة (1) صور (6) ",
                  "القدس عاصمة دولة فلسطين وستعود قريبا إن شاء الله"
              ),
            ],
          ),
          Stack(
            textDirection: TextDirection.rtl,
            children: <Widget>[
            ColorOfHead(250),
            Row(
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(
                      top: 50,
                      right: 30,
                    ),
                    child:
                    Text(
                      "مدن فلسطين",
                      // textAlign: TextAlign.justify,
                      //textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                         fontFamily: "Lalezar",
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
            ListCardView(),
              Container(
                  child:
                  LoginButton()
              ),


          ],
          ),

        ],
      ),
    );
  }
}
