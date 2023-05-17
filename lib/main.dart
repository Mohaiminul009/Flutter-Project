import 'package:flutter/material.dart';
import 'package:flutterproject/Additional-Page/first.dart';
import 'package:flutterproject/Additional-Page/second.dart';
import 'package:flutterproject/Additional-Page/third.dart';
import 'package:flutterproject/Additional-Page/hero.dart';
import 'package:flutterproject/border.dart';
import 'package:flutterproject/navigationBar.dart';
import 'package:flutterproject/pageView.dart';
import 'package:flutterproject/sliverAppBar.dart';
import 'package:flutterproject/tabBar.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'gradientColor.dart';
import 'imagePicker.dart';

void main() {
  runApp(MyWidget2());
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Practice_Border(),
    );
  }
}

class MyWidget2 extends StatefulWidget {
  const MyWidget2({Key? key}) : super(key: key);

  @override
  State<MyWidget2> createState() => _MyWidget2State();
}

class _MyWidget2State extends State<MyWidget2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Practice_ImagePicker(),
    );
  }
}
