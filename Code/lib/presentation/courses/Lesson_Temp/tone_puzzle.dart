import 'package:flutter/material.dart';

class TonePuzzle extends StatelessWidget {
  final Map<String, List<String>> toneMap = {
    'ā': ['mā', 'bā'],
    'á': ['má', 'bá'],
    'ǎ': ['mǎ', 'bǎ'],
    'à': ['mà', 'bà'],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tone Puzzle',style: TextStyle(fontSize: 24,color: const Color.fromARGB(255, 0, 0, 0),)),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: toneMap.keys.length,
        itemBuilder: (context, index) {
          String tone = toneMap.keys.elementAt(index);
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(tone, style: TextStyle(fontSize: 24,color: const Color.fromARGB(255, 0, 0, 0),)),
                ...toneMap[tone]!.map((syllable) => Text(syllable)).toList(),
              ],
            ),
          );
        },
      ),
    );
  }
}
