import 'package:chineasy/presentation/Flashcards/Notifires/Notify.dart';
import 'package:chineasy/presentation/Flashcards/pages/tts_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardDisplay extends StatelessWidget {
  const CardDisplay({
    required this.isCard1,
    Key? key,
  }) : super(key: key);

  final bool isCard1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Consumer<FlashCardsNotifier>(
        builder: (_, notifier, __) => isCard1
            ? Column(
                children: [
                  buildImage(notifier.word1.english),
                  buildTextBox(notifier.word1.english, context, 1)
                ],
              )
            : Column(
                children: [
                  buildImage(notifier.word2.english),
                  buildTextBox(notifier.word2.character, context, 2),
                  buildTextBox(notifier.word2.pinyin, context, 1),
                  TTSButton(),
                ],
              ),
      ),
    );
  }
}

Expanded buildImage(String image) {
  return Expanded(
      flex: 4,
      child: image == "Customs"
          ? Center(child: Container())
          : Padding(
              padding: const EdgeInsets.all(18.0),
              child: Image.asset('assets/images/$image.png'),
            ));
}

Expanded buildTextBox(String text, BuildContext context, int fflex) {
  return Expanded(
      flex: fflex,
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: FittedBox(
          child: Text(text,
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: Colors.white)),
        ),
      ));
}
