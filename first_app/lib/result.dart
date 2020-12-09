import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;

  Result(this.totalScore, this.resetHandler);

  String get resultText {
    String result;
    if (totalScore < 6) {
      result = 'You are an awesome person!';
    } else if (totalScore < 12) {
      result = 'Such a likeable person!';
    } else if (totalScore < 18) {
      result = 'Hmm...';
    } else {
      result = 'You are so bad...';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Click to restart'),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
