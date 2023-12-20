import 'package:flutter/material.dart';
import 'package:quiz/Screens/Home.dart';

import '../Styles/Color.dart';
import '../Styles/TextStyle.dart';

class ResultPage extends StatelessWidget {
  final int totalQuestions;
  final int correctAnswers;

  const ResultPage(
      {super.key, required this.totalQuestions, required this.correctAnswers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [gradient_1, gradient_2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Result",),
              Text('$correctAnswers/$totalQuestions',style: resultText,),
              ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>Home()) , (route) => false);
                  },
                  child: Text ("Return Home"))
            ],

          ),
        ),
      ),
    );
  }
}