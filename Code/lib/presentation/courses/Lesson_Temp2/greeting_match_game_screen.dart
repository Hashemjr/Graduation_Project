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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting Match Game'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: greetings.length,
              itemBuilder: (context, index) {
                return DragTarget<String>(
                  builder: (context, candidateData, rejectedData) {
                    return Card(
                      child: Center(
                        child: Text(greetings[index]),
                      ),
                    );
                  },
                  onAccept: (data) {
                    setState(() {
                      selectedPairs[greetings[index]] = data;
                    });
                  },
                );
              },
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: translations.length,
              itemBuilder: (context, index) {
                return Draggable<String>(
                  data: translations[index],
                  feedback: Material(
                    child: Card(
                      child: Center(
                        child: Text(translations[index]),
                      ),
                    ),
                  ),
                  childWhenDragging: Card(
                    child: Center(
                      child: Text(
                        translations[index],
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  child: Card(
                    child: Center(
                      child: Text(translations[index]),
                    ),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              bool isCorrect = true;
              selectedPairs.forEach((key, value) {
                if (correctPairs[key] != value) {
                  isCorrect = false;
                }
              });

              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text(isCorrect ? 'Correct!' : 'Incorrect'),
                  content: Text(isCorrect
                      ? 'Congratulations, you matched all greetings correctly!'
                      : 'Some matches are incorrect. Try again.'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('OK'),
                    ),
                  ],
                ),
              );
            },
            child: Text('Check Answers'),
          ),
        ],
      ),
    );
  }
}
