import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;

  Question({@required this.questionText});

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}