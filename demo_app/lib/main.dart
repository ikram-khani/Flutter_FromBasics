// ignore_for_file: use_key_in_widget_constructors

import 'package:demo_app/app_screen/basic_icons.dart';
import 'package:demo_app/app_screen/table_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(HomeScreen());

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "AppBar",
        home: Scaffold(
            appBar: AppBar(
              title: const Text("AppBar"),
              backgroundColor: Colors.green, // background color of the app bar
            ),
            body: Container(
                color: const Color.fromARGB(255, 175, 155, 180),
                child: Column(
                  children: [icons(), table()],
                ))));
  }
}
