import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int questionIndex = 0;
  final List<String> questions = [
    'What is your fav color?',
    'What is your fav animal?',
  ];

  void answerQuestion(int chosen) {
    questionIndex++;
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
                 questions[questionIndex],
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
