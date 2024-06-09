import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class TonePractice extends StatefulWidget {
  @override
  _TonePracticeState createState() => _TonePracticeState();
}

class _TonePracticeState extends State<TonePractice> {
  final List<String> tones = ['ā', 'á', 'ǎ', 'à', 'ō', 'ó', 'ǒ', 'ò'];
  final List<String> audio = ['ma1', 'ba2', 'da3', 'fa4', 'mo1', 'bo2', 'po3', 'fo4'];
  final List<String> syllables = ['ma', 'ba', 'da', 'fa', 'mo', 'bo', 'po', 'fo'];
  late AudioPlayer _audioPlayer;
  final Map<String, String> selectedTones = {};
  final Map<String, bool> answerStatus = {}; // Track correctness of answers

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  void _playSound(String syllable) async {
    if (!mounted) return; // Check if the widget is still mounted

    int syllableIndex = syllables.indexOf(syllable);
    String audioFile = audio[syllableIndex];
    String url = 'https://yabla.vo.llnwd.net/media.yabla.com/chinese_static/audio/alicia/$audioFile.mp3';

    try {
      await _audioPlayer.setSourceUrl(url); // Updated method name
      await _audioPlayer.resume();
    } catch (e) {
      if (mounted) { // Check again if widget is still mounted before showing the SnackBar
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to load audio for $audioFile', style: TextStyle(color: Colors.red)),
          ),
        );
      }
    }
  }

  void _checkAnswers() {
    answerStatus.clear(); // Clear previous feedback
    for (int i = 0; i < syllables.length; i++) {
      String syllable = syllables[i];
      if (selectedTones.containsKey(syllable)) {
        String selectedTone = selectedTones[syllable]!;
        String correctTone = tones[i]; // Correct tone is based on the syllable index
        answerStatus[syllable] = selectedTone == correctTone; // Mark correctness
      }
    }
    setState(() {}); // Update UI to reflect feedback
  }

  void _resetAnswers() {
    selectedTones.clear();
    answerStatus.clear();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final double cardPadding = MediaQuery.of(context).size.width * 0.02;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tone Practice',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 132, 0, 0),
        elevation: 0,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(cardPadding),
        itemCount: syllables.length,
        itemBuilder: (context, index) {
          String syllable = syllables[index];
          bool isCorrect = answerStatus.containsKey(syllable) ? answerStatus[syllable]! : false;
          Color textColor = isCorrect ? Colors.green : Colors.black;

          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 5,
            margin: EdgeInsets.symmetric(vertical: cardPadding),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: cardPadding, vertical: cardPadding / 2),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    syllable,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: textColor, // Change color based on correctness
                    ),
                  ),
                  if (selectedTones[syllable] != null)
                    Text(
                      selectedTones[syllable]!,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        color: textColor,
                      ),
                    ),
                ],
              ),
              trailing: DropdownButton<String>(
                underline: Container(),
                items: tones.map((String tone) {
                  return DropdownMenuItem<String>(
                    value: tone,
                    child: Text(
                      tone,
                      style: TextStyle(fontSize: 24, color: textColor),
                    ),
                  );
                }).toList(),
                onChanged: (String? value) {
                  if (value != null) {
                    setState(() {
                      selectedTones[syllable] = value;
                    });
                    _playSound(syllable);
                  }
                },
                icon: Icon(Icons.arrow_drop_down, color: textColor),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(cardPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: _checkAnswers,
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Increased border radius
                ),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                elevation: 5, // Added elevation
              ),
              child: Text(
                'Check Answers',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _resetAnswers,
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // Increased border radius
                ),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                elevation: 5, // Added elevation
              ),
              child: Text(
                'Reset',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TonePractice(),
  ));
}
