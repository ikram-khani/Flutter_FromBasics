import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 245, 4, 24),
                ),
              ),
            ),
            Center(
              child: Text(
                "Ikram Khan",
                style: GoogleFonts.zenKurenaido(
                    textStyle: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
              ),
            ),
            MyText(),
          ],
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.white,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ListTile(
            title: Text("03089685902"),
            leading: Icon(Icons.call),
            iconColor: Colors.teal,
          ),
        ),
        Card(
          color: Colors.white,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ListTile(
            title: Text("anjaanikr@gmail.com"),
            leading: Icon(Icons.email),
            iconColor: Colors.teal,
          ),
        )
      ],
    );
  }
}
