import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
import './question.dart';
import './answer.dart';
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
  var questions = [
    {
      'questionText': 'What is your fav color?',
      'answers': ['Blue', 'Pink', 'Purple'],
    },
    {
      'questionText': 'What is your fav animal?',
      'answers': ['Dog', 'Tiger', 'Lion'],
    },
    {
      'questionText': 'Who is your favorite instructor?',
      'answers': ['Max', 'Max', 'Max'],
    }
  ];

  void _answerQuestion(String chosen) {
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
        body: (_questionIndex >= questions.length)
            ? Result(): Column(
                children: [
                  Question(
                    question: questions[_questionIndex],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(
                      question: questions[_questionIndex],
                      text: answer,
                      answerFunction: _answerQuestion,
                    );
                  }).toList(),
                ],
              ),
      ),
    );
  }
}
