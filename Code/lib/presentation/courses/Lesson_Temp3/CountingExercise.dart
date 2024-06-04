import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class CountingExercise extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {'image': 'assets/images/numbers/one.png', 'number': '一', 'audio': 'https://pinyin-word-api.vercel.app/api/audio/yī'},
    {'image': 'assets/images/numbers/two.png', 'number': '二', 'audio': 'https://pinyin-word-api.vercel.app/api/audio/èr'},
    // Add more items as needed
  ];

  final AudioPlayer audioPlayer = AudioPlayer();

  void playSound(String url) async {
    await audioPlayer.setSource(UrlSource(url));
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counting Exercise'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: items.length,
        itemBuilder: (context, index) {
          var item = items[index];
          return GestureDetector(
            onTap: () => playSound(item['audio']),
            child: Card(
              child: Column(
                children: [
                  Image.asset(item['image'], height: 100, width: 100),
                  Text(item['number'], style: TextStyle(fontSize: 24)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
