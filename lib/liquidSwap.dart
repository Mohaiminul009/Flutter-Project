// Liquid swipe
import 'package:flutter/material.dart';
import 'package:flutterproject/Additional-Page/first.dart';
import 'package:flutterproject/Additional-Page/second.dart';
import 'package:flutterproject/Additional-Page/third.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Practice_Liquidswipe extends StatelessWidget {
  const Practice_Liquidswipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pages = [
      const MyFirstWidget(),
      const MySecondWidget(),
      const MyThirdWidget(),
      // Container(
      //   color: Colors.blueAccent,
      //   child: Center(
      //     child: Text("1st Page"),
      //   ),
      // ),
      // Container(
      //   color: Colors.greenAccent,
      //   child: Center(
      //     child: Text("2nd Page"),
      //   ),
      // ),
      // Container(
      //   color: Colors.redAccent,
      //   child: Center(
      //     child: Text("3rd Page"),
      //   ),
      // ),
      // Container(
      //   color: Colors.yellowAccent,
      //   child: Center(
      //     child: Text("4th Page"),
      //   ),
      // ),
      // Container(
      //   color: Colors.pinkAccent,
      //   child: Center(
      //     child: Text("5th Page"),
      //   ),
      // )
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: LiquidSwipe(pages: pages),
        ),
      ),
    );
  }
}
