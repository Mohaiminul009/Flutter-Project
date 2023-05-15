import 'package:flutter/material.dart';

void main() {
  runApp(MyHeroWidget());
}

class MyHeroWidget extends StatelessWidget {
  const MyHeroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidgetHero(),
    );
  }
}

class MyWidgetHero extends StatelessWidget {
  const MyWidgetHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.orange,
        child: Center(
          child: Container(
            child: Hero(
              tag: "Add",
              child: Icon(Icons.photo_camera, size: 250),
            ),
          ),
        ));
  }
}
