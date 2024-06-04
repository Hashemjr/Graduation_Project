import 'package:chineasy/core/app_export.dart';
import 'package:flutter/material.dart';
import 'CountingExercise.dart';
import 'NumberGames.dart';
import 'NumberQuest.dart';

class Lessontemp3 extends StatefulWidget {
  @override
  _Lessontemp3State createState() => _Lessontemp3State();
}

class _Lessontemp3State extends State<Lessontemp3> {
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
                  MaterialPageRoute(builder: (context) => CountingExercise()),
                );
              },
              child: Text('Counting Exercise',style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 25.0,
                  ),),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NumberQuizScreen()),
                );
              },
              child: Text('Number Quiz',style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 25.0,
                  ),),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DragAndDropNumberGame()),
                );
              },
              child: Text('Drag and Drop Number Game',style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 25.0,
                  ),),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NumberQuestScreen()),
                );
              },
              child: Text('Number Quest',style: TextStyle(
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
    home: Lessontemp3(),
  ));
}