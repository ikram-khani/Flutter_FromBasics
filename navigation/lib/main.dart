import 'package:flutter/material.dart';
import 'package:navigation/detail.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "Navigation",
    home: navigation(),
  ));
}

class navigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _navigatorstate(); //underscore means private
  }
}

class _navigatorstate extends State<navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Navigation",
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: Center(
            child: TextButton(
                //buton contain child and onPressed property
                child: Text(
                  "click here",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      backgroundColor: Colors.blue),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  //property of button with (callback)unnamed function
                  Navigator.push(
                    //add new route(page/screen) to the stack
                    context, //link to the location of widgets
                    MaterialPageRoute(
                      //type of pageRoute is material
                      builder: (context) =>
                          pagedetail(), //route builder property eith callback function it can also be written as (context){pagedetail();}
                    ),
                  );
                })));
  }
}
