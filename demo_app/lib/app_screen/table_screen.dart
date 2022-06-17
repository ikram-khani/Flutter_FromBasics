import 'package:flutter/material.dart';

class table extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Container(
      margin: new EdgeInsets.all(20),
      child: Table(
        border: TableBorder.all(color: Colors.black),
        children: [
          TableRow(children: [
            Text(
              "First Name",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              "Last Name",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )
          ]),
          TableRow(children: [
            Text(
              "Ikram",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            Text(
              "Khan",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            )
          ]),
          TableRow(children: [
            Text(
              "Bilal",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            Text(
              "Ahmad",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            )
          ])
        ],
      ),
    );
  }
}
