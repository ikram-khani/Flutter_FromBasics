import 'package:flutter/material.dart';
import 'package:listview/myaccord.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "List View App and Accordin",
    home: mylist(),
  ));
}

class mylist extends StatefulWidget {
  mylist({Key? key}) : super(key: key);

  @override
  State<mylist> createState() => _mylistState();
}

class _mylistState extends State<mylist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MY LIST VIEW",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Card(
              child: ListTile(
                title: Text("BatteryFull"),
                subtitle: Text("the battery is full"),
                leading: Icon(Icons.battery_full),
                trailing: Icon(Icons.star),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Anchor"),
                subtitle: Text("lower the anchor"),
                leading: Icon(Icons.anchor),
                trailing: Icon(Icons.star),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Alarm"),
                subtitle: Text("this is the time"),
                leading: Icon(Icons.alarm),
                trailing: Icon(Icons.star),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Ballot"),
                subtitle: Text("cast your vote"),
                leading: Icon(Icons.ballot),
                trailing: Icon(Icons.star),
              ),
            ),
            Card(
              child: TextButton(
                  onPressed: (() {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: ((context) => myaccord())));
                  }),
                  child: Text("GO_TO_MY_ACCORD")),
            ),
          ],
        ),
      ),
    );
  }
}
