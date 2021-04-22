import 'package:flutter/material.dart';
import './question.dart';

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
  List<String> questions = [
    'What is your fav color?',
    'What is your fav animal?',
  ];

  void answerQuestion(int chosen) {
    setState(() {
      if (_questionIndex < 1) {
        _questionIndex++;
      } else {
        _questionIndex--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('My first App')),
            drawer: Drawer(
              child: Text("TEST"),
            ),
            // dra
            body: Column(
              children: [
                Text(
                  questions[_questionIndex],
                ),
                ElevatedButton(
                  child: Text("Answer 1"),
                  onPressed: () => answerQuestion(1),
                ),
                ElevatedButton(
                  child: Text("Answer 2"),
                  onPressed: () => answerQuestion(2),
                ),
                ElevatedButton(
                  child: Text("Answer 3"),
                  onPressed: () => answerQuestion(3),
                )
              ],
            )));
  }
}
