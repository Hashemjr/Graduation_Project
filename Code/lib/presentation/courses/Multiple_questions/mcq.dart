import 'package:chineasy/theme/theme_helper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChineseLearningApp());
}

class ChineseLearningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disable debug banner
      home: Scaffold(
        appBar: AppBar(
          title:
              Text('Chinese Learning', style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: appTheme.black900,
        ),
        body: Container(
          color: appTheme.gray90001,
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: MultipleChoiceQuestion(),
          ),
        ),
      ),
    );
  }
}

class MultipleChoiceQuestion extends StatefulWidget {
  @override
  _MultipleChoiceQuestionState createState() => _MultipleChoiceQuestionState();
}

class _MultipleChoiceQuestionState extends State<MultipleChoiceQuestion> {
  int currentQuestionIndex = 0;
  String? selectedAnswer;

  List<Question> questions = [
    Question(
      question: 'How do you say "Hello" in Chinese?',
      options: ['你好', '谢谢', '再见', '请'],
      correctAnswer: '你好',
    ),
    Question(
      question: 'How do you say "Thank you" in Chinese?',
      options: ['你好', '谢谢', '再见', '请'],
      correctAnswer: '谢谢',
    ),
    Question(
      question: 'How do you say "Goodbye" in Chinese?',
      options: ['你好', '谢谢', '再见', '请'],
      correctAnswer: '再见',
    ),
  ];

  void checkAnswer(String option) {
    setState(() {
      selectedAnswer = option;
    });
    if (option == questions[currentQuestionIndex].correctAnswer) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Correct!')),
      );
      Future.delayed(Duration(seconds: 1), () {
        setState(() {
          selectedAnswer = null;
          if (currentQuestionIndex < questions.length - 1) {
            currentQuestionIndex++;
          } else {
            // All questions answered correctly
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title:
                      Text('Well done!', style: TextStyle(color: Colors.green)),
                  content: Text('You got all the answers correct.',
                      style: TextStyle(color: Colors.green)),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child:
                          Text('Close', style: TextStyle(color: Colors.black)),
                    ),
                  ],
                );
              },
            );
          }
        });
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Try again!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Question currentQuestion = questions[currentQuestionIndex];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.question,
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          SizedBox(height: 20),
          ...currentQuestion.options.map((option) => ElevatedButton(
                onPressed: () => checkAnswer(option),
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedAnswer == null
                      ? null
                      : option == currentQuestion.correctAnswer
                          ? (option == selectedAnswer ? Colors.green : null)
                          : (option == selectedAnswer ? Colors.red : null),
                ),
                child: Text(option),
              )),
        ],
      ),
    );
  }
}

class Question {
  final String question;
  final List<String> options;
  final String correctAnswer;

  Question({
    required this.question,
    required this.options,
    required this.correctAnswer,
  });
}
