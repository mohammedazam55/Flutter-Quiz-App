import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is the Capital City of India?',
      'answers': [
        {'text': 'Hyderabad', 'score': 5},
        {'text': 'Mumbai', 'score': 5},
        {'text': 'Bihar', 'score': 5},
        {'text': 'New Delhi', 'score': 10},
      ],
    },
    {
      'questionText': 'When India Became Independent Country?',
      'answers': [
        {'text': '1912', 'score': 5},
        {'text': '1948', 'score': 5},
        {'text': '1950', 'score': 5},
        {'text': '1947', 'score': 10},
      ],
    },
    {
      'questionText': 'Who is the First Prime Minister of India?',
      'answers': [
        {'text': 'Narsimha Rao', 'score': 5},
        {'text': 'Dr. Pandit Jawaharlal Nehru', 'score': 10},
        {'text': 'Dr.APJ Abdul Kalam', 'score': 5},
        {'text': 'Narendra Modi', 'score': 5},
      ],
    },
    {
      'questionText': 'How Many States are there in India?',
      'answers': [
        {'text': '50', 'score': 5},
        {'text': '28', 'score': 5},
        {'text': '29', 'score': 10},
        {'text': '39', 'score': 5},
      ],
    },
    {
      'questionText': 'Who is the Current Prime Minister of India?',
      'answers': [
        {'text': 'Narendra Modi', 'score': 10},
        {'text': 'Dr. Pandit Jawaharlal Nehru', 'score': 5},
        {'text': 'Narsimha Rao', 'score': 5},
        {'text': 'Dr.APJ Abdul Kalam', 'score': 5},
      ],
    },
    {
      'questionText': 'Whose Photograph is on the Note of Indian ₹?',
      'answers': [
        {'text': 'Dr. Pandit Jawaharlal Nehru', 'score': 5},
        {'text': 'Mahatma Gandhi', 'score': 10},
        {'text': 'Bhagat Singh', 'score': 5},
        {'text': 'Dr.APJ Abdul Kalam', 'score': 5},
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    if (_questionIndex < _questions.length) {
      print(_questionIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : const Result()),
    );
  }
}
