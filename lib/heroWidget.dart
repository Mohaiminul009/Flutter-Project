//Hero Widget
import 'package:flutter/material.dart';
import 'package:flutterproject/Additional-Page/hero.dart';

class Practice_HeroWidget extends StatelessWidget {
  const Practice_HeroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("Page View"),
              centerTitle: true,
              backgroundColor: Colors.deepOrangeAccent,
            ),
            body: Center(
              child: CircleAvatar(
                radius: 50,
                child: GestureDetector(
                  child: Hero(
                    tag: "Add",
                    child: Icon(Icons.photo_camera, size: 50),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => MyWidgetHero())));
                  },
                ),
              ),
            )));
  }
}
