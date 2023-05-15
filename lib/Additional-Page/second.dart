import 'package:flutter/material.dart';

void main() {
  runApp(MySecondWidget());
}

class MySecondWidget extends StatelessWidget {
  const MySecondWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget1(),
    );
  }
}

class MyWidget1 extends StatelessWidget {
  const MyWidget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Center(
        child: Text("Page no 2",
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
        )),
        
      ),
    );
  }
}