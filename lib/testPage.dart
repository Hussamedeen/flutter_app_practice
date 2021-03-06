import 'package:flutter/material.dart';
import 'package:flutter_app_practice/text_field_class.dart';
import 'package:flutter_app_practice/text_input_location.dart';

import 'button_add_place.dart';

class AddPlaceScreen extends StatefulWidget {
  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    final _controllerTitlePlace = TextEditingController();
    final _controllerDescriptionPlace =TextEditingController();
    return Scaffold(
      body: Stack(
        children: <Widget>[
         // GradientBack(height: 300.0,),
          Row( //App Bar
            children: <Widget>[
//              Container(
//                padding: EdgeInsets.only(top: 25.0, left: 5.0),
//                child: SizedBox(
//                  height: 45.0,
//                  width: 45.0,
//                  child: IconButton(
//                      icon: Icon(Icons.keyboard_arrow_left, color: Colors.white, size: 45,),
//                      onPressed: () {
//                        Navigator.pop(context);
//                      }
//                  ),
//                ),
//              ),

//              Flexible(
//                  child: Container(
//                    padding: EdgeInsets.only(top: 45.0, left: 20.0, right: 10.0),
//                   // child: TitleHeader(title: "Add a new Place"),
//                  ))


            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 120.0, bottom:20.0),
            child: ListView(

              children: <Widget>[
//                Container(
//                  alignment: Alignment.center,
//                  child: CardImageWithFabIcon(
//                    pathImage: "assets/mountain.jpeg",//widget.image.path,
//                    iconData: Icons.camera_alt,
//                    width: 350.0,
//                    height: 250.0,left: 0,
//                  ),
//                ), //Foto
                Container(//TextField Title
                  margin: EdgeInsets.only(top:20.0, bottom: 20.0),
                  child: TextInput(
                    hintText: "عنوان المكان",
                    inputType: TextInputType.text,
                    maxLines: 1,
                   controller: _controllerTitlePlace,
                  ),
                ),
                TextInput(//Description
                  hintText: "الوصف",
                  inputType: TextInputType.multiline,
                  maxLines: 4,
                 controller: _controllerDescriptionPlace,
                ),

                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: TextInputLocation(
                      hintText: "أضف الموقع",
                      iconData: Icons.location_on),
                ),
                Container(
                  width: 70.0,
                  child: ButtonAddPlace(
                    buttonText: "أضف المكان",
                    onPressed: () {

                      _controllerDescriptionPlace.text;

                      //2. Cloud Firestore
                      //Place - title, description, url, userOwner, likes

                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
