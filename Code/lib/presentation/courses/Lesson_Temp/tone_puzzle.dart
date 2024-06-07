import 'package:flutter/material.dart';

class PinyinQuiz extends StatefulWidget {
  @override
  _PinyinQuizState createState() => _PinyinQuizState();
}

class _PinyinQuizState extends State<PinyinQuiz> {
  final List<Map<String, String>> questions = [
    {'syllable': 'mā', 'correctAnswer': 'First tone'},
    {'syllable': 'má', 'correctAnswer': 'Second tone'},
    {'syllable': 'mǎ', 'correctAnswer': 'Third tone'},
    {'syllable': 'mà', 'correctAnswer': 'Fourth tone'},
  ];

  String? selectedTone;
  int currentQuestionIndex = 0;
  int score = 0;
  List<int> wrongAnswersIndices = [];

  bool get allCorrect => score == questions.length;

  void checkAnswer(String answer) {
    if (questions[currentQuestionIndex]['correctAnswer'] == answer) {
      setState(() {
        score++;
      });
    } else {
      setState(() {
        wrongAnswersIndices.add(currentQuestionIndex);
      });
    }
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
        selectedTone = null;
      } else {
        _showScoreDialog();
      }
    });
  }

  void _showScoreDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Quiz Completed!',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Your score is $score out of ${questions.length}',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            if (wrongAnswersIndices.isNotEmpty) ...[
              SizedBox(height: 10),
              Text(
                'You got the following questions wrong:',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  color: Colors.redAccent,
                ),
              ),
              ...wrongAnswersIndices.map((index) {
                final wrongQuestion = questions[index];
                return ListTile(
                  title: Text(
                    'Question: ${wrongQuestion['syllable']}',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    'Correct Answer: ${wrongQuestion['correctAnswer']}',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      color: Colors.redAccent,
                    ),
                  ),
                );
              }).toList(),
            ]
          ],
        ),
        actions: [
          if (allCorrect)
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop(); // Added to go back to Lesson_temp
              },
              child: Text(
                'Done',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              setState(() {
                score = 0;
                currentQuestionIndex = 0;
                wrongAnswersIndices.clear();
              });
            },
            child: Text(
              'Restart',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String currentSyllable = questions[currentQuestionIndex]['syllable']!;
    final double cardPadding = MediaQuery.of(context).size.width * 0.02;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pinyin Tone Quiz',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(cardPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select the correct tone for:',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Text(
              currentSyllable,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            ...['First tone', 'Second tone', 'Third tone', 'Fourth tone']
                .map((tone) {
              return RadioListTile<String>(
                title: Text(
                  tone,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                value: tone,
                groupValue: selectedTone,
                onChanged: (value) {
                  setState(() {
                    selectedTone = value;
                  });
                },
                activeColor: Colors.blue, // Change active color
                controlAffinity:
                    ListTileControlAffinity.trailing, // Move the radio button to the end
              );
            }).toList(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: selectedTone == null
                  ? null
                  : () {
                      checkAnswer(selectedTone!);
                    },
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Increased border radius
                ),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                elevation: 5, // Added elevation
              ),
              child: Text(
                'Submit',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PinyinQuiz(),
  ));
}