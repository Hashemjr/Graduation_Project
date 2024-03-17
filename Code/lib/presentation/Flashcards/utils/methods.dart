import 'package:chineasy/presentation/Flashcards/Flashcards_Component/Configur/Themes.dart';
import 'package:chineasy/presentation/Flashcards/Notifires/Notify.dart';
import 'package:chineasy/presentation/Flashcards/pages/Flashcard_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

loadSession({required BuildContext context, required String topic}) {
  Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => FlashcardsPage(themeData: appTheme, topic: topic)));

  Provider.of<FlashCardsNotifier>(context, listen: false)
      .setTopic(topic: topic);
}
