import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen(this.userAnswers,{super.key});
  final List<String> userAnswers;

  List<Map<String,Object>> getSummary(){
    final List<Map<String,Object>> summary=[];
    for(int i=0;i<userAnswers.length;i++){
      summary.add({
        'index':i,
        'question':questions[i].question,
        'answer': questions[i].options[0],
        'selectedAnswer':userAnswers[i],
      });
    }
    return summary;
  }

  int scoreCalculator(){
    int score=0;
    getSummary().map((data){
      if(data['answer']==data['selectedAnswer']){
        score++;
      }
    });
    return score;
  }

  @override
  Widget build(context){
    final length=questions.length.toString();
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You score $scoreCalculator() out of $length'),
            const SizedBox(height: 20,),
            ...getSummary().map((item){
              return Row(
                children: [
                  Text(((item['index'] as int) + 1).toString()),
                  Column(
                    children: [
                      Text(item['question'] as String),
                      Text(item['selectedAnswer']as String),
                      Text(item['answer']as String)
                    ],
                  ),
                ],
              );
            }),
            Button('Try Again', () {
              
            }),
          ],
        ),
      ),
    );
  }
}