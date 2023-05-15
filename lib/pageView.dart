//PageView
import 'package:flutter/material.dart';
import 'package:flutterproject/Additional-Page/first.dart';
import 'package:flutterproject/Additional-Page/second.dart';
import 'package:flutterproject/Additional-Page/third.dart';

class Practice_Pageview extends StatefulWidget {
  const Practice_Pageview({Key? key}) : super(key: key);

  @override
  State<Practice_Pageview> createState() => _Practice_PageviewState();
}

class _Practice_PageviewState extends State<Practice_Pageview> {
  PageController controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Page View"),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: PageView(
          controller: controller,
          scrollDirection: Axis.vertical,
          children: [MyFirstWidget(), MySecondWidget(), MyThirdWidget()],
        ),
      ),
    );
  }
}
