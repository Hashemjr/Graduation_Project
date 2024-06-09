import 'package:chineasy/presentation/courses/Lesson_Temp4/PhraseBuilderScreen.dart';
import 'package:chineasy/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:chineasy/presentation/courses/Lesson_Temp4/widgets/WordCard_widget.dart';
import 'dart:math';

class SentenceBuildingScreen extends StatefulWidget {
  @override
  _SentenceBuildingScreenState createState() => _SentenceBuildingScreenState();
}

class _SentenceBuildingScreenState extends State<SentenceBuildingScreen> {
  final FlutterTts flutterTts = FlutterTts();
  final List<List<String>> sentences = [
    ['我', '是', '学生'], // I am a student
    ['你', '好吗'], // How are you?
    ['我', '喜欢', '学习'], // I like to study
    ['这是', '我的', '朋友'], // This is my friend
    ['天气', '很好'] // The weather is good
  ];
  final List<String> sentenceHints = [
    'I am a student',
    'How are you?',
    'I like to study',
    'This is my friend',
    'The weather is good'
  ];
  List<String> words = [];
  List<String> sentence = [];
  int currentSentenceIndex = 0;
  Color targetColor = Color.fromARGB(122, 244, 67, 54);
  String hintText = '';
  int score = 0;
  bool usedHint = false;

  @override
  void initState() {
    super.initState();
    _resetGame();
  }

  void checkSentence() {
    String builtSentence = sentence.join(' ');
    String correctSentence = sentences[currentSentenceIndex].join(' ');

    if (builtSentence == correctSentence) {
      setState(() {
        targetColor = Color.fromARGB(159, 76, 175, 79);
      });

      Future.delayed(Duration(seconds: 1), () {
        setState(() {
          currentSentenceIndex++;
          if (currentSentenceIndex >= sentences.length) {
            _showCompletionDialog(context);
          } else {
            _resetGame();
          }
        });
      });

      setState(() {
        score += usedHint ? 5 : 10;
      });
    } else {
      setState(() {
        targetColor = Color.fromARGB(122, 244, 67, 54);
        words.addAll(sentence);
        sentence.clear();
      });
    }
  }

  void _resetGame() {
    setState(() {
      words = List.from(sentences[currentSentenceIndex]);
      words.shuffle();
      sentence.clear();
      targetColor = Color.fromARGB(122, 244, 67, 54);
      hintText = '';
      usedHint = false;
    });
  }

  void _showCompletionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Congratulations!', style: TextStyle(color: Colors.black, fontSize: 20)),
        content: Text('You have completed all sentences. Your score is $score.', style: TextStyle(color: Colors.black, fontSize: 20)),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              setState(() {
                score = 0;
                currentSentenceIndex = 0;
                _resetGame();
              });
            },
            child: Text('Restart', style: TextStyle(color: Colors.black, fontSize: 20)),
          ),
        ],
      ),
    );
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
              padding: const EdgeInsets.only(top: 60.0, bottom: 40),
              child: Text(
                'Sentence Building',
                style: TextStyle(fontSize: 38, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Score: $score',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Hint: $hintText',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemCount: words.length,
                itemBuilder: (context, index) {
                  return Draggable<String>(
                    data: words[index],
                    child: WordCard(word: words[index]),
                    feedback: WordCard(word: words[index], isDragging: true),
                    childWhenDragging: WordCard(word: words[index], isDragging: true),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: 100,
                color: targetColor,
                child: DragTarget<String>(
                  builder: (context, candidateData, rejectedData) {
                    return Center(
                      child: Text(
                        sentence.join(' '),
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    );
                  },
                  onAccept: (data) {
                    setState(() {
                      sentence.add(data);
                      words.remove(data);
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                onPressed: checkSentence,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Check', style: TextStyle(color: Colors.black, fontSize: 20)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: () {
                  _resetGame();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Reset', style: TextStyle(color: Colors.black, fontSize: 20)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    hintText = sentenceHints[currentSentenceIndex];
                    usedHint = true;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Hint', style: TextStyle(color: Colors.black, fontSize: 20)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
