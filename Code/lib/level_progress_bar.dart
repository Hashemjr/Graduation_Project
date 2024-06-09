import 'package:flutter/material.dart';

class LevelProgressBar extends StatefulWidget {
  final int currentScore;
  final int maxScore;
  final int currentLevel;
  final int nextLevel;

  const LevelProgressBar({
    Key? key,
    required this.currentScore,
    required this.maxScore,
    required this.currentLevel,
    required this.nextLevel,
  }) : super(key: key);

  @override
  _LevelProgressBarState createState() => _LevelProgressBarState();
}

class _LevelProgressBarState extends State<LevelProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(LevelProgressBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    _animationController.animateTo(widget.currentScore / widget.maxScore);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 33,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: LinearGradient(
                    colors: [
                      Colors.grey.withOpacity(0.2),
                      Colors.grey.withOpacity(0.2),
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
                          gradient: LinearGradient(
                            colors: [
                              const Color.fromARGB(255, 172, 44, 34),
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
                    context, widget.currentLevel.toString(), true),
              ),
              Positioned(
                right: 0,
                top: 1,
                child: _buildLevelIndicator(
                    context, widget.nextLevel.toString(), false),
              ),
              Positioned(
                top: 5, // Adjust this value as needed
                left: 150, // Adjust the offset
                child: Text(
                  '${widget.currentScore}/${widget.maxScore}',
                  style: TextStyle(
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
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
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
