import 'package:chineasy/presentation/Flashcards/Notifires/Notify.dart';
import 'package:chineasy/presentation/Flashcards/home-page.dart';
import 'package:chineasy/presentation/Flashcards/pages/Flashcard_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final FlashcardsPage widget;

  @override
  Widget build(BuildContext context) {
    return Consumer<FlashCardsNotifier>(
      builder: (_, notifier, __) => AppBar(
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                    (route) => false);
              },
              icon: Icon(Icons.clear))
        ],
        leading: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Hero(
                tag: notifier.topic,
                child: Image.asset('assets/images/${notifier.topic}.png'))),
        title: Text(
          notifier.topic,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: widget.themeData.primaryColor,
      ),
    );
  }
}
