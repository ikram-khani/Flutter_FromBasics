import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "Item List",
    home: TeamList(),
  ));
}

class TeamList extends StatelessWidget {
  TeamList({super.key});
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Item List"),
      ),
      body: Scrollbar(
          controller: _scrollController,
          child: ListView.builder(
              controller: _scrollController,
              itemCount: 100,
              itemBuilder: ((context, index) {
                return ListTile(
                  title: Text("Item: ${index + 1}"),
                );
              }))),
    );
  }
}
