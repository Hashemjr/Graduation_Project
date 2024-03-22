import 'package:chineasy/presentation/Flashcards/Flashcards_Component/Configur/constants.dart';
import 'package:flutter/material.dart';

final appTheme = ThemeData(
  primaryColor: Kred,
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.white, fontSize: 12),
    displayLarge: TextStyle(
        color: Colors.white, fontSize: 58, fontWeight: FontWeight.bold),
  ),
  appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      color: Kred),
  scaffoldBackgroundColor: Kyellow,
  dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(KcircularRadius)),
      backgroundColor: Kred,
      titleTextStyle: TextStyle(fontSize: 20)),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(KcircularRadius),
              side: BorderSide(color: Colors.yellow)),
          backgroundColor: Kyellow,
          textStyle: TextStyle(color: Colors.black))),
);
