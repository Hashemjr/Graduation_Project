import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class DialogueWidget extends StatefulWidget {
  final String personA;
  final String personATranslation;
  final String personB;
  final String personBTranslation;
  final String avatarA;
  final String avatarB;
  final Function onPlayed;

  DialogueWidget({
    required this.personA,
    required this.personATranslation,
    required this.personB,
    required this.personBTranslation,
    required this.avatarA,
    required this.avatarB,
    required this.onPlayed,
  });

  @override
  _DialogueWidgetState createState() => _DialogueWidgetState();
}

class _DialogueWidgetState extends State<DialogueWidget> {
  final FlutterTts flutterTts = FlutterTts();
  bool _translationVisibleA = false;
  bool _translationVisibleB = false;

  void _speak(String text, bool isPersonA) async {
    await flutterTts.setLanguage("zh-CN");
    await flutterTts.speak(text);
    setState(() {
      if (isPersonA) {
        _translationVisibleA = true;
      } else {
        _translationVisibleB = true;
      }
    });
    widget.onPlayed();
  }

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildChatBubble(widget.personA, widget.personATranslation, widget.avatarA, true),
        _buildChatBubble(widget.personB, widget.personBTranslation, widget.avatarB, false),
      ],
    );
  }

  Widget _buildChatBubble(String text, String translation, String avatar, bool isLeft) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isLeft) ...[
          CircleAvatar(
            backgroundImage: AssetImage(avatar),
          ),
          SizedBox(width: 5),
        ],
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.only(top: 5,bottom: 5,left: 10),
            decoration: BoxDecoration(
              color: isLeft ? Color.fromARGB(255, 244, 244, 244) : Color.fromARGB(255, 255, 104, 94),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Column(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 25, color: const Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w600),
        ),
        SizedBox(width: 15),
        AnimatedOpacity(
          opacity: isLeft && _translationVisibleA || !isLeft && _translationVisibleB ? 1.0 : 0.0,
          duration: Duration(seconds: 1),
          child: Text(
            translation,
            style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 0, 0, 0)),
          ),
        ),
      ],
    ),
    IconButton(
      icon: Icon(Icons.play_arrow_rounded),
      iconSize: 30,
      color: Color.fromARGB(255, 67, 66, 66),
      onPressed: () => _speak(text, isLeft),
    ),
  ],

            ),
          ),
        ),
        if (!isLeft) ...[
          SizedBox(width: 5 ),
          CircleAvatar(
            backgroundImage: AssetImage(avatar),
          ),
        ],
      ],
    );
  }
}
