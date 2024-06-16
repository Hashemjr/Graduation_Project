import 'package:chineasy/core/app_export.dart';
import 'package:chineasy/presentation/courses/Lesson_Temp/lesson_temp.dart';
import 'package:chineasy/presentation/courses/Lesson_Temp3/CountingExercise.dart';
import 'package:chineasy/presentation/courses/Lesson_Temp3/NumberGames.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

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
                  'Counting Exercise',
                  CountingExercise(),
                  buttonWidth,
                  buttonHeight,
                  'lesson3_page1', // Unique identifier for the lesson page
                ),
                SizedBox(height: 20),
                _buildModernButton(
                  context,
                  'Number Quiz',
                  NumberQuizScreen(),
                  buttonWidth,
                  buttonHeight,
                  'lesson3_page2', // Unique identifier for the lesson page
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildModernButton(
      BuildContext context, String text, Widget page, double width, double height, String lessonId) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: () async {
          // Update course progress
          await updateCourseProgress(lessonId);

          // Update level progress (e.g., increment by 50)
          await updateLevelProgress(50);

          // Navigate to the lesson page
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
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Lessontemp3(),
  ));
}
