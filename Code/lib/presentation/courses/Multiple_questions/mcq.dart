import 'package:chineasy/theme/theme_helper.dart'; // Assuming this is your custom theme file
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
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [appTheme.black900, appTheme.gray90001],
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 60,bottom: 20),
                  child: Text(
                    'Chinese Test',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 40, // Adjust the font size as needed
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: MultipleChoiceQuestion(),
                ),
              ),
            ],
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
  int score = 0;
  late List<String?> selectedAnswers;

  List<Question> questions = [
    Question(
      question: '1. How do you say "Hello" in Chinese?',
      options: ['你好', '谢谢', '再见', '请'],
      correctAnswer: '你好',
    ),
    Question(
      question: '2. How do you say "Thank you" in Chinese?',
      options: ['你好', '谢谢', '再见', '请'],
      correctAnswer: '谢谢',
    ),
    Question(
      question: '3. How do you say "Goodbye" in Chinese?',
      options: ['你好', '谢谢', '再见', '请'],
      correctAnswer: '再见',
    ),
    Question(
      question: '4. How do you say "Please" in Chinese?',
      options: ['你好', '谢谢', '再见', '请'],
      correctAnswer: '请',
    ),
    Question(
      question: '5. How do you say "Yes" in Chinese?',
      options: ['是的', '不', '谢谢', '再见'],
      correctAnswer: '是的',
    ),
    Question(
      question: '6. How do you say "No" in Chinese?',
      options: ['是的', '不', '谢谢', '再见'],
      correctAnswer: '不',
    ),
    Question(
      question: '7. How do you say "Excuse me" in Chinese?',
      options: ['对不起', '不', '谢谢', '再见'],
      correctAnswer: '对不起',
    ),
    Question(
      question: '8. How do you say "I\'m sorry" in Chinese?',
      options: ['对不起', '不', '谢谢', '再见'],
      correctAnswer: '对不起',
    ),
    Question(
      question: '9. How do you say "How are you?" in Chinese?',
      options: ['你好', '你好吗', '谢谢', '再见'],
      correctAnswer: '你好吗',
    ),
    Question(
      question: '10. How do you say "I love you" in Chinese?',
      options: ['是的', '我爱你', '谢谢', '再见'],
      correctAnswer: '我爱你',
    ),
    Question(
      question: '11. How do you say "I love you" in Chinese?',
      options: ['是的', '我爱你', '谢谢', '再见'],
      correctAnswer: '我爱你',
    ),
    Question(
      question: '12. What is the Chinese word for "one"?',
      options: ['一', '二', '三', '四'],
      correctAnswer: '一',
    ),
    Question(
      question: '13. What is the Chinese word for "two"?',
      options: ['一', '二', '三', '四'],
      correctAnswer: '二',
    ),
    Question(
      question: '14. What is the Chinese word for "three"?',
      options: ['一', '二', '三', '四'],
      correctAnswer: '三',
    ),
    Question(
      question: '15. What is the Chinese word for "four"?',
      options: ['一', '二', '三', '四'],
      correctAnswer: '四',
    ),
    Question(
      question: '16. What is the Chinese word for "five"?',
      options: ['五', '六', '七', '八'],
      correctAnswer: '五',
    ),
    Question(
      question: '17. What is the Chinese word for "seven"?',
      options: ['七', '八', '九', '十'],
      correctAnswer: '七',
    ),
    Question(
      question: '18. What is the Chinese word for "eight"?',
      options: ['八', '九', '十', '百'],
      correctAnswer: '八',
    ),
    Question(
      question: '19. What is the Chinese word for "nine"?',
      options: ['九', '十', '百', '千'],
      correctAnswer: '九',
    ),
    Question(
      question: '20. What is the Chinese word for "ten"?',
      options: ['十', '百', '千', '万'],
      correctAnswer: '十',
    ),
  ];

  @override
  void initState() {
    super.initState();
    selectedAnswers = List<String?>.filled(questions.length, null);
  }

  void checkAnswer(String option, int questionIndex) {
    setState(() {
      if (selectedAnswers[questionIndex] == null) {
        selectedAnswers[questionIndex] = option;
        if (option == questions[questionIndex].correctAnswer) {
          score++;
        }
      }
    });
  }

  void restartQuiz() {
    setState(() {
      score = 0;
      selectedAnswers = List<String?>.filled(questions.length, null);
    });
  }

  void finishQuiz() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Quiz Result',
            style: TextStyle(fontSize: 16), // Increased font size
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Score: $score/${questions.length}',
                style: TextStyle(fontSize: 20), // Increased font size
              ),
              SizedBox(height: 2),
              Text(
                'Answers:',
                style: TextStyle(
                    fontSize: 14), // Increased font size for "Answers:"
              ),
              for (int i = 0; i < questions.length; i++)
                Text(
                  '${i + 1}. ${questions[i].correctAnswer}',
                  style: TextStyle(
                    color: selectedAnswers[i] == questions[i].correctAnswer
                        ? Colors.green
                        : Colors.red,
                    fontSize: 18, // Increased font size
                  ),
                ),
            ],
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                restartQuiz();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(
                    255, 225, 189, 30), // Set button color to orange
              ),
              child: Text(
                'Restart Quiz',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Set button color to red
              ),
              child: Text(
                'Finish',
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: questions.length,
              itemBuilder: (context, index) {
                Question currentQuestion = questions[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      currentQuestion.question,
                      style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    for (String option in currentQuestion.options)
                      ElevatedButton(
                        onPressed: selectedAnswers[index] == null
                            ? () => checkAnswer(option, index)
                            : null,
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.disabled)) {
                                if (selectedAnswers[index] == option) {
                                  return Colors.grey.withOpacity(
                                      0.5); // Shadow color for selected option
                                } else {
                                  return Colors
                                      .white; // Default color for unselected options
                                }
                              }
                              return Color.fromARGB(
                                  255, 255, 255, 255); // Default button color
                            },
                          ),
                        ),
                        child: Text(
                          option,
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    SizedBox(height: 5),
                  ],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: finishQuiz,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Set button color to red
                  minimumSize: Size(200, 50), // Set minimum button size
                ),
                child: Text(
                  'Finish Quiz',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white), // Set text size and color
                ),
              ),
            ],
          ),
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
