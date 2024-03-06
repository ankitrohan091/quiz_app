import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/question_screen.dart'; 

class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}
class _QuizState extends State<Quiz>{
  List<String> selectedAnswer=[];
  void addAnswer(String answer){
    selectedAnswer.add(answer);
    if(selectedAnswer.length==questions.length){
      setState(() {
         currentScreen=ResultScreen(selectedAnswer,restart);
         });
    }
  }

  void restart(){
    selectedAnswer=[];
    setState(() {
      currentScreen=QuestionScreen(addAnswer);
    });
  }
  Widget? currentScreen;
  @override
  void initState() {
    currentScreen=StartPage(changeScreen);
    super.initState();
  }
  void changeScreen(){
    setState(() {
      currentScreen=QuestionScreen(addAnswer);
    });
  }
  @override
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 185, 54, 209),Color.fromARGB(255, 160, 27, 184)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,  
            ),       
          ),
          child: currentScreen,
        ),
      ),
    );
  }
}