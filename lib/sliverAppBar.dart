import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Practice_SliverAppBar extends StatefulWidget {
  const Practice_SliverAppBar({Key? key}) : super(key: key);

  @override
  State<Practice_SliverAppBar> createState() => _Practice_SliverAppBarState();
}

class _Practice_SliverAppBarState extends State<Practice_SliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            backgroundColor: Colors.deepOrangeAccent,
            flexibleSpace: FlexibleSpaceBar(title: Text("Sliver Appbar"),),
            pinned: true,
          ),
          SliverList(delegate: SliverChildListDelegate(<Widget>[
            ListTile(
              title: Text("Artificial Intelligence"),
              subtitle: Text("At its simplest form, artificial intelligence is a field, which combines computer science and robust datasets, to enable problem-solving. It also encompasses sub-fields of machine learning and deep learning, which are frequently mentioned in conjunction with artificial intelligence."),
              leading: Icon(Icons.insert_drive_file_outlined,
              color: Colors.blue,),
              trailing: Icon(Icons.open_in_new_rounded,
              color: Colors.green,),
            ),
            ListTile(
              title: Text("Artificial Intelligence"),
              subtitle: Text("At its simplest form, artificial intelligence is a field, which combines computer science and robust datasets, to enable problem-solving. It also encompasses sub-fields of machine learning and deep learning, which are frequently mentioned in conjunction with artificial intelligence."),
              leading: Icon(Icons.insert_drive_file_outlined,
                color: Colors.blue,),
              trailing: Icon(Icons.open_in_new_rounded,
                color: Colors.green,),
            ),
            ListTile(
              title: Text("Artificial Intelligence"),
              subtitle: Text("At its simplest form, artificial intelligence is a field, which combines computer science and robust datasets, to enable problem-solving. It also encompasses sub-fields of machine learning and deep learning, which are frequently mentioned in conjunction with artificial intelligence."),
              leading: Icon(Icons.insert_drive_file_outlined,
                color: Colors.blue,),
              trailing: Icon(Icons.open_in_new_rounded,
                color: Colors.green,),
            ),
            ListTile(
              title: Text("Artificial Intelligence"),
              subtitle: Text("At its simplest form, artificial intelligence is a field, which combines computer science and robust datasets, to enable problem-solving. It also encompasses sub-fields of machine learning and deep learning, which are frequently mentioned in conjunction with artificial intelligence."),
              leading: Icon(Icons.insert_drive_file_outlined,
                color: Colors.blue,),
              trailing: Icon(Icons.open_in_new_rounded,
                color: Colors.green,),
            ),
            ListTile(
              title: Text("Artificial Intelligence"),
              subtitle: Text("At its simplest form, artificial intelligence is a field, which combines computer science and robust datasets, to enable problem-solving. It also encompasses sub-fields of machine learning and deep learning, which are frequently mentioned in conjunction with artificial intelligence."),
              leading: Icon(Icons.insert_drive_file_outlined,
                color: Colors.blue,),
              trailing: Icon(Icons.open_in_new_rounded,
                color: Colors.green,),
            ),
            ListTile(
              title: Text("Artificial Intelligence"),
              subtitle: Text("At its simplest form, artificial intelligence is a field, which combines computer science and robust datasets, to enable problem-solving. It also encompasses sub-fields of machine learning and deep learning, which are frequently mentioned in conjunction with artificial intelligence."),
              leading: Icon(Icons.insert_drive_file_outlined,
                color: Colors.blue,),
              trailing: Icon(Icons.open_in_new_rounded,
                color: Colors.green,),
            ),
          ]))
        ],
      ),
    ));
  }
}
