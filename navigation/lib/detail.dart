import 'package:flutter/material.dart';

class pagedetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail Page",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Page detail",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 30),
            ),
            FloatingActionButton(
                child: Icon(Icons.arrow_back),
                onPressed: (() {
                  Navigator.pop(
                      context); //delete the new added route from the stack and go back to the old route
                }))
          ],
        ),
      ),
    );
  }
}
