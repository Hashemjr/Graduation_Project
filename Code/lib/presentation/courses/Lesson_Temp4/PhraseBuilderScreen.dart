import 'package:flutter/material.dart';
import 'package:chineasy/presentation/courses/Lesson_Temp4/widgets/WordCard_widget.dart';

class PhraseBuilderScreen extends StatefulWidget {
  @override
  _PhraseBuilderScreenState createState() => _PhraseBuilderScreenState();
}

class _PhraseBuilderScreenState extends State<PhraseBuilderScreen> {
  final List<String> words = ['我', '是', '学生', '你', '好吗'];
  final List<String> sentence = [];
  int score = 0;

  void checkSentence() {
    String builtSentence = sentence.join(' ');
    if (builtSentence == '我是学生' || builtSentence == '你好吗') {
      setState(() {
        score += 10;
        sentence.clear();
      });
    } else {
      setState(() {
        sentence.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrase Builder'),
      ),
      body: Column(
        children: [
          Text(
            'Score: $score',
            style: TextStyle(fontSize: 24),
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
          DragTarget<String>(
            builder: (context, candidateData, rejectedData) {
              return Container(
                height: 100,
                color: const Color.fromARGB(255, 112, 84, 84),
                child: Center(
                  child: Text(
                    sentence.join(' '),
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              );
            },
            onAccept: (data) {
              setState(() {
                sentence.add(data);
                words.remove(data);
                if (sentence.length == 3) {
                  checkSentence();
                }
              });
            },
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                words.addAll(sentence);
                sentence.clear();
              });
            },
            child: Text('Reset'),
          ),
        ],
      ),
    );
  }
}
