import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final question;

  //constructor
  Question({@required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        question['questionText'],
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
