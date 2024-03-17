import 'package:chineasy/presentation/Flashcards/Notifires/Notify.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FlashcardsPage extends StatefulWidget {
  final ThemeData themeData;
  const FlashcardsPage(
      {Key? key, required String topic, required this.themeData})
      : super(key: key);

  @override
  State<FlashcardsPage> createState() => _FlashcardsPageState();
}

class _FlashcardsPageState extends State<FlashcardsPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FlashCardsNotifier>(
        builder: (_, notifier, __) => Scaffold(
              appBar: AppBar(
                title: Text(
                  notifier.topic,
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: widget.themeData.primaryColor,
              ),
              backgroundColor: widget.themeData.scaffoldBackgroundColor,
            ));
  }
}
