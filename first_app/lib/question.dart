import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  // Question(questionText) {
  //   this.questionText = questionText;
  // }

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(40),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
