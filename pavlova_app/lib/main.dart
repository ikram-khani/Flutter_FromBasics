import 'package:flutter/material.dart';

void main(List<String> args) {
  final stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: const [
      Icon(
        Icons.star,
        color: Colors.green,
      ),
      Icon(
        Icons.star,
        color: Colors.green,
      ),
      Icon(
        Icons.star,
        color: Colors.green,
      ),
      Icon(
        Icons.star,
        color: Colors.black45,
      ),
      Icon(
        Icons.star,
        color: Colors.black45,
      )
    ],
  );

  final rating = Container(
    padding: const EdgeInsets.only(top: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        stars,
        const Text(
          "117 Reviews",
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontWeight: FontWeight.w800,
              color: Colors.black),
        )
      ],
    ),
  );
  const descTextStyle = TextStyle(
      fontSize: 15,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontWeight: FontWeight.w800,
      color: Colors.black,
      height: 2);

  final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: const [
                Icon(
                  Icons.kitchen,
                  color: Colors.green,
                ),
                Text("PREP:"),
                Text("25-min")
              ],
            ),
            Column(
              children: const [
                Icon(
                  Icons.restaurant,
                  color: Colors.green,
                ),
                Text("COOK:"),
                Text("1-hour")
              ],
            ),
            Column(
              children: const [
                Icon(Icons.timer, color: Colors.green),
                Text("FEEDS:"),
                Text("4-6")
              ],
            ),
          ],
        ),
      ));
  const titleText = Text(
    "Strawbery Pavlova",
    style: TextStyle(
        fontSize: 20,
        fontFamily: 'Roboto',
        letterSpacing: 0.5,
        fontWeight: FontWeight.w800,
        color: Colors.black),
  );
  const subtitleText = Text(
    "Pavlova is a meringue-based dessert. Originating in either Australia or New Zealand in the early 20th century, it was named after the Russian ballerina Anna Pavlova.[1] Taking the form of a cake-like circular block of baked meringue, pavlova has a crisp crust and soft, light inside",
    style: TextStyle(
        fontSize: 15,
        fontFamily: 'Roboto',
        letterSpacing: 0.5,
        color: Colors.black),
  );
  final leftColumn = Container(
    padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
    child: Column(
      children: [titleText, subtitleText, rating, iconList],
    ),
  );

  runApp(MaterialApp(
    title: "Pavlova app",
    home: Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 30, 0, 20),
          height: 600,
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Image(image: AssetImage("images/pavlova.jpg")),
                Expanded(
                  child: SizedBox(
                    width: 440,
                    child: leftColumn,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  ));
}
