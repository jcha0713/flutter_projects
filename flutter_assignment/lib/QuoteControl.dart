import 'package:flutter/material.dart';

class QuoteControl extends StatelessWidget {
  final Function updateIndex;

  QuoteControl(this.updateIndex);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('Click to change the text'),
      onPressed: updateIndex,
    );
  }
}
