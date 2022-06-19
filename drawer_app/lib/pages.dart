import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Container(
        child: Center(
          child: Text(
            "HOme page Data",
            style: TextStyle(fontSize: 30),
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
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
