import 'dart:io';

import 'package:flutter/material.dart';

class ButtonRow extends StatefulWidget {
  ButtonRow({Key? key}) : super(key: key);

  @override
  State<ButtonRow> createState() => _ButtonRowState();
}

class _ButtonRowState extends State<ButtonRow> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextButton(
                onPressed: (() => print("text Button is pressed")),
                child: Text(
                  "Text Btn",
                  style: TextStyle(fontSize: 15),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.grey),
                  foregroundColor: MaterialStatePropertyAll(Colors.black),
                  padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: (() => print("Elevated Button is pressed")),
                child: Text(
                  "Tap ME",
                  style: TextStyle(fontSize: 15),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  foregroundColor: MaterialStatePropertyAll(Colors.black),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: OutlinedButton(
                onPressed: (() => print("outlined Button is pressed")),
                child: Icon(Icons.add),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.red),
                  foregroundColor: MaterialStatePropertyAll(Colors.black),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: (() => print("Floating action Button is pressed")),
                child: Text(
                  "FA btn",
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                backgroundColor: Color.fromRGBO(0, 255, 255, 150),
                foregroundColor: Colors.black,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: CloseButton(
                onPressed: (() => print("Closed button is pressed")),
                color: Colors.red,
              ),
            ),
          ],
        )
      ],
    );
  }
}
