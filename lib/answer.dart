import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final question;
  final String text;
  final Function answerFunction;

  Answer({this.question, this.text, this.answerFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        // style: ButtonStyle(
        //   foregroundColor: Colors.blue,
        // ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () => answerFunction(text),
      ),
    );
  }
}
