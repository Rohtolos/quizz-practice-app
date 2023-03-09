import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer({required this.selectHandler, required this.answerText});

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.amber),
        onPressed: selectHandler(),
        child: Text(answerText),
      ),
    );
  }
}
