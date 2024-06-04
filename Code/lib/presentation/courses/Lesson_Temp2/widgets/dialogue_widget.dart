import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class DialogueWidget extends StatelessWidget {
  final String personA;
  final String personB;
  final String audioA;
  final String audioB;
  final AudioPlayer audioPlayer = AudioPlayer();

  DialogueWidget({required this.personA, required this.personB, required this.audioA, required this.audioB});

  void playSound(String audio) async {
    await audioPlayer.setSource(UrlSource(audio));
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('Person A: $personA'),
          trailing: IconButton(
            icon: Icon(Icons.play_arrow),
            onPressed: () => playSound(audioA),
          ),
        ),
        ListTile(
          title: Text('Person B: $personB'),
          trailing: IconButton(
            icon: Icon(Icons.play_arrow),
            onPressed: () => playSound(audioB),
          ),
        ),
      ],
    );
  }
}
