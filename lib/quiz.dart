import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> _questions;
  final int _questionIndex;
  final Function _answerQuestion;

  Quiz(this._questions, this._questionIndex, this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(_questions[_questionIndex]['questionText']),
        ...(_questions[_questionIndex]['answers'] as List<String>)
            .map((answer) {
          return Answer(_answerQuestion, answer);
        }).toList(),
      ],
    );
  }
}