import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_practice/favButton.dart';
class CardView extends StatelessWidget {
  String imgBath;
  String tag;
  CardView(this.imgBath,this.tag);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0.8,0.98),
      children: <Widget>[
        Container(
          height: 350,
          width: 250,
          margin: EdgeInsets.only(
            top: 100,
            left: 20,
            right: 20,
            bottom: 20,

          ),
          child: new StreamBuilder(
            stream: Firestore.instance.collection("image").snapshots(),
            builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot){
              if(!snapshot.hasData) return Text("lodding");
              return ListView(
                children:snapshot.data.documents.map((document){
                  return Container (
                    decoration: BoxDecoration(
                      image:  DecorationImage (
                        image: NetworkImage (document['imageSlide'].toString())
                      )
                    ),
                  );
                }
                ).toList(),
              );
            },
          ),
//          decoration: BoxDecoration(
//            shape: BoxShape.rectangle,
//            image: DecorationImage(
//              image: AssetImage(imgBath),
//              fit: BoxFit.cover,
//            ),
//
//            borderRadius: BorderRadius.all(Radius.circular(30)),
//            boxShadow: <BoxShadow> [
//              BoxShadow(
//                color: Colors.black38,
//                blurRadius: 15.0,
//                offset: Offset(0.0,7.0),
//              ),
//            ],
//          ),
        ),
//        Container(
//          width: 300,
//          margin: EdgeInsets.only(top:600,),
//          child: StreamBuilder(
//            stream: Firestore.instance.collection("image").snapshots(),
//            builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot){
//              if(!snapshot.hasData) return Text("lodding");
//              return ListView(
//                children:snapshot.data.documents.map((document){
//                  return ListTile(
//                    leading: CircleAvatar(
//                      backgroundImage: NetworkImage(
//                        document['imageSlide'].toString(),
//                      ),
//                    ),
//                  );
//                }
//                ).toList(),
//              );
//            },
//          ),
//
//        ),

        FavButton(tag),
      ],

    );
  }
}
