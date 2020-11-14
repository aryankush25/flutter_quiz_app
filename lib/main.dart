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
      'answers': ['Red', 'Black', 'Blue', 'White']
    },
    {
      'questionText': 'What\'s your favourit animals?',
      'answers': ['Dog', 'Cat', 'Rabbit', 'Lion']
    },
    {
      'questionText': 'What\'s your favourit girl?',
      'answers': ['App', 'App', 'App', 'App']
    }
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
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
              : Result()),
    );
  }
}
