import 'package:flutter/material.dart';

import 'quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourit color?',
      'answers': [
        {'option': 'Red', 'score': 1},
        {'option': 'Black', 'score': 2},
        {'option': 'Blue', 'score': 3},
        {'option': 'White', 'score': 4},
      ]
    },
    {
      'questionText': 'What\'s your favourit animals?',
      'answers': [
        {'option': 'Dog', 'score': 1},
        {'option': 'Cat', 'score': 2},
        {'option': 'Rabbit', 'score': 3},
        {'option': 'Lion', 'score': 4},
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(_questions, _questionIndex, _answerQuestion)
              : Result(_totalScore)),
    );
  }
}
