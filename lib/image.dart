//Image
import 'package:flutter/material.dart';

class Practice_Image extends StatelessWidget {
  const Practice_Image({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Image"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                child: Image.asset("images/Md. moheyminul.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Image.asset("images/20220112_080422.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Image.asset("images/20221019_085513.jpg"),
              )
            ],
          )),
    ));
  }
}
