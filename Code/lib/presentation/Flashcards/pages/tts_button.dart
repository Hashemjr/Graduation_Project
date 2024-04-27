import 'package:chineasy/presentation/Flashcards/Notifires/Notify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:provider/provider.dart';

class TTSButton extends StatefulWidget {
  const TTSButton({Key? key}) : super(key: key);

  @override
  State<TTSButton> createState() => _TTSButtonState();
}

class _TTSButtonState extends State<TTSButton> {
  bool _istapped = false;
  FlutterTts _tts = FlutterTts();

  @override
  initState() {
    _setUpTts();
    super.initState();
  }

  @override
  void dispose() {
    _tts.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<FlashCardsNotifier>(
      builder: (_, notifier, __) => Expanded(
          child: IconButton(
              onPressed: () {
                _runTts(text: notifier.word1.character);
                _istapped = true;
                setState(() {});
                Future.delayed(Duration(milliseconds: 500), () {
                  _istapped = false;
                  setState(() {});
                });
              },
              icon: Image.asset('assets/images/img_voice_pic.png',
                  color: _istapped ? Colors.yellow : Colors.white))),
    );
  }

  _setUpTts() async {
    await _tts.setLanguage("zh-Cn");
    // _tts.getLanguages.then((value) => print(value));
    await _tts.setSpeechRate(0.40);
  }

  _runTts({required String text}) async {
    await _tts.speak(text);
  }
}
