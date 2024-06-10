import 'package:chineasy/presentation/courses/Lesson_Temp4/lesson_temp4.dart';
import 'package:chineasy/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class NumberQuizScreen extends StatefulWidget {
  @override
  _NumberQuizScreenState createState() => _NumberQuizScreenState();
}

class _NumberQuizScreenState extends State<NumberQuizScreen> with SingleTickerProviderStateMixin {
  final List<Map<String, String>> allQuestions = [
    {'question': 'What is "一" in English?', 'answer': 'One'},
    {'question': 'What is "二" in English?', 'answer': 'Two'},
    {'question': 'What is "三" in English?', 'answer': 'Three'},
    {'question': 'What is "四" in English?', 'answer': 'Four'},
    {'question': 'What is "五" in English?', 'answer': 'Five'},
    {'question': 'What is "六" in English?', 'answer': 'Six'},
    {'question': 'What is "七" in English?', 'answer': 'Seven'},
    {'question': 'What is "八" in English?', 'answer': 'Eight'},
    {'question': 'What is "九" in English?', 'answer': 'Nine'},
    {'question': 'What is "十" in English?', 'answer': 'Ten'},
    {'question': 'What is "十一" in English?', 'answer': 'Eleven'},
    {'question': 'What is "十二" in English?', 'answer': 'Twelve'},
    {'question': 'What is "十三" in English?', 'answer': 'Thirteen'},
    {'question': 'What is "十四" in English?', 'answer': 'Fourteen'},
    {'question': 'What is "十五" in English?', 'answer': 'Fifteen'},
    {'question': 'What is "十六" in English?', 'answer': 'Sixteen'},
    {'question': 'What is "十七" in English?', 'answer': 'Seventeen'},
    {'question': 'What is "十八" in English?', 'answer': 'Eighteen'},
    {'question': 'What is "十九" in English?', 'answer': 'Nineteen'},
    {'question': 'What is "二十" in English?', 'answer': 'Twenty'},
  ];

  late List<Map<String, String>> questions;
  int score = 0;
  int currentQuestionIndex = 0;
  String? selectedAnswer;
  List<String?> userAnswers = [];
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  List<String> options = [];

  @override
  void initState() {
    super.initState();
    questions = _getRandomQuestions();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    )..forward();
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    generateOptions();
  }

  List<Map<String, String>> _getRandomQuestions() {
    List<Map<String, String>> randomQuestions = List.from(allQuestions)..shuffle();
    return randomQuestions.take(8).toList();
  }

  void generateOptions() {
    var correctAnswer = questions[currentQuestionIndex]['answer'];
    var incorrectAnswers = allQuestions
        .where((q) => q['answer'] != correctAnswer)
        .map((q) => q['answer']!)
        .toList();
    incorrectAnswers.shuffle();
    options = (incorrectAnswers.take(3).toList()..add(correctAnswer!))..shuffle();
  }

  void checkAnswer() {
    if (selectedAnswer == questions[currentQuestionIndex]['answer']) {
      setState(() {
        score++;
      });
    }
    userAnswers.add(selectedAnswer);
    setState(() {
      selectedAnswer = null;
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
        generateOptions();
        _controller.reset();
        _controller.forward();
      } else {
        _showCompletionDialog(context);
      }
    });
  }

