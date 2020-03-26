import 'package:animewallpaper/BreakLine.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      height: double.infinity,
      padding: EdgeInsets.fromLTRB(0, statusBarHeight, 100, 0),
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.blueGrey,
              height: 150,
            ),
            ItemDrawer(Icons.home, "Home"),
            BreakLine(),
            ItemDrawer(Icons.phone, "Phone")
          ],
        ),
      ),
    );
  }
}

class ItemDrawer extends StatelessWidget {
  IconData iconData;
  String name;

  ItemDrawer(this.iconData, this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.only(left: 10),
      child: Row(
        children: <Widget>[
          Icon(iconData),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Text(name),
          )
        ],
      ),
    );
  }
}
