import 'package:chineasy/presentation/Flashcards/Animation/Slide_in.dart';
import 'package:chineasy/presentation/Flashcards/Animation/half_flip.dart';
import 'package:chineasy/presentation/Flashcards/Enums/Slide_direction.dart';
import 'package:chineasy/presentation/Flashcards/Flashcards_Component/Configur/Themes.dart';
import 'package:chineasy/presentation/Flashcards/Notifires/Notify.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Card1 extends StatelessWidget {
  const Card1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<FlashCardsNotifier>(
      builder: (_, notifier, __) => GestureDetector(
        onDoubleTap: () {
          notifier.runFlipCard1();
        },
        child: HalfFlipAnimation(
          animate: notifier.flipCard1,
          reset: false,
          flipFromHalfWay: false,
          animationCompleted: () {
            notifier.runFlipCard2();
          },
          child: SlideAnimation(
            direction: SlideDirection.leftIn,
            child: Center(
              child: Container(
                  width: size.width * 0.90,
                  height: size.height * 0.70,
                  decoration: BoxDecoration(color: appTheme.primaryColor)),
            ),
          ),
        ),
      ),
    );
  }
}
