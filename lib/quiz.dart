import 'package:flutter/material.dart';
import './questions.dart';
import './options.dart';

class Quiz extends StatelessWidget {
  var question;
  var options;
  Function handler;

  Quiz(this.question, this.options, this.handler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question),
        ...(options as List).map((opt) {
          return Options(handler, opt);
        }),
      ],
    );
  }
}
