import 'package:chineasy/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:chineasy/presentation/courses/Lesson_Temp2/data/greetings.dart';
import 'package:chineasy/presentation/courses/Lesson_Temp2/widgets/flashcard_widget.dart';

class FlashcardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.5, 0),
            end: Alignment(0.5, 1),
            colors: [appTheme.black900, appTheme.gray90001],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 40),
              child: Center(
                child: Text(
                  'Flashcards',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: greetings.length,
                itemBuilder: (context, index) {
                  return FlashcardWidget(
                    chinese: greetings[index]['chinese']!,
                    pinyin: greetings[index]['pinyin']!,
                    english: greetings[index]['english']!,
                    image: greetings[index]['image']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}