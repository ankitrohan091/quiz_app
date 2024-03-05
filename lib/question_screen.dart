import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/models/quiz_questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<QuestionScreen> {
  int index=0;
  int score=0;
  void correctOption(){

  }
  @override
  Widget build(context) {
    final QuizQuestion currentQues = questions[index];
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQues.question,
            style: const TextStyle(
              color: Colors.cyanAccent, 
              fontSize: 27,
              fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ...currentQues.getShuffled().map((item){
            return Button(item,(){
              item==currentQues.options[0]?score++:null;
              setState(() {
                index==questions.length-1?null:index++;
              });
            });
          }),
        ],
      ),
    );
  }
}
