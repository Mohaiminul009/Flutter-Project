//Snackbar
import 'package:flutter/material.dart';

class Practice_Snackbar extends StatelessWidget {
  const Practice_Snackbar({Key? key}) : super(key: key);
  MySnackBar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar"),
        centerTitle: true,
        titleSpacing: 0,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 10,
        backgroundColor: Colors.deepOrange,
        actions: [
          IconButton(
              onPressed: () {
                print("Balance checked!");
              },
              icon: Icon(Icons.accessible_rounded))
        ],
      ),
      // drawer: Container(
      //   child: Practice_Snackbar(),
      //   // backgroundColor: Colors.blueGrey,
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MySnackBar("Hello", context);
        },
        child: Icon(Icons.account_box_rounded),
        backgroundColor: Colors.deepOrange,
      ),
    );
  }
}
