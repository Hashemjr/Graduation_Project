import 'package:flutter/material.dart';
import 'package:chineasy/presentation/courses/Lesson_Temp4/widgets/WordCard_widget.dart';

class SentenceBuildingScreen extends StatefulWidget {
  @override
  _SentenceBuildingScreenState createState() => _SentenceBuildingScreenState();
}

class _SentenceBuildingScreenState extends State<SentenceBuildingScreen> {
  final List<String> words = ['我', '是', '学生', '你', '好吗'];
  final List<String> sentence = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sentence Building'),
      ),
      body: Column(
        children: [
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
                color: const Color.fromARGB(255, 71, 54, 54),
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
          )
        ],
      ),
    );
  }
}


