import 'package:flutter/material.dart';
import 'package:chineasy/presentation/courses/Lesson_Temp2/data/greetings.dart';
import 'package:chineasy/presentation/courses/Lesson_Temp2/widgets/flashcard_widget.dart';

class FlashcardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flashcards'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: greetings.length,
        itemBuilder: (context, index) {
          return FlashcardWidget(
            chinese: greetings[index]['chinese']!,
            pinyin: greetings[index]['pinyin']!,
            english: greetings[index]['english']!,
            audio: greetings[index]['audio']!,
            image: greetings[index]['image']!,
          );
        },
      ),
    );
  }
}
