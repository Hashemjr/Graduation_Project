import 'package:flutter/material.dart';

class WordCard extends StatelessWidget {
  final String word;
  final bool isDragging;

  const WordCard({required this.word, this.isDragging = false});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDragging ? Color.fromARGB(143, 78, 78, 78) : Color.fromARGB(255, 81, 0, 0),
      child: Center(
        child: Text(
          word,
          style: TextStyle(fontSize: 35,color: Colors.white),
        ),
      ),
    );
  }
}
