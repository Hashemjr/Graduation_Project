import 'package:flutter/material.dart';
import 'package:chineasy/presentation/courses/Lesson_Temp2/widgets/dialogue_widget.dart';

class DialoguesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialogues'),
      ),
      body: ListView(
        children: [
          DialogueWidget(
            personA: '你好！',
            personB: '你好！',
            audioA: 'https://pinyin-word-api.vercel.app/api/audio/你好',
            audioB: 'https://pinyin-word-api.vercel.app/api/audio/你好',
          ),
          DialogueWidget(
            personA: '早上好！',
            personB: '早上好！',
            audioA: 'https://pinyin-word-api.vercel.app/api/audio/早上好',
            audioB: 'https://pinyin-word-api.vercel.app/api/audio/早上好',
          ),
        ],
      ),
    );
  }
}
