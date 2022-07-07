import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: calcUI(),
  ));
}

class calcUI extends StatelessWidget {
  const calcUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 90, 70, 70),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 90, 70, 70),
          title: Center(child: Container(child: Text("BMI Calculator")))),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: double.infinity,
                    width: double.infinity,
                    child: Text(
                      "top-1",
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 116, 4, 4),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    height: double.infinity,
                    child: Text("top-2"),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 116, 4, 4),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(10),
            child: Text("center-1"),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 116, 4, 4),
            ),
          )),
          Expanded(
            child: Row(children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: double.infinity,
                  width: double.infinity,
                  child: Text("Bottom-1"),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 116, 4, 4),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: double.infinity,
                  width: double.infinity,
                  child: Text("Bottom-2"),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 116, 4, 4),
                  ),
                ),
              )
            ]),
          ),
        ]),
      ),
    );
  }
}
