import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var questionText;
  Question(this.questionText);
  // const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        questionText,
        style: const TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
