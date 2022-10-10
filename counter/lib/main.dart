import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 5),
              width: 100,
              height: 25,
              alignment: Alignment.center,
              child: ElevatedButton(
                  onPressed: _increment,
                  child: const Center(
                    child: Text("Increment"),
                  )),
            ),
            SizedBox(
              width: 100,
              child: Text("Count: $_count"),
            )
          ],
        ),
      ],
    );
  }
}

void main(List<String> args) {
  runApp(MaterialApp(
    title: "Counter App",
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: const Center(child: Counter()),
      // ignore: prefer_const_constructors
    ),
  ));
}
