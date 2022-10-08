import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Startup Name Generator",
      home: RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({super.key});

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestion = <WordPair>[]; //list for suggested word pairs
  final _saved = <WordPair>{}; //set (dosn't allow duplicates)
  final _biggerFont = const TextStyle(fontSize: 18);
  //variable for font of the wordpair
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Startup Name Generator"),
          actions: [
            IconButton(
                onPressed: _pushSaved,
                tooltip: 'Save Suggestions',
                icon: const Icon(Icons.list))
          ],
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(10),
            itemBuilder: (context, i) {
              //itembuilder return all the visible listTile start from 1
              if (i.isOdd) {
                return const Divider();
              } //if it odds put the divider widget between

              final index = i ~/ 2;
              //(if it even then index= 1,2,3,4 else 3/2,5/2,7/2=1,2,3 so for "odd i" index not increase)
              if (index >= _suggestion.length) {
                //after last item
                _suggestion.addAll(generateWordPairs().take(10));
                //increase 10 listile or wordpairs specifically
              }
              final alreadySaved = _saved.contains(_suggestion[index]);
              return ListTile(
                  title: Text(
                    _suggestion[index].asPascalCase,
                    style: _biggerFont,
                  ), //get the text from "suggestion List" at index and return the listTile to listview

                  trailing: Icon(
                    alreadySaved ? Icons.favorite : Icons.favorite_border,
                    color: alreadySaved ? Colors.red : null,
                    semanticLabel: alreadySaved ? 'Remove from saved' : 'Save',
                  ),
                  onTap: () {
                    setState(() {
                      if (alreadySaved) {
                        _saved.remove(_suggestion[index]);
                      } else {
                        _saved.add(_suggestion[index]);
                      }
                    });
                  });
            }));
  }

  void _pushSaved() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      final tiles = _saved.map((pair) {
        return ListTile(
          title: Text(
            pair.asPascalCase,
            style: _biggerFont,
          ),
        );
      });
      final divided = tiles.isNotEmpty
          ? ListTile.divideTiles(tiles: tiles, context: context).toList()
          : <Widget>[];
      return Scaffold(
        appBar: AppBar(
          title: const Text("Saved Suggesions"),
        ),
        body: ListView(
          children: divided,
        ),
      );
    }));
  }
}
