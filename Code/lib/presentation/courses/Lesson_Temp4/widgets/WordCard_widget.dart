import 'package:flutter/material.dart';

class WordCard extends StatelessWidget {
  final String word;
  final bool isDragging;

  const WordCard({required this.word, this.isDragging = false});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDragging ? Colors.grey : const Color.fromARGB(255, 214, 152, 152),
      child: Center(
        child: Text(
          word,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
