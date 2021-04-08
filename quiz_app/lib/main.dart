import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s the capital city of Uttar Pradesh?',
      'answers': [
        {'text': 'Bareilly', 'score': 0},
        {'text': 'Lucknow', 'score': 1},
        {'text': 'Agra', 'score': 0},
        {'text': 'kanpur', 'score': 0},
      ],
    },
    {
      'questionText':
          'Hitler\'s party which came into power in 1933 is known as?',
      'answers': [
        {'text': 'Labour Party', 'score': 0},
        {'text': 'Nazi Party', 'score': 1},
        {'text': 'Ku-Klux-Klan', 'score': 0},
        {'text': 'Democratic Party', 'score': 0},
      ],
    },
    {
      'questionText': 'Guwahati High Court is the judicature of?',
      'answers': [
        {'text': 'Nagaland', 'score': 0},
        {'text': 'Arunachal Pradesh', 'score': 0},
        {'text': 'Assam', 'score': 0},
        {'text': 'All of the above', 'score': 1},
      ],
    },
    {
      'questionText': 'The ozone layer restricts?',
      'answers': [
        {'text': 'Visible light', 'score': 0},
        {'text': 'Infrared radiation', 'score': 0},
        {'text': 'X-rays and gamma rays', 'score': 0},
        {'text': 'Ultraviolet radiation', 'score': 1},
      ],
    },
    {
      'questionText': 'CIA is the intellligence agency of?',
      'answers': [
        {'text': 'United Kingdom', 'score': 0},
        {'text': 'USA', 'score': 1},
        {'text': 'France', 'score': 0},
        {'text': 'Russia', 'score': 0},
      ],
    },
    {
      'questionText': 'Modern football is said to have evolved from?',
      'answers': [
        {'text': 'England', 'score': 1},
        {'text': 'India', 'score': 0},
        {'text': 'France', 'score': 0},
        {'text': 'Spain', 'score': 0},
      ],
    },
    {
      'questionText': 'Headquarter of UNO is situated at?',
      'answers': [
        {'text': 'New York (USA)', 'score': 1},
        {'text': 'Hague (Netherlands)', 'score': 0},
        {'text': 'Geneva (Switzerland', 'score': 0},
        {'text': 'Paris (France)', 'score': 0},
      ],
    },
    {
      'questionText':
          'For galvanizing iron which of the following metals is used?',
      'answers': [
        {'text': 'Aluminium', 'score': 0},
        {'text': 'Copper', 'score': 0},
        {'text': 'Lead', 'score': 0},
        {'text': 'Zinc', 'score': 1},
      ],
    },
    {
      'questionText': 'Logarithm tables were invented by?',
      'answers': [
        {'text': 'John Napier', 'score': 1},
        {'text': 'John Doe', 'score': 0},
        {'text': 'John Harrison', 'score': 0},
        {'text': 'John Douglas', 'score': 0},
      ],
    },
    {
      'questionText': 'Joule is the unit of?',
      'answers': [
        {'text': 'Temperature', 'score': 0},
        {'text': 'Pressure', 'score': 0},
        {'text': 'Energy', 'score': 1},
        {'text': 'Mass', 'score': 0},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
