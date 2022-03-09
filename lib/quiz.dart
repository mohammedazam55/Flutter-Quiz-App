import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  // const Quiz({Key? key}) : super(key: key);
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final answerQuestion;
  Quiz({
    this.questions,
    this.answerQuestion,
    this.questionIndex,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map(
          (answer) {
            return Answer(
                () => answerQuestion(answer['score']), answer['text']);
          },
        ).toList(),
      ],
    );
  }
}
