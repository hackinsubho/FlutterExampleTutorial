import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() =>  runApp(new MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    //final wordPair = new WordPair.random();
    return new MaterialApp(
      title: 'Welcome to flutter',
      home: new Scaffold (
        appBar : new AppBar(
        title: new Text('Welcome to flutter')
    ),
    body: new Center(
      //child: new Text('Hello World'),
    //  child: new Text(wordPair.asPascalCase),
      child: new RandomWords(),
    ),
    ),
    );
  }
}

class RandomWords extends StatefulWidget{
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State <RandomWords>{
  @override
  Widget build(BuildContext context){
    final wordPair = new WordPair.random();
    return new Text (wordPair.asCamelCase);
  }
}