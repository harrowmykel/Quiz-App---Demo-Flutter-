import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
import './edrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  var questions = [
    {
      'questionText': 'What is your fav color?',
      'answers': [
        {"text": 'Blue', "score": 3},
        {"text": 'Pink', "score": 2},
        {"text": 'Purple', "score": 1},
      ],
    },
    {
      'questionText': 'What is your fav animal?',
      'answers': [
        {"text": 'Dog', "score": 1},
        {"text": 'Tiger', "score": 2},
        {"text": 'Lion', "score": 3},
      ],
    },
    {
      'questionText': 'Who is your favorite instructor?',
      'answers': [
        {"text": 'Max', "score": 2},
        {"text": 'Mark', "score": 3},
        {"text": 'John', "score": 1},
      ],
    }
  ];

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My first App')),
        drawer: Edrawer(
          children: ["TEXT 1", "TEXT 2"],
        ),
        body: (_questionIndex < questions.length)
            ? Quiz(
                questions: questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
