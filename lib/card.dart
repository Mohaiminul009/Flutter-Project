// CardView & SingleChildScrollView
import 'package:flutter/material.dart';

class Practice_Cardview_singleChildScrollView extends StatelessWidget {
  const Practice_Cardview_singleChildScrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Row"),
            backgroundColor: Colors.deepOrangeAccent,
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  color: Colors.blueAccent,
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 5,
                ),
                Container(
                  color: Colors.cyanAccent,
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 5,
                ),
                Container(
                  color: Colors.greenAccent,
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 5,
                ),
                Container(
                  color: Colors.orangeAccent,
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 5,
                ),
                Container(
                  color: Colors.lightBlueAccent,
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 5,
                ),
                Container(
                  color: Colors.purpleAccent,
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 5,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
