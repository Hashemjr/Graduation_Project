import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class PhrasebookScreen extends StatelessWidget {
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
      appBar: AppBar(
        title: Text('Phrasebook'),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          final phrase = phrases[index];
          return ListTile(
            title: Text(phrase['chinese']!),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(phrase['pinyin']!, style: TextStyle(color: Colors.grey)),
                Text(phrase['english']!, style: TextStyle(color: Colors.grey)),
              ],
            ),
            trailing: IconButton(
              icon: Icon(Icons.volume_up),
              onPressed: () => _speak(phrase['chinese']!),
            ),
          );
        },
      ),
    );
  }
}
