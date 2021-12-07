import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestions;

  Quiz(this.questions, this.answerQuestions, this.questionIndex);

  // ignore: empty_constructor_bodies

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText']?.toString() ?? '',
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(() => answerQuestions(answer['score']), answer['text'].toString());
        }).toList()
      ],
    );
  }
}
