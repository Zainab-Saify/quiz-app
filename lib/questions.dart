import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(12),
        child: Text(
          question,
          style: TextStyle(
              fontSize: 28, backgroundColor: Color.fromRGBO(0, 200, 0, 0.5)),
          textAlign: TextAlign.center,
        ));
  }
}
