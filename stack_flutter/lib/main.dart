import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    title: "Stack in Flutter",
    home: MyStack(),
  ));
}

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Stack"),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Stack(
                fit: StackFit.passthrough,
                children: [
                  Container(
                    height: 200,
                    width: 300,
                    color: Colors.green,
                    child: const Center(
                      child: Text("First Widget"),
                    ),
                  ),
                  Positioned(
                      top: 30,
                      right: 20,
                      child: Container(
                        color: Colors.blue,
                        height: 50,
                        width: 100,
                        child: const Center(
                          child: Text("Right widget"),
                        ),
                      )),
                  Positioned(
                      top: 30,
                      left: 20,
                      child: Container(
                        color: Colors.yellow,
                        height: 50,
                        width: 100,
                        child: const Center(
                          child: Text("Left widget"),
                        ),
                      )),
                ],
              ),
            ),
            Positioned(
                top: 140,
                left: 135,
                right: 135,
                child: Container(
                  color: Colors.orange,
                  height: 300,
                  child: const RotatedBox(
                    quarterTurns: 3,
                    child: Center(
                        child: Text(
                      "Stand Widget",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
                  ),
                ))
          ],
        ));
  }
}
