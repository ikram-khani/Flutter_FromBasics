import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:drawer_app/drawer.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "myApp",
    home: mydrawer(),
  ));
}

class mydrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _mydrawerstate();
  }
}

class _mydrawerstate extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My App",
          style: TextStyle(fontSize: 25),
        ),
      ),
      drawer:
          maindrawer(), //drawer is a property or attribute of scaffold in which we are calling the maindrawer cls which exist in drawer.dart
      body: Center(
        child: Text(
          "Home page",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
