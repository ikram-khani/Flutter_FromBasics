import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:drawer_app/pages.dart';

class maindrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Drawer(
      //we are putting here drawer in a separate scaffold body
      child: Column(
        //consider the whole drawer as a column in which there are mainy childs container for diff UI widgets
        children: [
          Container(
            //container for profile view which contain a columns and children containers are present there in column for image(BoxDecoration) and centerText
            width: double.infinity, //as of the drawer
            color: Theme.of(context).primaryColor, //primary color of the app
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 85,
                    height: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://scontent.fisb5-2.fna.fbcdn.net/v/t39.30808-6/277579042_1401793500280299_7801562304501824797_n.jpg?stp=cp0_dst-jpg_e15_q65_s320x320&_nc_cat=104&ccb=1-7&_nc_sid=85a577&_nc_ohc=VjKi0-W_7K8AX9EGbAf&_nc_ht=scontent.fisb5-2.fna&oh=00_AT9zWs0aDndYfdLkC5C08epeERex0Evm3-VYyiTLzOhnIQ&oe=62B2D2C2")))),
                Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Center(
                      child: Text(
                        "Ikram khan",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ))
              ],
            ),
          ),
          Container(
              //container for listTiles(the childrens of a column)
              padding: EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  ListTile(
                    title: Icon(Icons.home),
                    leading: Text(
                      "Home",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => homepage())));
                    },
                  ),
                  ListTile(
                      title: Icon(Icons.settings),
                      leading: Text(
                        "Setitngs",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      onTap: (() {
                        Navigator.of(context).pop();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => settingpage())));
                      })),
                  ListTile(
                      title: Icon(Icons.logout),
                      leading: Text(
                        "Logout",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      onTap: (() {
                        Navigator.of(context)
                            .pop(); //delete my route from(.of(context)) from the place where i came from //.of(context) means where the link of locations of my widgets exists
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => logoutpage())));
                      }))
                ],
              ))
        ],
      ),
    ));
  }
}
