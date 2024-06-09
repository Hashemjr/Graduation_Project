import 'package:chineasy/presentation/courses/Lesson_Temp4/SentenceBuildingScreen.dart';
import 'package:chineasy/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flash_card/flash_card.dart';

class PhrasebookScreen extends StatefulWidget {
  @override
  _PhrasebookScreenState createState() => _PhrasebookScreenState();
}

class _PhrasebookScreenState extends State<PhrasebookScreen> {
  final FlutterTts flutterTts = FlutterTts();

  final List<Map<String, String>> phrases = [
    {'chinese': '你好', 'pinyin': 'nǐ hǎo', 'english': 'Hello'},
    {'chinese': '谢谢', 'pinyin': 'xiè xiè', 'english': 'Thank you'},
    {'chinese': '对不起', 'pinyin': 'duì bu qǐ', 'english': 'Sorry'},
    {'chinese': '请问', 'pinyin': 'qǐng wèn', 'english': 'Excuse me'},
  ];

  void _speak(String text) async {
    await flutterTts.setLanguage("zh-CN");
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60,bottom: 40),
            child: Text(
              'Phrase Book',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: phrases.asMap().entries.map((entry) {
                  int index = entry.key;
                  Map<String, String> phrase = entry.value;
                  return Positioned(
                    top: index * 20.0,
                    child: Dismissible(
                      key: Key(phrase['chinese']!),
                      direction: DismissDirection.horizontal,
                      onDismissed: (direction) {
                        setState(() {
                          phrases.removeAt(index);
                        });
                        if (phrases.isEmpty) {
                          _showCompletionDialog(context);
                        }
                      },
                      child: _buildFlashCard(phrase),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
              child: ElevatedButton(  
                onPressed: _reset,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Reset',style: TextStyle(fontSize: 24,color: Colors.black),),
                ),
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }

  Widget _buildFlashCard(Map<String, String> phrase) {
    return FlashCard(
      frontWidget: Container(
        decoration: BoxDecoration(
          color: Color(0XFF7E0E00),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 200,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              phrase['chinese']!,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              phrase['pinyin']!,
              style: TextStyle(fontSize: 18, color: Colors.grey[400]),
            ),
            SizedBox(height: 10),
            IconButton(
              icon: Icon(Icons.volume_up),
              color: Colors.white,
              onPressed: () => _speak(phrase['chinese']!),
            ),
          ],
        ),
      ),
      backWidget: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 96, 11, 0),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 200,
        width: 300,
        child: Center(
          child: Text(
            phrase['english']!,
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
      width: 300,
      height: 400,
    );
  }

  void _showCompletionDialog(BuildContext context) {
    showDialog(
      
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor:Color.fromARGB(255, 86, 6, 0),
        title: Text(
          'Congratulations!',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        content: Text(
          'You have completed all the phrases.',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PhrasebookScreen()),
              );
            },
            child: Text(
              'Restart',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SentenceBuildingScreen()),
              );
            },
            child: Text(
              'Done',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
        ],
      ),
    );
  }

  void _reset() {
  setState(() {
    phrases.clear();
    phrases.addAll([
      {'chinese': '你好', 'pinyin': 'nǐ hǎo', 'english': 'Hello'},
      {'chinese': '谢谢', 'pinyin': 'xiè xiè', 'english': 'Thank you'},
      {'chinese': '对不起', 'pinyin': 'duì bu qǐ', 'english': 'Sorry'},
      {'chinese': '请问', 'pinyin': 'qǐng wèn', 'english': 'Excuse me'},
    ]);
  });
}
}


void main() {
  runApp(MaterialApp(
    home: PhrasebookScreen(),
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.black,
      colorScheme: ColorScheme.dark().copyWith(
        primary: Colors.blue,
        secondary: Colors.blueAccent,
      ),
    ),
  ));
}
