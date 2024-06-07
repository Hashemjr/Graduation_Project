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
    final double buttonWidth = MediaQuery.of(context).size.width * 0.8;
    final double buttonHeight = MediaQuery.of(context).size.height * 0.07;

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
              colors: [Colors.black, Colors.grey[900]!],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Text(
                    'Lesson Menu',
                    style: TextStyle(
                      fontFamily: 'Roboto', // Change to your desired font family
                      fontSize: 30, // Adjust the font size as needed
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                _buildModernButton(
                  context,
                  'Interactive Pinyin Chart',
                  PinyinChart(),
                  buttonWidth,
                  buttonHeight,
                ),
                SizedBox(height: 20),
                _buildModernButton(
                  context,
                  'Tone Practice',
                  TonePractice(),
                  buttonWidth,
                  buttonHeight,
                ),
                SizedBox(height: 20),
                _buildModernButton(
                  context,
                  'Pinyin Tone Quiz',
                  PinyinQuiz(),
                  buttonWidth,
                  buttonHeight,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildModernButton(
      BuildContext context, String text, Widget page, double width, double height) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.blue, // Background color
          onPrimary: Colors.white, // Text color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          textStyle: TextStyle(
            fontFamily: 'Roboto', // Change to your desired font family
            fontSize: 20, // Adjust the font size as needed
            fontWeight: FontWeight.bold,
          ),
          elevation: 5, // Add shadow for smooth look
        ),
        child: Text(text),
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