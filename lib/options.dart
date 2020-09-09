import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final Function handler;
  var option;

  Options(
    this.handler,
    this.option,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        child: RaisedButton(
          color: Colors.cyan,
          textColor: Colors.black,
          onPressed: () => handler(option),
          child: Text(
            option.toString(),
            style: TextStyle(fontSize: 22),
          ),
        ));
  }
}
