import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: _buildGrid(),
    title: "GRid and List",
  ));
}

Widget _buildGrid() => GridView.extent(
    // GridView.extent to create a grid with tiles a maximum 150 pixels wide.
    //Use GridView.count to create a grid that’s 2 tiles wide in portrait mode, and 3 tiles wide in landscape mode.
    maxCrossAxisExtent: 150,
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    padding: const EdgeInsets.all(4),
    children: _gridList(30));

List<Container> _gridList(int count) => List.generate(
    count,
    (i) => Container(
          child: Image.asset("images/pic$i.jpg"),
        ));
