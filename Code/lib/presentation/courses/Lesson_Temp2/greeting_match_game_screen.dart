import 'package:chineasy/presentation/courses/Lesson_Temp3/lesson_temp3.dart';
import 'package:chineasy/theme/theme_helper.dart';
import 'package:flutter/material.dart';

class GreetingMatchGameScreen extends StatefulWidget {
  @override
  _GreetingMatchGameScreenState createState() => _GreetingMatchGameScreenState();
}

class _GreetingMatchGameScreenState extends State<GreetingMatchGameScreen> {
  final List<String> greetings = ['你好', '早上好', '晚上好', '再见'];
  final List<String> translations = ['Hello', 'Good morning', 'Good evening', 'Goodbye'];
  final Map<String, String> correctPairs = {
    '你好': 'Hello',
    '早上好': 'Good morning',
    '晚上好': 'Good evening',
    '再见': 'Goodbye',
  };
  Map<String, String> selectedPairs = {};
  List<String> remainingGreetings = [];
  List<String> remainingTranslations = [];
  bool showResults = false;

  @override
  void initState() {
    super.initState();
    resetGame();
  }

  void resetGame() {
    setState(() {
      selectedPairs.clear();
      remainingGreetings = List.from(greetings);
      remainingTranslations = List.from(translations);
      showResults = false;
    });
  }

  void _checkAnswers() {
    setState(() {
      showResults = true;
    });

    bool allCorrect = true;
    selectedPairs.forEach((key, value) {
      if (correctPairs[key] != value) {
        allCorrect = false;
      }
    });

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color.fromARGB(255, 94, 0, 0),
        title: Text(
          allCorrect ? 'Congratulations!' : 'Try Again!',
          style: TextStyle(color: Colors.white),
        ),
        content: Text(
          allCorrect
              ? 'You matched all greetings correctly!'
              : 'Some matches are incorrect. Would you like to try again or go to the next lesson?',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          TextButton(
            onPressed: () {
              resetGame();
              Navigator.pop(context);
            },
            child: Text('Play Again', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Lessontemp3()),
              );
            },
            child: Text('Next Lesson', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Padding(
              padding: const EdgeInsets.only(top: 60, bottom: 20),
              child: Text(
                'Greeting Match Game',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemCount: remainingGreetings.length,
                itemBuilder: (context, index) {
                  return DragTarget<String>(
                    builder: (context, candidateData, rejectedData) {
                      return Container(
                        width: 80,
                        height: 80,
                        child: Card(
                          color: showResults && selectedPairs[remainingGreetings[index]] != null
                              ? correctPairs[remainingGreetings[index]] == selectedPairs[remainingGreetings[index]]
                                  ? Colors.green
                                  : Colors.red
                              : Color.fromARGB(255, 136, 0, 0),
                          child: Center(
                            child: Text(
                              remainingGreetings[index],
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      );
                    },
                    onWillAccept: (data) => selectedPairs[remainingGreetings[index]] == null,
                    onAccept: (data) {
                      setState(() {
                        selectedPairs[remainingGreetings[index]] = data;
                        remainingTranslations.remove(data);
                      });
                    },
                  );
                },
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: remainingTranslations.length,
                itemBuilder: (context, index) {
                  return Draggable<String>(
                    data: remainingTranslations[index],
                    feedback: Material(
                      color: Colors.transparent,
                      child: Container(
                        width: 90,
                        height: 90,
                        child: Card(
                          color: Color.fromARGB(255, 136, 0, 0),
                          child: Center(
                            child: Text(
                              remainingTranslations[index],
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    childWhenDragging: Container(
                      width: 80,
                      height: 80,
                      child: Card(
                        color: Color.fromARGB(255, 29, 0, 0),
                        child: Center(
                          child: Text(
                            remainingTranslations[index],
                            style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    child: Container(
                      width: 80,
                      height: 80,
                      child: Card(
                        color: Color.fromARGB(255, 52, 0, 0),
                        child: Center(
                          child: Text(
                            remainingTranslations[index],
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 255, 255, 255), // background
                  onPrimary: const Color.fromARGB(255, 0, 0, 0), // foreground
                ),
                onPressed: _checkAnswers,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                    left: 60,
                    right: 60,
                  ),
                  child: Text(
                    'Check Answers',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
  home: GreetingMatchGameScreen(),
  theme: ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.dark().copyWith(
      primary: Colors.blue,
      secondary: Colors.blueAccent,
    ),
  ),
));
