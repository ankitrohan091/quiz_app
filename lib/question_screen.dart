import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/quiz_questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.addAnswer,{super.key});
  final void Function(String answer) addAnswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<QuestionScreen> {
  int index=0;
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
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 190, 155, 175),
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
            ),
          const SizedBox(height: 30),
          ...currentQues.getShuffled().map((item){
            return Button(item,(){
              widget.addAnswer(item);
              setState(() {
                index++;
              });
            });
          }),
        ],
      ),
    );
  }
}
