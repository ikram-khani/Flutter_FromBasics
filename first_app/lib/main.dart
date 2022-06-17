import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "MY_App",
    home: simpleform(), //calling the class simpleform in home
  ));
}

class simpleform extends StatefulWidget {
  //extends statefull widget
  @override //statefull widget ovverride createstate methosd
  State<StatefulWidget> createState() {
    return _simpleformstate(); //underscore means private//calling and return simpleformstate cls
  }
}

class _simpleformstate extends State<simpleform> {
  //extends and set state of simpleform cls //below we will set a state for it
  String name = ""; //declare here cz we want diff widgets to access it
  @override
  Widget build(BuildContext context) {
    //method for state
    return Scaffold(
      //return scaffold
      appBar: AppBar(
        title: Text(
          "MY_App",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          children: <Widget>[
            TextField(onSubmitted: (String usename) {
              setState(() {
                //on submitted set new state of simpleform cls
                name = usename; //pass the value to name
              });
            }),
            Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  "My name is $name", //display the changed value of name
                  style: TextStyle(fontSize: 25.0),
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                ))
          ],
        ),
      ),
    );
  }
}
