import 'package:flutter/material.dart';
import 'package:quiz/Model/QuestionsModel.dart';

import '../Styles/Color.dart';
import 'Result.dart';

class QuizScreen extends StatefulWidget {
  final String categoryId;
  final String categoryName;
  const QuizScreen({super.key, required this.categoryId, required this.categoryName});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0;

  List<Question> get questionsForCategory {
    return allQuestions
        .where((question) => question.categoryId == widget.categoryId)
        .toList();
  }

  String? selectedOption;
  int correctAnswers = 0;
  int? selectedOptionIndex;

  bool get isLastQuestion => _currentQuestionIndex == questionsForCategory.length - 1;

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
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(widget.categoryName),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(questionsForCategory[_currentQuestionIndex].question),
                        Column(
                          children: [
                            for (var option in questionsForCategory[_currentQuestionIndex].options)
                            Card(
                              child: RadioListTile(
                                title: Text(option),
                                value: option,
                                groupValue: selectedOption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption = value as String;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (_currentQuestionIndex > 0) {
                                setState(() {
                                  _currentQuestionIndex--;
                                  selectedOption = null;
                                });
                              }
                            },
                            child: Text('Previous'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              String correctAnswer =
                                  questionsForCategory[_currentQuestionIndex].correctAnswer;
                              bool isCorrect = selectedOption == correctAnswer;

                              if (isCorrect) {
                                correctAnswers++;
                              }

                              if (_currentQuestionIndex < questionsForCategory.length - 1) {
                                setState(() {
                                  _currentQuestionIndex++;
                                  selectedOption = null;
                                });
                              } else {
                                Navigator.push(context,MaterialPageRoute(builder: (context) => ResultPage(totalQuestions: questionsForCategory.length,correctAnswers: correctAnswers,),),);
                              }
                            },
                            child: Text(isLastQuestion ? 'Finish' : 'Next'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
