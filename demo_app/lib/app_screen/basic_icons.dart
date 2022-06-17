import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class icons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        new Column(children: [
          new Icon(Icons.email,
              color: Color.fromARGB(255, 78, 67, 68), size: 40.0),
          Container(
            child: Text("Email",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 20)),
          )
        ]),
        new Column(children: [
          new Icon(Icons.message,
              color: Color.fromARGB(255, 184, 93, 86), size: 40.0),
          Container(
            child: Text("Message",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 20)),
          )
        ]),
        new Column(children: [
          new Icon(Icons.call,
              color: Color.fromARGB(255, 139, 73, 69), size: 40.0),
          Container(
            child: Text("Call",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 20)),
          )
        ])
      ]),
    );
  }
}
