import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Data of home Page",
        style: TextStyle(fontSize: 25),
        textDirection: TextDirection.ltr,
      ),
    );
  }
}

class info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Data of info page",
        style: TextStyle(fontSize: 25),
        textDirection: TextDirection.ltr,
      ),
    );
  }
}

class services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Data of services page",
        style: TextStyle(fontSize: 25),
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
