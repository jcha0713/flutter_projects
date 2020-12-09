import 'package:flutter/material.dart';

import './Quote.dart';
import 'QuoteControl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final randomText = const [
    'You\'re probably on the right track if you feel like a sidewalk worm during a rainstorm.',
    'Heroing is one of the shortest-lived professions there is.',
    'Reading is to the mind what exercise is to the body.',
    'When men are pure, laws are useless; when men are corrupt, laws are broken.',
    'Your whole life people tell you to do what you love. But if you gotta do something else to pay the bills, you don\'t automatically have to be miserable.'
  ];
  var index = 0;

  void updateIndex() {
    setState(() {
      index += 1;
      if (index >= randomText.length) {
        index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Random Quote',
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Quote(randomText, index),
              QuoteControl(updateIndex),
            ],
          ),
        ),
      ),
    );
  }
}
