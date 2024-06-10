import 'package:chineasy/core/utils/navigator_service.dart';
import 'package:chineasy/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CourseScreen extends StatefulWidget {
  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  List<Lesson> lessons = [
    Lesson(title: "Lesson 1: Introduction to Tones", completed: false, path: AppRoutes.introCoursePage),
    Lesson(title: "Lesson 2: Basic Characters", completed: false, path: AppRoutes.Lesson_temp2),
    Lesson(title: "Lesson 3: Simple Sentences", completed: false, path: AppRoutes.Lesson_temp3),
    Lesson(title: "Lesson 4: Everyday Phrases", completed: false, path: AppRoutes.Lesson_temp4),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chinese Course'),
        backgroundColor: Color.fromARGB(255, 132, 0, 0),
      ),
      body:Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [Colors.black, Colors.grey[900]!],
            ),
          ),
          child: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 10),
              child: Text(
                'Course Progress',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            SizedBox(height: 20),
            LinearPercentIndicator(
              lineHeight: 20.0,
              percent: _calculateProgress(),
              center: Text(
                "${(_calculateProgress() * 100).toStringAsFixed(0)}%",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.grey[300],
              progressColor: Color.fromARGB(255, 132, 0, 0),
            ),
            SizedBox(height: 20),
            Spacer(),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 132, 0, 0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              padding: EdgeInsets.only(top: 40,bottom: 100,left: 10,right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Beginner Course',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  SizedBox(height: 80),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: lessons.length,
                    itemBuilder: (context, index) {
                      return _buildLessonItem(lessons[index]);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }

  double _calculateProgress() {
    int completedLessons = lessons.where((lesson) => lesson.completed).length;
    return completedLessons / lessons.length;
  }

  void _showCompletionAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor:Color.fromARGB(255, 121, 8, 0),
          title: Text("Congratulations!",),
          content: Text("You have completed your first course!"),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
    Future.delayed(Duration(seconds: 2), () {
      NavigatorService.pushNamed(AppRoutes.homePageContainerScreen);
    });
  }

  Widget _buildLessonItem(Lesson lesson) {
    return Slidable(
      key: ValueKey(lesson.title),
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              setState(() {
                lesson.completed = true;
                if (_calculateProgress() == 1.0) {
                  _showCompletionAlert();
                }
              });
            },
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            icon: lesson.completed ? Icons.check : Icons.done,
            label: lesson.completed ? 'Completed' : 'Mark as Done',
          ),
        ],
      ),
      child: ListTile(
        title: Text(lesson.title),
        trailing: Icon(
          lesson.completed ? Icons.check_circle : Icons.radio_button_unchecked,
          color: lesson.completed ? Colors.green : const Color.fromARGB(255, 255, 255, 255),
        ),
        onTap: () {
          NavigatorService.pushNamed(lesson.path);
        },
      ),
    );
  }
}

class Lesson {
  String title;
  bool completed;
  String path;

  Lesson({required this.title, this.completed = false, required this.path});
}

class LessonScreen extends StatelessWidget {
  final Lesson lesson;

  LessonScreen({required this.lesson});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(lesson.title),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Text(
          "Content for ${lesson.title}",
          style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
