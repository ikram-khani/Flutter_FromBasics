import 'dart:html';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "MY Widgets",
    home: MyWidget(),
  ));
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Widget"),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 15),
              child: Text(
                "Expanded widget without flex",
                style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                    child: Container(
                        height: 100,
                        alignment: Alignment.center,
                        color: Colors.pink,
                        child: Image.asset("assets/flutterbird.png"))),
                Expanded(
                    child: Container(
                        height: 100,
                        alignment: Alignment.center,
                        color: Colors.green,
                        child: Image.asset("assets/flutterbird.png"))),
                Expanded(
                    child: Container(
                        height: 100,
                        alignment: Alignment.center,
                        color: Colors.yellow,
                        child: Image.asset("assets/flutterbird.png")))
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 15),
              child: Text(
                "Expanded widget with flex",
                style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                        height: 100,
                        alignment: Alignment.center,
                        color: Colors.pink,
                        child: Image.asset("assets/flutterbird.png"))),
                Expanded(
                    flex: 2,
                    child: Container(
                        height: 100,
                        alignment: Alignment.center,
                        color: Colors.green,
                        child: Image.asset("assets/flutterbird.png"))),
                Expanded(
                    flex: 3,
                    child: Container(
                        height: 100,
                        alignment: Alignment.center,
                        color: Colors.yellow,
                        child: Image.asset("assets/flutterbird.png")))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
