import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetFunction;

  Result(this.resultScore, this.resetFunction);

  String get resultPhrase {
    String resultText = 'You did it';
    if (resultScore <= 3) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 5) {
      resultText = 'You are pretty likeable!';
    } else if (resultScore <= 7) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad?!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetFunction,
            child: Text(
              'Restart',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
