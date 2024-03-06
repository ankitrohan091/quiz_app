import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.userAnswers, this.restart,{super.key});
  final List<String> userAnswers;
  final void Function() restart;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < userAnswers.length; i++) {
      summary.add({
        'index': i,
        'question': questions[i].question,
        'answer': questions[i].options[0],
        'selectedAnswer': userAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final length = questions.length;
    final summary=getSummary();
    final score=summary.where((data){
      return data['answer']==data['selectedAnswer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered $score out of $length questions correctly!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 7, 186, 123),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 300,
              child: SingleChildScrollView(
                child: Column(
                  children:[
                ...summary.map((item) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width:30,
                          height:30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color:item['answer']==item['selectedAnswer']? Colors.blue:Colors.red,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Text(((item['index'] as int) + 1).toString(),
                          style: GoogleFonts.lato(
                            color: const Color.fromARGB(255, 22,2,56),
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                        const SizedBox(width: 20,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item['question'] as String,
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 22,
                              ),),
                              const SizedBox(height:5),
                              Text(item['selectedAnswer'] as String,
                              style: GoogleFonts.lato(
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                                fontSize: 19,
                              )),
                              Text(item['answer'] as String,
                              style: GoogleFonts.lato(
                                color:const Color.fromARGB(255, 3, 177, 41),
                                fontSize:19,
                                fontWeight: FontWeight.w600,
                              ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
                const SizedBox(height: 30,),
                ],),
              ),
            ),
            TextButton.icon(onPressed: (){
              restart();
            },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz'),
              ), 
          ],
        ),
      ),
    );
  }
}
