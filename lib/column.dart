// Column
import 'package:flutter/material.dart';

class Practice_Column extends StatelessWidget {
  const Practice_Column({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // debugShowCheckedModeBanner: false,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Column"),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: SingleChildScrollView(
          child: Column(
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
    );
  }
}
