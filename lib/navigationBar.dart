// Navigation Bar
import 'package:flutter/material.dart';
import 'package:flutterproject/Additional-Page/first.dart';
import 'package:flutterproject/Additional-Page/second.dart';
import 'package:flutterproject/Additional-Page/third.dart';

class Practice_navigationBar extends StatefulWidget {
  const Practice_navigationBar({Key? key}) : super(key: key);

  @override
  State<Practice_navigationBar> createState() => _Practice_navigationBarState();
}

class _Practice_navigationBarState extends State<Practice_navigationBar> {
  var _currentState = 0;
  final pages = [MyFirstWidget(), MySecondWidget(), MyThirdWidget()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentState,
        items: [
          BottomNavigationBarItem(
              label: "Label 1",
              backgroundColor: Colors.red,
              icon: Icon(Icons.add_moderator)),
          BottomNavigationBarItem(
              label: "Label 2",
              backgroundColor: Colors.blue,
              icon: Icon(Icons.add_a_photo)),
          BottomNavigationBarItem(
              label: "Label 3",
              backgroundColor: Colors.green,
              icon: Icon(Icons.add_alert_sharp))
        ],
        onTap: (index) {
          setState(() {
            _currentState = index;
          });
        },
      ),
      body: pages[_currentState],
    );
  }
}
