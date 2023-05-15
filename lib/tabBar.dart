// Tab bar
import 'package:flutter/material.dart';
import 'package:flutterproject/Additional-Page/first.dart';
import 'package:flutterproject/Additional-Page/second.dart';
import 'package:flutterproject/Additional-Page/third.dart';

class Practice_TabBar extends StatelessWidget {
  const Practice_TabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Bar"),
            centerTitle: true,
            bottom: TabBar(tabs: [
              Tab(text: "Tab 1", icon: Icon(Icons.tab)),
              Tab(text: "Tab 2", icon: Icon(Icons.table_view_outlined)),
              Tab(text: "Tab 3", icon: Icon(Icons.table_rows))
            ]),
          ),
          body: TabBarView(
              children: [MyFirstWidget(), MySecondWidget(), MyThirdWidget()]),
        ));
  }
}
