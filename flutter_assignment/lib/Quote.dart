import 'package:flutter/material.dart';

class Quote extends StatelessWidget {
  final List<String> randomText;
  final int index;

  Quote(this.randomText, this.index);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        randomText[index],
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
