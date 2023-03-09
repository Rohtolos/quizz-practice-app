import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 0},
        {'text': 'Yellow', 'score': 0},
        {'text': 'Mavi', 'score': 0}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 0},
        {'text': 'Elephant', 'score': 0},
        {'text': 'Lion', 'score': 0},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'ke', 'score': 0},
        {'text': 'hant', 'score': 0},
        {'text': 'ion', 'score': 0},
      ],
    },
  ];

  var questionIndex = 0;
  var totalScore = 0;

  void answerQuestion(int score) {
    totalScore += score;

    setState(() {
      questionIndex = questionIndex + 1;
      totalScore = totalScore + score;
    });



    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('RohtolosX'),
          ),
          body: questionIndex < questions.length
              ? Quiz(
                  answerQuestion: answerQuestion,
                  questionIndex: questionIndex,
                  questions: questions,
                )
              : Result(totalScore)),
    );
  }
}
