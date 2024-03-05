import 'package:flutter/material.dart';
class Button extends StatefulWidget{
  const Button(this.option,this.onTap,{super.key});
  final void Function() onTap;
  final String option;
  @override
  State<Button> createState(){
    return _ButtonState();
  }
}
class _ButtonState extends State<Button>{
  @override
  Widget build(context){
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: ElevatedButton(onPressed: widget.onTap, 
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 17, 93, 155),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
      ),
      child: Text(widget.option,textAlign: TextAlign.center,)),
    );
  }
}