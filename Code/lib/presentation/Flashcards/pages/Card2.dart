import 'package:chineasy/presentation/Flashcards/Animation/Slide_in.dart';
import 'package:chineasy/presentation/Flashcards/Animation/half_flip.dart';
import 'package:chineasy/presentation/Flashcards/Enums/Slide_direction.dart';
import 'package:chineasy/presentation/Flashcards/Flashcards_Component/Configur/Themes.dart';
import 'package:chineasy/presentation/Flashcards/Notifires/Notify.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Card2 extends StatelessWidget {
  const Card2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<FlashCardsNotifier>(
      builder: (_, notifier, __) => GestureDetector(
        onHorizontalDragEnd: (details) {
          print(details.primaryVelocity);
          if (details.primaryVelocity! > 100) {
            notifier.runSwipeCard2(direction: SlideDirection.leftAway);
          }
          if (details.primaryVelocity! < -100) {
            notifier.runSwipeCard2(direction: SlideDirection.rightAway);
          }
        },
        child: HalfFlipAnimation(
          animate: notifier.flipCard2,
          reset: false,
          flipFromHalfWay: true,
          animationCompleted: () {
            print('Animation 2 completed');
          },
          child: SlideAnimation(
            animate: notifier.swipeCard2,
            direction: notifier.swipedDirection,
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
