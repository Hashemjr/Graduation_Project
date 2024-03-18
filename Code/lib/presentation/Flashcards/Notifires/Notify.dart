import 'package:chineasy/presentation/Flashcards/Enums/Slide_direction.dart';
import 'package:flutter/material.dart';

class FlashCardsNotifier extends ChangeNotifier {
  String topic = "";

  setTopic({required String topic}) {
    this.topic = topic;
    notifyListeners();
  }

  SlideDirection swipedDirection = SlideDirection.none;

  bool flipCard1 = false;
  bool flipCard2 = false;
  bool swipeCard2 = false;

  runFlipCard1() {
    flipCard1 = true;
    notifyListeners();
  }

  runFlipCard2() {
    flipCard2 = true;
    notifyListeners();
  }

  runSwipeCard2({required SlideDirection direction}) {
    swipedDirection = direction;
    swipeCard2 = true;
    notifyListeners();
  }
}
