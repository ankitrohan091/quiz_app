import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen(this.score,{super.key});
  final int score;
  @override
  Widget build(context){
    final length=questions.length.toString();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('You score $score out of $length'),
        Button('Try Again', () { }),
      ],
    );
  }
}