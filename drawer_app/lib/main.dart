import 'dart:async';

import 'package:drawer_app/pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:drawer_app/drawer.dart';
import 'package:flutter/rendering.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "myApp",
    home: splashscreen(),
  ));
}

class splashscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _splashscreenstate();
  }
}

class _splashscreenstate extends State {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), (() {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => homepage()));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My App",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Center(
          child: Container(
              margin: EdgeInsets.only(bottom: 30),
              width: 250,
              height: 300,
              child: Center(child: Image.asset("assets/IKperfect.png")))),
    );
  }
}
