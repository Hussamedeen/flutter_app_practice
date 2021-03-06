import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_practice/model/users.dart';

class CloudFirestoreAPI {

  final String USERS = "users";

  final Firestore _db = Firestore.instance;

  void updateUserData(Users user) async{
    DocumentReference ref = _db.collection(USERS).document(user.userid);
    return ref.setData({
      'uid': user.userid,
      'name': user.name,
      'email': user.email,
      'photourl': user.imageUrl,
      'lastlogin': user.lastlogin,

    }, merge: true);

  }
  Future<void> deleteUser(String uid){
    return _db.collection(USERS).document(uid).delete();

  }
  void getData() {
    _db
        .collection(USERS)
        .getDocuments().then((QuerySnapshot snapshot) {
      snapshot.documents.forEach((f) => print('${f.data}}'));

    });
  }
}

