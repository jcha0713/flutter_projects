import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 7},
        {'text': 'Blue', 'score': 4},
        {'text': 'Black', 'score': 10},
        {'text': 'White', 'score': 0},
        {'text': 'Purple', 'score': 6},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal',
      'answers': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Cat', 'score': 3},
        {'text': 'Elephant', 'score': 6},
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Tiger', 'score': 10},
      ],
    },
    {
      'questionText': 'What\'s your favorite programming language',
      'answers': [
        {'text': 'Flutter', 'score': 4},
        {'text': 'Java', 'score': 7},
        {'text': 'C', 'score': 10},
        {'text': 'Javascript', 'score': 2},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  void _reset() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Find out your personality'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore, _reset),
      ),
    );
  }
}
