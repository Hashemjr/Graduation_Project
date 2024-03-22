import 'dart:math';

import 'package:chineasy/presentation/Flashcards/Enums/Slide_direction.dart';
import 'package:chineasy/presentation/Flashcards/Flashcards_Component/Configur/constants.dart';
import 'package:chineasy/presentation/Flashcards/Flashcards_Models/word.dart';
import 'package:chineasy/presentation/Flashcards/Flashcards_data/words.dart';
import 'package:flutter/material.dart';

class FlashCardsNotifier extends ChangeNotifier {
  String topic = "";
  Word word1 = Word(topic: "", english: "", character: "", pinyin: "");
  Word word2 = Word(topic: "", english: "", character: "", pinyin: "");
  List<Word> selectedWords = [];

  setTopic({required String topic}) {
    this.topic = topic;
    notifyListeners();
  }

  generateAllSelectedWords() {
    selectedWords.clear();
    selectedWords = words.where((element) => element.topic == topic).toList();
  }

  generateCurrentWord() {
    if (selectedWords.isNotEmpty) {
      final rand = Random().nextInt(selectedWords.length);
      word1 = selectedWords[rand];
      selectedWords.removeAt(rand);
    } else {
      print("No more words");
    }

    Future.delayed(Duration(milliseconds: kSlideAwayDuration), () {
      word2 = word1;
    });
  }

  // Animation Code
  SlideDirection swipedDirection = SlideDirection.none;

  bool flipCard1 = false;
  bool flipCard2 = false;
  bool swipeCard2 = false;
  bool slideCard1 = false;

  bool resetSlideCard1 = false;
  bool resetFlipCard1 = false;
  bool resetFlipCard2 = false;
  bool resetSwipeCard2 = false;

  bool ignoreTouches = true;

  setIgnoreTouch({required bool ignore}) {
    ignoreTouches = ignore;
    notifyListeners();
  }

  runSlideCard1() {
    resetSlideCard1 = false;
    slideCard1 = true;
    notifyListeners();
  }

  runFlipCard1() {
    resetFlipCard1 = false;
    flipCard1 = true;
    notifyListeners();
  }

  resetCard1() {
    resetSlideCard1 = true;
    resetFlipCard1 = true;
    slideCard1 = false;
    flipCard1 = false;
  }

  runFlipCard2() {
    resetFlipCard2 = false;
    flipCard2 = true;
    notifyListeners();
  }

  runSwipeCard2({required SlideDirection direction}) {
    swipedDirection = direction;
    resetSwipeCard2 = false;
    swipeCard2 = true;
    notifyListeners();
  }

  resetCard2() {
    resetFlipCard2 = true;
    resetSwipeCard2 = true;
    flipCard2 = false;
    swipeCard2 = false;
  }
}
