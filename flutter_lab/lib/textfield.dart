import 'package:flutter/material.dart';

class TextFieldCol extends StatefulWidget {
  const TextFieldCol({Key? key}) : super(key: key);
  final String value = "";

  @override
  State<TextFieldCol> createState() => _TextFieldColState();
}

class _TextFieldColState extends State<TextFieldCol> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          color: Color.fromRGBO(255, 255, 255, 1),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              hintText: "Email Address",
            ),
            onChanged: (text) {
              print("Email:$text");
            },
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          color: Color.fromRGBO(255, 255, 255, 1),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.call),
              hintText: "Phone number",
            ),
            onChanged: (text) {
              print("Phone No:$text");
            },
          ),
        ),
      ],
    );
  }
}
