import 'package:chineasy/presentation/Flashcards/Notifires/Notify.dart';
import 'package:chineasy/presentation/Flashcards/pages/Card1.dart';
import 'package:chineasy/presentation/Flashcards/pages/Card2.dart';
import 'package:chineasy/presentation/Flashcards/pages/CustomAppBar.dart';
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
              appBar: PreferredSize(
                  preferredSize: Size.fromHeight(56),
                  child: CustomAppBar(
                    widget: widget,
                  )),
              body: Stack(
                children: [Card2(), Card1()],
              ),
              backgroundColor: widget.themeData.scaffoldBackgroundColor,
            ));
  }
}
