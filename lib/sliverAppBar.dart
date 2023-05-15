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
      body: CustomScrollView(),
    ));
  }
}
