import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:drawer_app/drawer.dart';

class homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _homepagestate();
  }
}

class _homepagestate extends State {
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
        "Home Page Data",
        style: TextStyle(fontSize: 30),
        textDirection: TextDirection.ltr,
      )),
    );
  }
}

class settingpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Container(
        child: Center(
          child: Text(
            "Setting page Data",
            style: TextStyle(fontSize: 30),
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}

class logoutpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Logout",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Container(
        child: Center(
          child: Text(
            "You have been logged out",
            style: TextStyle(fontSize: 30),
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}
