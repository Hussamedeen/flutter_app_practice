import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_practice/profile.dart';
import 'package:flutter_app_practice/testPage.dart';

import 'home.dart';

class CupertinoTapBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.indigo),
                  title: Text("Home")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, color: Colors.indigo),
                  title: Text("Search")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.indigo),
                  title: Text("Profile")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.texture, color: Colors.indigo),
                  title: Text("Test")
              ),
            ]
        ),

        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => Home(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => Home(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => Profile(),
              );
            case 3:
              return CupertinoTabView(
                builder: (BuildContext context) => AddPlaceScreen(),
              );
              break;
          }
        },
      ),
    );
  }
}