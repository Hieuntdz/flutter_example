import 'package:animewallpaper/DrawerView.dart';
import 'package:animewallpaper/Tab1View.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainAct());
}

const tabList = ["Tab1", "Tab2", "Tab3"];

class MainAct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: tabList.map((item) {
                return Container(
                  child: Tab(
                    text: item,
                  ),
                );
              }).toList(),
            ),
            title: Text('Tabs Demo'),
          ),
          drawer: DrawerView(),
          body: TabBarView(
            children: [
              Tabb1View(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
