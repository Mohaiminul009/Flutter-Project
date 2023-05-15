// ListTile
import 'package:flutter/material.dart';

class Practice_ListTile extends StatelessWidget {
  const Practice_ListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("ListTile"),
            backgroundColor: Colors.deepOrangeAccent,
            centerTitle: true,
          ),
          body: ListView(
            children: [
              ListTile(
                title: Text("List Tile"),
                subtitle: Text("List tile practice"),
                leading: CircleAvatar(
                  child: Icon(Icons.list),
                ),
                trailing: Icon(Icons.add_call),
              ),
              ListTile(
                title: Text("List Tile"),
                subtitle: Text("List tile practice"),
                leading: CircleAvatar(
                  child: Icon(Icons.list),
                ),
                trailing: Icon(Icons.add_call),
              ),
              ListTile(
                title: Text("List Tile"),
                subtitle: Text("List tile practice"),
                leading: CircleAvatar(
                  child: Icon(Icons.list),
                ),
                trailing: Icon(Icons.add_call),
              ),
              ListTile(
                title: Text("List Tile"),
                subtitle: Text("List tile practice"),
                leading: CircleAvatar(
                  child: Icon(Icons.list),
                ),
                trailing: Icon(Icons.add_call),
              ),
              ListTile(
                title: Text("List Tile"),
                subtitle: Text("List tile practice"),
                leading: CircleAvatar(
                  child: Icon(Icons.list),
                ),
                trailing: Icon(Icons.add_call),
              )
            ],
          ),
        ),
      ),
    );
  }
}
