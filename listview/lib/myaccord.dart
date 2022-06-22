import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

///we will add getwidget dependency in pubspec.yaml
///and then will import the package of getwidget

class myaccord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY Accord"),
      ),
      body: Container(
        child: Column(
          children: [
            GFAccordion(
              title: "the wisdem",
              content:
                  "how It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here',",
              collapsedIcon: Icon(Icons.add),
              expandedIcon: Icon(Icons.minimize),
            ),
            GFAccordion(
              title: "Where does it come from?",
              content:
                  "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur",
              collapsedIcon: Icon(Icons.add),
              expandedIcon: Icon(Icons.minimize),
            ),
            GFAccordion(
              title: "Where can I get some?",
              content:
                  "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. ",
              collapsedIcon: Icon(Icons.add),
              expandedIcon: Icon(Icons.minimize),
            ),
            GFAccordion(
              title: "Lorem Ipsum",
              content:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
              collapsedIcon: Icon(Icons.add),
              expandedIcon: Icon(Icons.minimize),
            )
          ],
        ),
      ),
    );
  }
}
