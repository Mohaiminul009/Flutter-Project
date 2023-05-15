// MediaQuery for responsive
import 'package:flutter/material.dart';

class Practice_MediaQuery extends StatelessWidget {
  const Practice_MediaQuery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Media Query"),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                color: Colors.greenAccent,
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 2,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                color: Colors.blueAccent,
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 2,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                color: Colors.redAccent,
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
