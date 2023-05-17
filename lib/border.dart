import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Practice_Border extends StatelessWidget {
  const Practice_Border({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Border"),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 5, color: Colors.yellow),
              bottom: BorderSide(width: 5, color: Colors.pink),
              right: BorderSide(width: 5, color: Colors.green),
              left: BorderSide(width: 5, color: Colors.purple),
            ),
            color: Colors.grey,
          ),
          child: Center(
            child: Container(
              height: 200,
              width: 200,
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
              decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 5, color: Colors.yellow),
                    bottom: BorderSide(width: 5, color: Colors.pink),
                    right: BorderSide(width: 5, color: Colors.green),
                    left: BorderSide(width: 5, color: Colors.purple)),
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
