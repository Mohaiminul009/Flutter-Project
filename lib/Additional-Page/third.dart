import 'package:flutter/material.dart';

void main() {
  runApp(MyThirdWidget());
}

class MyThirdWidget extends StatelessWidget {
  const MyThirdWidget({Key? key}) : super(key: key);

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
      color: Colors.green,
      child: Center(
        child: Text("Page no 3",
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
        )),
        
      ),
    );
  }
}