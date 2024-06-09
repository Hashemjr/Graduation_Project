import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class NumberQuestScreen extends StatefulWidget {
  @override
  _NumberQuestScreenState createState() => _NumberQuestScreenState();
}

class _NumberQuestScreenState extends State<NumberQuestScreen> {
  final List<int> numbers = List.generate(10, (index) => index + 1);
  final Map<int, String> chineseNumbers = {
    1: '一 (yī)',
    2: '二 (èr)',
    3: '三 (sān)',
    4: '四 (sì)',
    5: '五 (wǔ)',
    6: '六 (liù)',
    7: '七 (qī)',
    8: '八 (bā)',
    9: '九 (jiǔ)',
    10: '十 (shí)',
  };
  final List<int> collectedNumbers = [];
  final AudioPlayer audioPlayer = AudioPlayer();

  void playSound(int number) async {
    String url = 'https://pinyin-word-api.vercel.app/api/audio/${Uri.encodeComponent(chineseNumbers[number]!.split(' ')[0])}';
    await audioPlayer.setSource(UrlSource(url));
    await audioPlayer.resume();
  }

  void collectNumber(int number) {
    setState(() {
      if (!collectedNumbers.contains(number)) {
        collectedNumbers.add(number);
        playSound(number);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Quest'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: numbers.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => collectNumber(numbers[index]),
                  child: Card(
                    color: collectedNumbers.contains(numbers[index]) ? Colors.green : Colors.white,
                    child: Center(
                      child: Text(
                        '${numbers[index]}\n${chineseNumbers[numbers[index]]}',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Collected Numbers: ${collectedNumbers.join(', ')}',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}