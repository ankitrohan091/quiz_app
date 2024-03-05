import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen(this.userAnswers,{super.key});
  final List<String> userAnswers;
  @override
  Widget build(context){
    int score=0;
    for(int i=0;i<questions.length;i++){
      if(userAnswers[i]==questions[i].options[0]){
        score++;
      }
    }
    final length=questions.length.toString();
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You score $score out of $length'),
            const SizedBox(height: 20,),
            Text(questions[0].question),
            const SizedBox(height: 20,),
            Text(userAnswers[0]),
            Text(questions[0].options[0]),
            Button('Try Again', () {
              
            }),
          ],
        ),
      ),
    );
  }
}