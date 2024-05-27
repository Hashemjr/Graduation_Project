import 'package:chineasy/core/app_export.dart';
import 'package:flutter/material.dart';
import 'pinyin_chart.dart';
import 'tone_practice.dart';
import 'tone_puzzle.dart';

class Lessontemp extends StatefulWidget {
  @override
  _LessontempState createState() => _LessontempState();
}

class _LessontempState extends State<Lessontemp> {
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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PinyinChart()),
                    );
                  },
                  child: Text('Interactive Pinyin Chart',style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 25.0,
                  ),),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TonePractice()),
                    );
                  },
                  child: Text('Tone Practice',style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 25.0,
                  ),
                ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TonePuzzle()),
                    );
                  },
                  child: Text('Tone Puzzle',style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 25.0,
                  ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Lessontemp(),
  ));
}