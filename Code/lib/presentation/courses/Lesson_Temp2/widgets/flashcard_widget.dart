import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_tts/flutter_tts.dart';
class FlashcardWidget extends StatelessWidget {
  final String chinese;
  final String pinyin;
  final String english;
  //final String audio;
  final String image;
  final AudioPlayer audioPlayer = AudioPlayer();
   final FlutterTts flutterTts = FlutterTts();
  FlashcardWidget({required this.chinese, required this.pinyin, required this.english, required this.image});
  void _speak(String text) async {
    await flutterTts.setLanguage("zh-CN");
    await flutterTts.speak(text);
  }
  void playSound(String url) async {
  try {
    await audioPlayer.setSourceUrl(url);
    await audioPlayer.resume();
  } catch (e) {
    print('Error playing sound: $e');
  }
}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _speak(chinese),//playSound(audio),
      child: Card(
        color:Color.fromARGB(255, 194, 48, 38),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(image, height: 80, width: 80),
            ),
            Text(chinese, style: TextStyle(fontSize: 24,color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold)),
            SizedBox(height: 5,),
            Text("($pinyin)", style: TextStyle(fontSize: 12, color: const Color.fromARGB(255, 204, 204, 204))),
            SizedBox(height: 5,),
            Text(english, style: TextStyle(fontSize: 14, color: const Color.fromARGB(255, 204, 204, 204))),
          ],
        ),
      ),
    );
  }
}
