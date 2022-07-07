// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: basicForm()));
}

class basicForm extends StatelessWidget {
  const basicForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Basic Form"),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "Name:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(25),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter your name",
                          label: Text("Name"),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2)))),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text("Password:",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 25),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Password",
                          label: Text("Password"),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2)))),
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: Center(
                child: FloatingActionButton.extended(
                  onPressed: null,
                  label: Text("Sign In"),
                  backgroundColor: Colors.blue,
                ),
              ),
            )
          ],
        ));
  }
}
