import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class FlashcardWidget extends StatelessWidget {
  final String chinese;
  final String pinyin;
  final String english;
  final String audio;
  final String image;
  final AudioPlayer audioPlayer = AudioPlayer();

  FlashcardWidget({required this.chinese, required this.pinyin, required this.english, required this.audio, required this.image});

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
      onTap: () => playSound(audio),
      child: Card(
        child: Column(
          children: [
            Image.asset(image, height: 100, width: 100),
            Text(chinese, style: TextStyle(fontSize: 24)),
            Text(pinyin, style: TextStyle(fontSize: 18, color: Colors.grey)),
            Text(english, style: TextStyle(fontSize: 18, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
