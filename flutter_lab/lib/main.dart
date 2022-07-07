import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_lab/textfield.dart';
import 'button_rows.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "My app",
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My app"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Text(
                      "Network Image",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png"))),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Text(
                      "Asset Image",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/mypic.jpg"))),
                    ),
                  ],
                ),
              )
            ],
          ),
          TextFieldCol(),
          ButtonRow()
        ],
      ),
    );
  }
}
