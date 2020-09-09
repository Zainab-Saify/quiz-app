import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

var questions = [
  "choose amount: for 25 din mein paisa double",
  "Choose a character:"
];

var options = [
  [1000, 2000, 3000, 4000, 5000],
  ['raju', 'sham', 'babu bhaiya']
];

class QuizDisplay extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuizDisplayState();
  }
}

class QuizDisplayState extends State<QuizDisplay> {
  int i = 0;
  var ans = [];

  void questionAnswered(value) {
    ans.add(value);
    setState(() {
      i++;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("my app")),
            body: i < questions.length
                ? Quiz(questions[i], options[i], questionAnswered)
                : Result()));
  }
}
