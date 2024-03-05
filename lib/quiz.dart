import 'package:flutter/material.dart';
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
  Widget? currentScreen;
  @override
  void initState() {
    currentScreen=StartPage(changeScreen);
    super.initState();
  }
  void changeScreen(){
    setState(() {
      currentScreen=const QuestionScreen();
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