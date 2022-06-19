import 'package:flutter/material.dart';
import 'package:navigation_app/data/screendata.dart';

void main(List<String> args) {
  runApp(MaterialApp(title: "Bottom Nav Bar", home: bottomnav()));
}

class bottomnav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return bottomnavstate();
  }
}

class bottomnavstate extends State<bottomnav> {
  var _pagedata = [Home(), info(), services()]; //list or pages
  int selecteditem = 0; //index initialization
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Bottom Nav Bar",
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: Center(
          child: _pagedata[
              selecteditem], //data of the selected navItem i.e index of list ex pagedata[0]= homepage(), here homepage data will be shown
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.info), label: "Info"),
            BottomNavigationBarItem(
                icon: Icon(Icons.design_services), label: "Services"),
          ],
          currentIndex:
              selecteditem, //current index is the value of selcteditem variable
          onTap: (setvalue) {
            //on tapping the item(item 0,1,2) set the int value to setvalue variable
            setState(() {
              selecteditem =
                  setvalue; //assign the setvalue to selecteditem (which is the index of the pagedata ist)
            });
          },
        ));
  }
}
