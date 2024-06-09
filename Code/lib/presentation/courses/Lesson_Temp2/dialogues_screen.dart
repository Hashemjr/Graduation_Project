import 'package:chineasy/presentation/courses/Lesson_Temp2/greeting_match_game_screen.dart';
import 'package:chineasy/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:chineasy/presentation/courses/Lesson_Temp2/widgets/dialogue_widget.dart';

class DialoguesScreen extends StatefulWidget {
  @override
  _DialoguesScreenState createState() => _DialoguesScreenState();
}

class _DialoguesScreenState extends State<DialoguesScreen> {
  bool allDialoguesPlayed = false;
  final List<bool> dialoguesPlayed = [false, false, false];

  void onDialoguePlayed(int index) {
    setState(() {
      dialoguesPlayed[index] = true;
      allDialoguesPlayed = dialoguesPlayed.every((played) => played);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.5, 0),
            end: Alignment(0.5, 1),
            colors: [appTheme.black900, appTheme.gray90001],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80,bottom: 60),
              child: Center(
                child: Text(
                  'First Dialogue',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(10.0),
                children: [
                  DialogueWidget(
                    personA: '你好！',
                    personATranslation: 'Hello!',
                    personB: '你好！',
                    personBTranslation: 'Hello!',
                    avatarA: 'assets/images/person_a.png',
                    avatarB: 'assets/images/person_b.png',
                    onPlayed: () => onDialoguePlayed(0),
                  ),
                  DialogueWidget(
                    personA: '你好吗？',
                    personATranslation: 'How are you?',
                    personB: '我很好，谢谢。你呢？',
                    personBTranslation: 'I\'m fine,thank you.And you?',
                    avatarA: 'assets/images/person_a.png',
                    avatarB: 'assets/images/person_b.png',
                    onPlayed: () => onDialoguePlayed(1),
                  ),
                  DialogueWidget(
                    personA: '我也很好',
                    personATranslation: 'I\'m fine too',
                    personB: '那很好',
                    personBTranslation: 'That\'s good',
                    avatarA: 'assets/images/person_a.png',
                    avatarB: 'assets/images/person_b.png',
                    onPlayed: () => onDialoguePlayed(2),
                  ),
                ],
              ),
            ),
            if (allDialoguesPlayed)
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 255, 255, 255),
                    onPrimary: const Color.fromARGB(255, 0, 0, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    // Implement the animation and navigation to next level
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Well done!',style: TextStyle(
                                          color: const Color.fromARGB(255, 0, 0, 0),

                                        ),),
                        content: Text('You can now go on to the next level.',style: TextStyle(
                                          color: const Color.fromARGB(255, 0, 0, 0),

                                        ),),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => GreetingMatchGameScreen()),
                                            );
                              // Navigate to next level
                            },
                            child: Text('Next Level',
                                        style: TextStyle(
                                          color: const Color.fromARGB(255, 0, 0, 0),
                                          fontSize:20,
                                          fontWeight: FontWeight.bold,
                                        ),),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 7,bottom: 7,left: 80,right: 80),
                    child: Text('Next Level',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
