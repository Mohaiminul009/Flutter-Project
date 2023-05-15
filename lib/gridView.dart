//Grid View
import 'package:flutter/material.dart';

class Practice_Gridview extends StatelessWidget {
  const Practice_Gridview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Grid View"),
            centerTitle: true,
            backgroundColor: Colors.deepOrangeAccent,
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.purpleAccent,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.greenAccent,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blueAccent,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.orangeAccent,
                ),
              ],
            ),
          )),
    );
  }
}
