import 'package:flutter/material.dart';
import 'package:flutterproject/first.dart';
import 'package:flutterproject/second.dart';
import 'package:flutterproject/third.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Practice_Container(),
    );
  }
}

class AppBar2 extends StatelessWidget {
  const AppBar2({Key? key}) : super(key: key);
  MySnackBar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY APP"),
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
      drawer: Container(
        child: AppBar2(),
        // backgroundColor: Colors.blueGrey,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MySnackBar("Hello", context);
        },
        child: Icon(Icons.account_box_rounded),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(child: Text("Hello World")),
    );
  }
}

// Safearea
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

// Container
class Practice_Container extends StatelessWidget {
  const Practice_Container({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
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
      ),
    );
  }
}

// Column
class Practice_Column extends StatelessWidget {
  const Practice_Column({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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

// Row
class Practice_Row extends StatelessWidget {
  const Practice_Row({Key? key}) : super(key: key);

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

// ListTail
class Practice_Listtail extends StatelessWidget {
  const Practice_Listtail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("ListTail"),
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

// Liquid swipe
class Practice_Liquidswipe extends StatelessWidget {
  const Practice_Liquidswipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pages = [
      const MyFirstWidget(),
      const MySecondWidget(),
      const MyThirdWidget(),
      // Container(
      //   color: Colors.blueAccent,
      //   child: Center(
      //     child: Text("1st Page"),
      //   ),
      // ),
      // Container(
      //   color: Colors.greenAccent,
      //   child: Center(
      //     child: Text("2nd Page"),
      //   ),
      // ),
      // Container(
      //   color: Colors.redAccent,
      //   child: Center(
      //     child: Text("3rd Page"),
      //   ),
      // ),
      // Container(
      //   color: Colors.yellowAccent,
      //   child: Center(
      //     child: Text("4th Page"),
      //   ),
      // ),
      // Container(
      //   color: Colors.pinkAccent,
      //   child: Center(
      //     child: Text("5th Page"),
      //   ),
      // )
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: LiquidSwipe(pages: pages),
        ),
      ),
    );
  }
}

// CardView
class Practice_Cardview extends StatelessWidget {
  const Practice_Cardview({Key? key}) : super(key: key);

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

