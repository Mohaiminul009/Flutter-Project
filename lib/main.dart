import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:html';
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

import 'CRUD/create.dart';
import 'gradientColor.dart';
import 'imagePicker.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(StudentInformation());
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Practice_GradientColor(),
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

class StudentInformation extends StatefulWidget {
  const StudentInformation({Key? key}) : super(key: key);

  @override
  State<StudentInformation> createState() => _StudentInformationState();
}

class _StudentInformationState extends State<StudentInformation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CreateInformation(),
    );
  }
}

