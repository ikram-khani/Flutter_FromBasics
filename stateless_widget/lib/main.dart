import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "stateless widgets",
    home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            MyApp(name: "Ikram"),
            SizedBox(
              height: 8,
            ),
            MyApp(name: "Zeenu"),
            SizedBox(
              height: 8,
            ),
            MyApp(name: "Bilal"),
            SizedBox(
              height: 8,
            ),
            MyApp(name: "Usman"),
            SizedBox(
              height: 8,
            ),
            MyApp(name: "Haris"),
            SizedBox(
              height: 8,
            ),
            MyApp(name: "Saad")
          ],
        ),
      ),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({required this.name, super.key});

  final String name;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: Colors.lightBlueAccent),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(name),
      ),
    );
  }
}
