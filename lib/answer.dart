import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback selectHandler;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.orange),
            foregroundColor: MaterialStateProperty.all(Colors.white)),
        child: Text(answerText),
        onPressed: selectHandler as VoidCallback,
      ),
    );
  }
}
