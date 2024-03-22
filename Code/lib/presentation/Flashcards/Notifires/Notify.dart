import 'dart:math';

import 'package:chineasy/presentation/Flashcards/Enums/Slide_direction.dart';
import 'package:chineasy/presentation/Flashcards/Flashcards_Component/Configur/constants.dart';
import 'package:chineasy/presentation/Flashcards/Flashcards_Models/word.dart';
import 'package:chineasy/presentation/Flashcards/Flashcards_data/words.dart';
import 'package:chineasy/presentation/Flashcards/pages/results_box.dart';
import 'package:flutter/material.dart';

class FlashCardsNotifier extends ChangeNotifier {
  int roundTally = 0;
  int cardTally = 0, correctTally = 0, incorrectTally = 0;
  int correctPercentage = 0;

  List<Word> incorrect = [];
  bool isFirstRound = true;
  bool isRoundCompleted = false;
  bool isSessionCompleted = false;

  reset() {
    isFirstRound = true;
    isRoundCompleted = false;
    isSessionCompleted = false;
    roundTally = 0;
  }

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
    isRoundCompleted = false;
    if (isFirstRound) {
      selectedWords = words.where((element) => element.topic == topic).toList();
    } else {
      selectedWords = incorrect.toList();
      incorrect.clear();
    }
    roundTally++;
    cardTally = selectedWords.length;
    correctTally = 0;
    incorrectTally = 0;
  }

  generateCurrentWord({required BuildContext context}) {
    if (selectedWords.isNotEmpty) {
      final rand = Random().nextInt(selectedWords.length);
      word1 = selectedWords[rand];
      selectedWords.removeAt(rand);
    } else {
      if (incorrect.isEmpty) {
        isSessionCompleted = true;
        print('Session Completed: $isSessionCompleted');
      }
      isRoundCompleted = true;
      isFirstRound = false;
      calculateCorrectPercentage();
      Future.delayed(Duration(milliseconds: 500), () {
        showDialog(context: context, builder: (context) => ResultBox());
      });
    }

    Future.delayed(Duration(milliseconds: kSlideAwayDuration), () {
      word2 = word1;
    });
  }

  updateCardOutcome({required Word word, required bool isCorrect}) {
    if (!isCorrect) {
      incorrect.add(word);
      incorrectTally++;
    } else {
      correctTally++;
    }
    notifyListeners();
  }

  calculateCorrectPercentage() {
    correctPercentage = ((correctTally / cardTally) * 100).toInt();
    notifyListeners();
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
    updateCardOutcome(
        word: word2, isCorrect: direction == SlideDirection.leftAway);
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
