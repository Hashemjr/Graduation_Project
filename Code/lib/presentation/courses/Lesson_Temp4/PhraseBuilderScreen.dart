import 'package:chineasy/presentation/courses/Lesson_Temp4/PhrasebookScreen.dart';
import 'package:chineasy/presentation/courses/course_screen.dart';
import 'package:chineasy/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:chineasy/presentation/courses/Lesson_Temp4/widgets/WordCard_widget.dart';

class PhraseBuilderScreen extends StatefulWidget {
  @override
  _PhraseBuilderScreenState createState() => _PhraseBuilderScreenState();
}

class _PhraseBuilderScreenState extends State<PhraseBuilderScreen> {
  final List<String> phrases = [
    '我是学生',
    '你好吗',
    '谢谢你',
    '早上好',
    '晚上好',
    '再见'
  ];
  final List<List<String>> wordsList = [
    ['我', '是', '学生'],
    ['你', '好', '吗'],
    ['谢谢', '你'],
    ['早上', '好'],
    ['晚上', '好'],
    ['再见']
  ];

  final List<String> hints = [
    'I am a student',
    'How are you?',
    'Thank you',
    'Good morning',
    'Good evening',
    'Goodbye'
  ];

  List<String> currentWords = [];
  List<String> currentPhrase = [];
  int currentPhraseIndex = 0;
  int score = 0;
  Color targetColor = Color.fromARGB(122, 244, 67, 54);
  String hintText = '';

  @override
  void initState() {
    super.initState();
    _loadNextPhrase();
  }

  void _loadNextPhrase() {
    setState(() {
      currentWords = List.from(wordsList[currentPhraseIndex])..shuffle();
      currentPhrase.clear();
      targetColor = Color.fromARGB(122, 244, 67, 54);
      hintText = '';
    });
  }

  void checkPhrase() {
    String builtPhrase = currentPhrase.join('');
    if (builtPhrase == phrases[currentPhraseIndex]) {
      setState(() {
        score += 10;
        targetColor = Color.fromARGB(159, 76, 175, 79);
      });

      Future.delayed(Duration(seconds: 1), () {
        if (currentPhraseIndex < phrases.length - 1) {
          setState(() {
            currentPhraseIndex++;
            _loadNextPhrase();
          });
        } else {
          _showCompletionDialog(context);
        }
      });
    } else {
      setState(() {
        currentWords.addAll(currentPhrase);
        currentPhrase.clear();
        targetColor = Color.fromARGB(122, 244, 67, 54);
      });
    }
  }

  void _showCompletionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Congratulations!',
                style: TextStyle( color: const Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold,)),
        content: Text('You have completed all the phrases.',
                style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              _resetGame();
            },
            child: Text('Play Again',
                style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),)),
          ),
          TextButton(
            onPressed: () {
              // Navigate to the next level or reset the game
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CourseScreen()),
                );
            },
            child: Text('Done!!',
              style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }

  void _resetGame() {
    setState(() {
      score = 0;
      currentPhraseIndex = 0;
      _loadNextPhrase();
    });
  }

  void _showHint() {
    setState(() {
      hintText = hints[currentPhraseIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              padding: const EdgeInsets.only(top: 60.0, bottom: 20),
              child: Text(
                'Phrase Builder',
                style: TextStyle(
                  fontSize: 38,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Score: $score',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                hintText,
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemCount: currentWords.length,
                itemBuilder: (context, index) {
                  return Draggable<String>(
                    data: currentWords[index],
                    child: WordCard(word: currentWords[index]),
                    feedback: WordCard(word: currentWords[index], isDragging: true),
                    childWhenDragging: WordCard(word: currentWords[index], isDragging: true),
                  );
                },
              ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: 100,
              color: targetColor,
              child: DragTarget<String>(
                builder: (context, candidateData, rejectedData) {
                  return Center(
                    child: Text(
                      currentPhrase.join(' '),
                      style: TextStyle(fontSize: 24, color: Colors.white),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  );
                },
                onAccept: (data) {
                  setState(() {
                    currentPhrase.add(data);
                    currentWords.remove(data);
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: ElevatedButton(
                onPressed: checkPhrase,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                  child: Text(
                    'Check',
                    style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: ElevatedButton(
                onPressed: _showHint,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                  child: Text(
                    'Hint',
                    style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 30),
              child: ElevatedButton(
                onPressed: _resetGame,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                  child: Text(
                    'Reset',
                    style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
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
