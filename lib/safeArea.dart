// Safearea
import 'package:flutter/material.dart';

class Practice_safearea extends StatelessWidget {
  const Practice_safearea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Safearea"),
            backgroundColor: Colors.deepOrangeAccent,
            centerTitle: true,
          ),
          body: Center(
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.adb,
                  size: 50,
                  color: Colors.green,
                )),
          ),
        ),
      ),
    );
  }
}
