import 'package:flutter/material.dart';

class StartPage extends StatefulWidget{
  const StartPage(this.changeScreen,{super.key});
  final void Function() changeScreen;

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(context){
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/quiz_logo.png',
            width:520,
            height:350,
            color: const Color.fromARGB(145, 255, 255, 255),
            ),
            const SizedBox(height: 20,),
            const Text('Learn Flutter the fun way!',style: TextStyle(color: Colors.white,fontSize: 28),),
            const SizedBox(height: 20,),
            OutlinedButton.icon(onPressed: widget.changeScreen,
            icon:const Icon(Icons.arrow_right_alt,color:Colors.white),
            label: const Text('Start Quiz',
            style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ],
        ),
      );
  }
}