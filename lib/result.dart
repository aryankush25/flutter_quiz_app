import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;

  Result(this._totalScore);

  String get resultString {
    var resultText = 'Your total score is ' + _totalScore.toString();

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultString,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
