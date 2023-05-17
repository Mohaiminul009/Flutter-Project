import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Practice_GradientColor extends StatefulWidget {
  const Practice_GradientColor({Key? key}) : super(key: key);

  @override
  State<Practice_GradientColor> createState() => _Practice_GradientColorState();
}

class _Practice_GradientColorState extends State<Practice_GradientColor> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Gradient Color"),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.pink, Colors.purple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
        ),
      ),
    );
  }
}
