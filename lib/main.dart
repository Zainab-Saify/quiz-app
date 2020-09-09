import 'package:flutter/material.dart';
import './question_display_page.dart';

void main() {
  runApp(FirstPage());
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text("start Quiz!"),
        onPressed: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => QuizDisplay()))
        },
      ),
    );
  }
}