void _showCompletionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor:Color.fromARGB(255, 86, 6, 0),
        title: Text('Quiz Completed!', style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255))),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Your score is $score out of ${questions.length}.', style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255))),
            SizedBox(height: 10),
            ...List.generate(
              questions.length,
              (index) => Text(
                'Your Answer: ${userAnswers[index]}                  Correct Answer: ${questions[index]['answer']}',
                style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              resetQuiz();
            },
            child: Text('Repeat Quiz', style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255))),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Lessontemp4()),
              );
            },
            child: Text('Next Lesson', style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255))),
          ),
        ],
      ),
    );
  }
  void resetQuiz() {
    setState(() {
      score = 0;
      currentQuestionIndex = 0;
      selectedAnswer = null;
      userAnswers = [];
      questions = _getRandomQuestions();
      generateOptions();
      _controller.reset();
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentQuestionIndex];
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [appTheme.black900, appTheme.gray90001],
            ),
          ),
          child: SlideTransition(
            position: _offsetAnimation,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60, bottom: 200),
                    child: Text(
                      'Number Quiz',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    currentQuestion['question']!,
                    style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  ...options.map((option) => RadioListTile<String?>(
                        fillColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.selected)) {
                              return Colors.white; // Color when selected
                            }
                            return Color.fromARGB(255, 255, 255, 255); // Default color (white) when not selected
                          },
                        ),
                        title: Text(option,
                            style: TextStyle(fontFamily: 'Lato',fontSize: 20, color: Colors.white)),
                        value: option,
                        groupValue: selectedAnswer,
                        onChanged: (value) {
                          setState(() {
                            selectedAnswer = value;
                          });
                        },
                        activeColor: Color.fromARGB(255, 255, 255, 255), // Change active color
                        controlAffinity:
                            ListTileControlAffinity.trailing, 
                      )),
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: checkAnswer,
                    child: Padding(
                      padding: const EdgeInsets.only(top:5,bottom: 5,left: 80,right: 80),
                      child: Text(
                        'Check Answer',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*class DragAndDropNumberGame extends StatefulWidget {
  @override
  _DragAndDropNumberGameState createState() => _DragAndDropNumberGameState();
}

class _DragAndDropNumberGameState extends State<DragAndDropNumberGame> {
  final List<String> numbers = ['一', '二', '三', '四', '五', '六', '七', '八', '九', '十'];
  final List<String> englishNumbers = ['One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten'];
  final Map<String, String> correctPairs = {
    '一': 'One',
    '二': 'Two',
    '三': 'Three',
    '四': 'Four',
    '五': 'Five',
    '六': 'Six',
    '七': 'Seven',
    '八': 'Eight',
    '九': 'Nine',
    '十': 'Ten',
  };

  Map<String, bool> score = {};
  List<String> randomizedNumbers = [];
  List<String> randomizedEnglishNumbers = [];

  @override
  void initState() {
    super.initState();
    resetGame();
  }

  void resetGame() {
  setState(() {
    score = {};
    randomizedNumbers = (List<String>.from(numbers)..shuffle(Random())).take(5).toList();
    randomizedEnglishNumbers = (List<String>.from(englishNumbers)..shuffle(Random())).take(5).toList();
  });
}

  void checkGame() {
    bool allCorrect = true;
    correctPairs.forEach((key, value) {
      if (randomizedNumbers.contains(key) && randomizedEnglishNumbers.contains(value) && score[key] != true) {
        allCorrect = false;
      }
    });

    if (allCorrect) {
      _showCompletionDialog(context);
    } else {
      _showWrongAnswerDialog(context);
    }
  }

  void _showCompletionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Congratulations!', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
        content: Text('You matched all the numbers correctly!', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              resetGame();
            },
            child: Text('Play Again', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
          ),
        ],
      ),
    );
  }

  void _showWrongAnswerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Incorrect!', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
        content: Text('Some matches are incorrect. Try again.', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('OK', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drag and Drop Number Game'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.5, 0),
            end: Alignment(0.5, 1),
            colors: [appTheme.black900, appTheme.gray90001],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: randomizedNumbers.length,
                itemBuilder: (context, index) {
                  return Draggable<String>(
                    data: randomizedNumbers[index],
                    child: Card(
                      child: ListTile(
                        title: Text(randomizedNumbers[index]),
                      ),
                    ),
                    feedback: Material(
                      child: Container(
                        color: Colors.blue,
                        child: Text(randomizedNumbers[index], style: TextStyle(color: Colors.white, fontSize: 24)),
                      ),
                    ),
                    childWhenDragging: Container(),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: randomizedEnglishNumbers.length,
                itemBuilder: (context, index) {
                  return DragTarget<String>(
                    builder: (context, candidateData, rejectedData) {
                      return Card(
                        color: score[randomizedNumbers[index]] == true ? Colors.green : Colors.white,
                        child: ListTile(
                          title: Text(randomizedEnglishNumbers[index]),
                        ),
                      );
                    },
                    onWillAccept: (data) => correctPairs[data!] == randomizedEnglishNumbers[index],
                    onAccept: (data) {
                      setState(() {
                        if (correctPairs[data] == randomizedEnglishNumbers[index]) {
                          score[data] = true;
                        } else {
                          score[data] = false;
                        }
                      });
                    },
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: checkGame,
                  child: Text('Check', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 20.0)),
                ),
                ElevatedButton(
                  onPressed: resetGame,
                  child: Text('Reset', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 20.0)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}*/

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Chinese Number Quiz and Game')),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.5, 0),
            end: Alignment(0.5, 1),
            colors: [appTheme.black900, appTheme.gray90001],
          ),
        ),
        child: Column(
          children: [
            Expanded(child: NumberQuizScreen()),
            //Expanded(child: DragAndDropNumberGame()),
          ],
        ),
      ),
    ),
  ));
}
