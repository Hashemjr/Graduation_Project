import 'package:chineasy/core/app_export.dart';
import 'package:flutter/material.dart';
import 'flashcards_screen.dart';
import 'dialogues_screen.dart';
import 'greeting_match_game_screen.dart';
class Lessontemp2 extends StatefulWidget {
  @override
  _Lessontemp2State createState() => _Lessontemp2State();
}

class _Lessontemp2State extends State<Lessontemp2> {
  @override
  void initState() {
    super.initState();
  }
    @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [appTheme.black900, appTheme.gray90001],
            ),
          ),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FlashcardsScreen()),
                );
              },
              child: Text('Flashcards',style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 25.0,
                  ),),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DialoguesScreen()),
                );
              },
              child: Text('Dialogues',style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 25.0,
                  ),),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GreetingMatchGameScreen()),
                );
              },
              child: Text('Greeting Match Game',style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 25.0,
                  ),),
            ),
          ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Lessontemp2(),
  ));
}