import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_complete_guide/result.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {required this.answerQuestion,
      required this.questions,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            selectHandler: () => answerQuestion(answer['score']),
            answerText: 'text',
          );
        }).toList()
      ],
    );
  }
}
