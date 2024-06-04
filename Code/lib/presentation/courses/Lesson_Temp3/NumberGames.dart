import 'package:flutter/material.dart';

class NumberQuizScreen extends StatelessWidget {
  final List<Map<String, String>> questions = [
    {'question': 'What is "一" in English?', 'answer': 'One'},
    {'question': 'What is "二" in English?', 'answer': 'Two'},
    // Add more questions as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Quiz'),
      ),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          var question = questions[index];
          return Card(
            child: ListTile(
              title: Text(question['question']!),
              trailing: Text(question['answer']!),
            ),
          );
        },
      ),
    );
  }
}

class DragAndDropNumberGame extends StatefulWidget {
  @override
  _DragAndDropNumberGameState createState() => _DragAndDropNumberGameState();
}

class _DragAndDropNumberGameState extends State<DragAndDropNumberGame> {
  final List<String> numbers = ['一', '二', '三', '四'];
  final List<String> englishNumbers = ['One', 'Two', 'Three', 'Four'];
  final Map<String, String> correctPairs = {
    '一': 'One',
    '二': 'Two',
    '三': 'Three',
    '四': 'Four',
  };

  Map<String, bool> score = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drag and Drop Number Game'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: numbers.length,
              itemBuilder: (context, index) {
                return Draggable<String>(
                  data: numbers[index],
                  child: Card(
                    child: ListTile(
                      title: Text(numbers[index]),
                    ),
                  ),
                  feedback: Material(
                    child: Container(
                      color: Colors.blue,
                      child: Text(numbers[index], style: TextStyle(color: Colors.white, fontSize: 24)),
                    ),
                  ),
                  childWhenDragging: Container(),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: englishNumbers.length,
              itemBuilder: (context, index) {
                return DragTarget<String>(
                  builder: (context, candidateData, rejectedData) {
                    return Card(
                      child: ListTile(
                        title: Text(englishNumbers[index]),
                      ),
                    );
                  },
                  onAccept: (data) {
                    setState(() {
                      score[data] = true;
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
