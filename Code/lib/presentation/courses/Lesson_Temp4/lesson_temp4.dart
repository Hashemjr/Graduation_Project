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
              colors: [appTheme.black900, appTheme.gray90001],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 50.0),
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
                  'Phrase book',
                  PhrasebookScreen(),
                  buttonWidth,
                  buttonHeight,
                ),
                SizedBox(height: 20),
                _buildModernButton(
                  context,
                  'Sentence Building game',
                  SentenceBuildingScreen(),
                  buttonWidth,
                  buttonHeight,
                ),
                SizedBox(height: 20),
                _buildModernButton(
                  context,
                  'Phrase Builder game',
                  PhraseBuilderScreen(),
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
          primary: Color.fromARGB(255, 132, 0, 0), // Background color
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
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Lessontemp4(),
  ));
}