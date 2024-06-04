import 'package:chineasy/core/app_export.dart';
import 'package:flutter/material.dart';
import 'PhrasebookScreen.dart';
import 'SentenceBuildingScreen.dart';
import 'PhraseBuilderScreen.dart';

class Lessontemp4 extends StatefulWidget {
  @override
  _Lessontemp4State createState() => _Lessontemp4State();
}

class _Lessontemp4State extends State<Lessontemp4> {
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
                  MaterialPageRoute(builder: (context) => PhrasebookScreen()),
                );
              },
              child: Text('Phrase book',style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 25.0,
                  ),),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SentenceBuildingScreen()),
                );
              },
              child: Text('Sentence Building',style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 25.0,
                  ),),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhraseBuilderScreen()),
                );
              },
              child: Text('Phrase Builder',style: TextStyle(
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
    home: Lessontemp4(),
  ));
}