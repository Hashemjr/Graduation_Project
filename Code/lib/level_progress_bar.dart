import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LevelProgressBar extends StatefulWidget {
  const LevelProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  _LevelProgressBarState createState() => _LevelProgressBarState();
}

class _LevelProgressBarState extends State<LevelProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  int currentScore = 0;
  int maxScore = 1000; // Assuming max score is 1000 for example
  int currentLevel = 1;
  int nextLevel = 2;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);

    // Fetch level progress when the widget is initialized
    fetchLevelProgress();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(LevelProgressBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    _animationController.animateTo(currentScore / maxScore);
  }

  Future<void> fetchLevelProgress() async {
    // Fetch level progress from Firebase
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      String uid = user.uid;
      DocumentReference userDoc =
          FirebaseFirestore.instance.collection('users').doc(uid);
      DocumentSnapshot snapshot = await userDoc.get();
      if (snapshot.exists) {
        Map<String, dynamic> userData =
            snapshot.data() as Map<String, dynamic>;
        setState(() {
          currentScore = userData['levelProgress'] ?? 0;
        });
        // Ensure current score does not exceed max score
        if (currentScore > maxScore) {
          setState(() {
            currentScore = maxScore;
          });
        }
        _animationController.animateTo(currentScore / maxScore);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(65, 158, 158, 158),
                      Color.fromARGB(65, 158, 158, 158),
                    ],
                  ),
                ),
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  return AnimatedBuilder(
                    animation: _animation,
                    builder: (context, child) {
                      return Container(
                        height: 33,
                        width: constraints.maxWidth * _animation.value,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 172, 44, 34),
                              Color.fromARGB(255, 105, 33, 11),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              Positioned(
                left: 0,
                top: 1,
                child: _buildLevelIndicator(
                    context, currentLevel.toString(), true),
              ),
              Positioned(
                right: 0,
                top: 1,
                child: _buildLevelIndicator(
                    context, nextLevel.toString(), false),
              ),
              Positioned(
                top: 5, // Adjust this value as needed
                left: 150, // Adjust the offset
                child: Text(
                  '$currentScore/$maxScore',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLevelIndicator(
      BuildContext context, String level, bool isCurrent) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: LinearGradient(
          colors: isCurrent
              ? [
                  Color.fromARGB(115, 97, 4, 4).withOpacity(0.6),
                  Color.fromARGB(115, 92, 4, 4).withOpacity(0.6)
                ]
              : [
                  Color.fromARGB(115, 105, 104, 104).withOpacity(0.4),
                  Color.fromARGB(115, 155, 139, 139).withOpacity(0.4)
                ],
        ),
      ),
      child: Text(
        level,
        style: TextStyle(
          color: isCurrent ? Colors.white : Colors.grey.withOpacity(0.5),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
