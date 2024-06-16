import 'package:chineasy/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'pinyin_chart.dart';
import 'tone_practice.dart';
import 'tone_puzzle.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
                  'Interactive Pinyin Chart',
                  PinyinChart(),
                  buttonWidth,
                  buttonHeight,
                  'lesson1_page1', // Unique identifier for the lesson page
                ),
                SizedBox(height: 20),
                _buildModernButton(
                  context,
                  'Tone Practice',
                  TonePractice(),
                  buttonWidth,
                  buttonHeight,
                  'lesson1_page2', // Unique identifier for the lesson page
                ),
                SizedBox(height: 20),
                _buildModernButton(
                  context,
                  'Pinyin Tone Quiz',
                  PinyinQuiz(),
                  buttonWidth,
                  buttonHeight,
                  'lesson1_page3', // Unique identifier for the lesson page
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildModernButton(BuildContext context, String text, Widget page, double width, double height, String lessonId) {
  return SizedBox(
    width: width,
    height: height,
    child: ElevatedButton(
      onPressed: () async {
        // Update course progress
        await updateCourseProgress(lessonId);

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
Future<void> updateCourseProgress(String lessonId) async {
  User? user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    String uid = user.uid;
    DocumentReference userDoc = FirebaseFirestore.instance.collection('users').doc(uid);
    
    // Fetch current progress
    DocumentSnapshot snapshot = await userDoc.get();
    Map<String, dynamic> userData = snapshot.data() as Map<String, dynamic>;
    
    // Initialize courseProgress if it doesn't exist
    Map<String, dynamic> courseProgress = userData['courseProgress'] != null
        ? Map<String, dynamic>.from(userData['courseProgress'])
        : {};

    if (!courseProgress.containsKey(lessonId)) {
      courseProgress[lessonId] = true;
      // Update Firestore
      await userDoc.update({'courseProgress': courseProgress});
      
      // Update the progress bar
      int currentProgress = int.tryParse(userData['Progressbar'] ?? '0') ?? 0;
      int totalLessons = 11;  // Total number of lessons
      int progressIncrement = (1 / totalLessons * 100).round();
      int newProgress = currentProgress + progressIncrement;
      
      await userDoc.update({'Progressbar': newProgress.toString()});
      
      // Update the level progress
      await updateLevelProgress(80); // Increment the level progress by 80
    }
  }
}


Future<void> updateLevelProgress(int increment) async {
  User? user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    String uid = user.uid;
    DocumentReference userDoc = FirebaseFirestore.instance.collection('users').doc(uid);

    // Fetch current level progress
    DocumentSnapshot snapshot = await userDoc.get();
    Map<String, dynamic> userData = snapshot.data() as Map<String, dynamic>;
    int currentLevelProgress = userData['levelProgress'] ?? 0;

    // Update level progress
    await userDoc.update({'levelProgress': currentLevelProgress + increment});
  }
}
