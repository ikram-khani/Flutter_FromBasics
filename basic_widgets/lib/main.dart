import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      color: Colors.blue,
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            onPressed: null,
            tooltip: "Navigation Menu",
          ),
          Expanded(child: title),
          const IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
            tooltip: 'Search',
          )
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  //whole UI contain a column with 2 children Appbar and center text
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MyAppBar(
              title: Text(
            "Example Title",
            style: Theme.of(context).primaryTextTheme.headline6,
          )),
          const Expanded(
            child: Center(
              child: Text(
                "Hello World",
                style: TextStyle(fontSize: 25),
              ),
            ),
          )
        ],
      ),
    );
  }
}

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Example Widgets',
    home: SafeArea(child: MyScaffold()),
  ));
}
