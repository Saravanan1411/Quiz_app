import 'package:flutter/foundation.dart';

class Question {
  final String categoryId;
  final String categoryName;
  final String question;
  final List<String> options;
  final String correctAnswer;

  Question({
    required this.categoryName,
    required this.categoryId,
    required this.question,
    required this.options,
    required this.correctAnswer,
  });
}


List<Question> allQuestions = [

  //aptitude
  Question(
    categoryId: '1',
    categoryName: 'Aptitude',
    question: 'A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?',
    options: ['120 metres', '180 metres', '324 metres', '150 metres'],
    correctAnswer: '150 metres',

  ),
  Question(
    categoryId: '1',
    categoryName: 'Aptitude',
    question: 'Two ships are sailing in the sea on the two sides of a lighthouse. The angle of elevation of the top of the lighthouse is observed from the ships are 30° and 45° respectively. If the lighthouse is 100 m high, the distance between the two ships is:',
    options: ['173 m', '200 m', '273 m', '300 m'],
    correctAnswer: '273 m',
  ),
  Question(
    categoryId: '1',
    categoryName: 'Aptitude',
    question: 'Two students appeared at an examination. One of them secured 9 marks more than the other and his marks was 56% of the sum of their marks. The marks obtained by them are:',
    options: ['39, 30', '41, 32', '42, 33', '43, 34'],
    correctAnswer: '42, 33',
  ),
  Question(
    categoryId: '1',
    categoryName: 'Aptitude',
    question: 'A fruit seller had some apples. He sells 40% apples and still has 420 apples. Originally, he had:',
    options: ['588 apples', '600 apples', '672 apples', '700 apples'],
    correctAnswer: '700 apples',
  ),
  Question(
    categoryId: '1',
    categoryName: 'Aptitude',
    question: 'It was Sunday on Jan 1, 2006. What was the day of the week Jan 1, 2010?',
    options: ['Sunday', 'Saturday', 'Friday', 'Wednesday'],
    correctAnswer: 'Friday',
  ),

  //Technical
  Question(
    categoryId: '2',
    categoryName: 'Technical',
    question: 'Which of the following is a characteristic of Dart programming language',
    options: ['Statically typed', 'Dynamically typed', 'Both (a) and (b)', 'None of the above'],
    correctAnswer: 'Both (a) and (b)',
  ),
  Question(
    categoryId: '2',
    categoryName: 'Technical',
    question: 'Which of the following is not a feature of Dart programming language?',
    options: ['Asynchronous programming support', 'Garbage collection', 'Functional programming support', 'Multithreading'],
    correctAnswer: 'Multithreading',
  ),
  Question(
    categoryId: '2',
    categoryName: 'Technical',
    question: 'Which of the following is the correct syntax for defining a variable in Dart?',
    options: ['var x = 5;', ' x = 5;', 'int x = 5;', 'variable x = 5;'],
    correctAnswer: 'var x = 5;',
  ),
  Question(
    categoryId: '2',
    categoryName: 'Technical',
    question: 'What is Dart programming language?',
    options: ['A programming language used for web development','A programming language used for mobile app development','A programming language used for game development','A programming language used for database management'],
    correctAnswer: 'A programming language used for mobile app development',
  ),
  Question(
    categoryId: '2',
    categoryName: 'Technical',
    question: 'Which of the following is the correct syntax for defining a function in Dart?',
    options: ['function foo() {}', 'void foo() {}', 'int foo() {}', 'dynamic foo() {}'],
    correctAnswer: 'void foo() {}',
  ),


  //communication
  Question(
    categoryId: '3',
    categoryName: 'Communication',
    question: 'What _______ when I called?',
    options: ['Was you doing', 'Was you do', 'Were you doing', 'You were doing'],
    correctAnswer: 'Were you doing',
  ),
  Question(
    categoryId: '3',
    categoryName: 'Communication',
    question: 'What would you do if it ________ on your wedding day?',
    options: ['rained', 'will rain', 'would rain', 'could rain'],
    correctAnswer: 'rained',
  ),
  Question(
    categoryId: '3',
    categoryName: 'Communication',
    question: 'If I forget her birthday, Andrea gets upset." Which conditional is this?',
    options: ['zero', 'first', 'second', 'third'],
    correctAnswer: '',
  ),
  Question(
    categoryId: '3',
    categoryName: 'Communication',
    question: 'If it snows, ________ still drive to the coast?',
    options: ['will you', 'would you', 'would you have', 'would you had'],
    correctAnswer: 'will you',
  ),
  Question(
    categoryId: '3',
    categoryName: 'Communication',
    question: 'If I eat peanut butter, I ________ sick.',
    options: ['would have gotten', 'would get', 'get', 'will get'],
    correctAnswer: 'get',
  ),

];

