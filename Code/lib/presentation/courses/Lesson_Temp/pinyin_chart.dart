import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:audioplayers/audioplayers.dart';

class PinyinChart extends StatefulWidget {
  @override
  _PinyinChartState createState() => _PinyinChartState();
}

class _PinyinChartState extends State<PinyinChart> {
  late AudioPlayer _audioPlayer;

  final Map<String, String> pinyinMap = {
    'a': 'a',
    'á': 'a2',
    'ǎ': 'a3',
    'à': 'a4',
    'ō': 'o1',
    'ó': 'o2',
    'ǒ': 'o3',
    'ò': 'o4',
    'ē': 'e1',
    'é': 'e2',
    'ě': 'e3',
    'è': 'e4',
  };

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

  Future<String> _fetchAudioUrl(String pinyin) async {
    final response = await http.get(Uri.parse('https://pinyin-word-api.vercel.app/api/audio/$pinyin'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print('API Response: $data');
      return data['audioUrl']; // Adjust based on actual API response structure
    } else {
      throw Exception('Failed to load audio');
    }
  }

  void _playSound(String pinyin) async {
    try {
      String url = await _fetchAudioUrl(pinyin);
      print('Playing URL: $url');
      await _audioPlayer.setSourceUrl(url);
      await _audioPlayer.resume();
    } catch (e) {
      print('Error playing sound: $e');
      // Show a Snackbar or any other UI to inform the user
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to load audio for $pinyin'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interactive Pinyin Chart',style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 25.0,
                  ),),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemCount: pinyinMap.keys.length,
        itemBuilder: (context, index) {
          String pinyin = pinyinMap.keys.elementAt(index);
          return GestureDetector(
            onTap: () => _playSound(pinyinMap[pinyin]!),
            child: Card(
              child: Center(
                child: Text(
                  pinyin,
                  style: TextStyle(fontSize: 24,color: const Color.fromARGB(255, 0, 0, 0),),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
