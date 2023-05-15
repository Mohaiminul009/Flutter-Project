// Container
import 'package:flutter/material.dart';

class Practice_Container extends StatelessWidget {
  const Practice_Container({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // debugShowCheckedModeBanner: false,
      // home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Container"),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 120,
                  color: Colors.blue,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_call,
                        color: Colors.white,
                        size: 35,
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 120,
                  color: Colors.red,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.message,
                        color: Colors.white,
                        size: 35,
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 120,
                  color: Colors.green,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.email,
                        color: Colors.white,
                        size: 35,
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 70,
                  width: 120,
                  color: Colors.purple,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings_applications_sharp,
                        color: Colors.white,
                        size: 35,
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
