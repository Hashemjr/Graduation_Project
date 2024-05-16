import 'package:chineasy/theme/theme_helper.dart';
import 'package:flutter/material.dart';

class MatchingExercise extends StatefulWidget {
  @override
  _MatchingExerciseState createState() => _MatchingExerciseState();
}

class _MatchingExerciseState extends State<MatchingExercise> {
  List<String> words = ['Hello', 'Thank you', 'Goodbye', 'Please'];
  List<String> translations = ['你好', '谢谢', '再见', '请'];
  Map<String, String?> selectedTranslations = {}; // Store selected translations
  Map<String, String> correctTranslations = {
    'Hello': '你好',
    'Thank you': '谢谢',
    'Goodbye': '再见',
    'Please': '请',
  };
  bool submitted = false;

  @override
  void initState() {
    super.initState();
    words.shuffle();
    translations.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Matching Exercise',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false, // Remove the back button
        backgroundColor: appTheme.black900, // Changed the background color
      ),
      body: Container(
        color: appTheme.gray90001,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Match the words with their Chinese translations',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: words.length,
                  itemBuilder: (context, index) {
                    final word = words[index];
                    final selectedTranslation = selectedTranslations[word];
                    final isCorrect =
                        selectedTranslation == correctTranslations[word];

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          word,
                          style: TextStyle(
                            fontSize: 18,
                            color: submitted
                                ? (isCorrect ? Colors.green : Colors.red)
                                : Colors.white,
                          ),
                        ),
                        DropdownButton<String>(
                          value: selectedTranslation,
                          onChanged: submitted
                              ? null
                              : (String? newValue) {
                                  setState(() {
                                    selectedTranslations[word] = newValue;
                                  });
                                },
                          items: translations
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(color: Color(0XFFE06555)),
                              ),
                            );
                          }).toList(),
                        ),
                        SizedBox(height: 20),
                      ],
                    );
                  },
                ),
              ),
              if (submitted && !_allCorrect())
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      submitted = false; // Mark as not submitted
                      selectedTranslations.clear();
                      words.shuffle();
                      translations.shuffle();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.lightBlue, // Button background color
                  ),
                  child:
                      Text('Try Again', style: TextStyle(color: Colors.white)),
                ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    submitted = true; // Mark as submitted
                  });
                  _checkAnswers();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen, // Button background color
                ),
                child: Text(
                  'Check Answers',
                  style: TextStyle(color: Colors.white), // Button text color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _allCorrect() {
    for (String word in words) {
      if (selectedTranslations[word] != correctTranslations[word]) {
        return false;
      }
    }
    return true;
  }

  void _checkAnswers() {
    if (_allCorrect()) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Well done!', style: TextStyle(color: Colors.green)),
            content: Text('You got all the answers correct.',
                style: TextStyle(color: Colors.green)),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Close', style: TextStyle(color: Colors.black)),
              ),
            ],
          );
        },
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Try again!')),
      );
    }
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MatchingExercise(),
  ));
}
