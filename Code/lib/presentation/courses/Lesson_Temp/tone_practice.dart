import 'package:flutter/material.dart';

class TonePractice extends StatelessWidget {
  final List<String> tones = ['ā', 'á', 'ǎ', 'à'];
  final List<String> syllables = ['ma', 'ba', 'da', 'fa'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tone Practice'),
      ),
      body: ListView.builder(
        itemCount: syllables.length,
        itemBuilder: (context, index) {
          String syllable = syllables[index];
          return ListTile(
            title: Text(syllable),
            trailing: DropdownButton<String>(
              items: tones.map((String tone) {
                return DropdownMenuItem<String>(
                  value: tone,
                  child: Text(tone,style: TextStyle(fontSize: 24,color: const Color.fromARGB(255, 0, 0, 0),)),
                );
              }).toList(),
              onChanged: (String? value) {
                // Handle tone selection
              },
            ),
          );
        },
      ),
    );
  }
}
