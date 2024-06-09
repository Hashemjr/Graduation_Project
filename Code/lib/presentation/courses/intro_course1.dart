import 'package:chineasy/presentation/courses/Lesson_Temp/lesson_temp.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/services.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      title: 'Chinese Tones Introduction',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const IntroCoursePage(),
    );
  }
}

class IntroCoursePage extends StatefulWidget {
  const IntroCoursePage({super.key});

  @override
  IntroCoursePageState createState() => IntroCoursePageState();
}

class IntroCoursePageState extends State<IntroCoursePage> {
  final introKey = GlobalKey<IntroductionScreenState>();
  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/images/begin/$assetName', width: width);
  }
  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 21.0,color: Color.fromARGB(234, 255, 255, 255));
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w700,color: Colors.white),
      bodyTextStyle: bodyStyle,
      fullScreen: false,
      contentMargin : const EdgeInsets.all(16.0),
      pageMargin : const EdgeInsets.only(bottom: 0.0),
      titlePadding : const EdgeInsets.only(top: 20.0, bottom: 30.0),
      footerPadding : const EdgeInsets.symmetric(vertical: 10.0),
      //bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Color.fromARGB(255, 132, 0, 0),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Color.fromARGB(255, 0, 0, 0),
      pages: [
        PageViewModel(
          title: "Welcome to Chinese Tones",
          body: "In this lesson, you will learn about the different tones in the Chinese language.",
          image: _buildImage('tones_intro.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "First Tone",
          body: "The first tone is high and level. It's like singing a high note. For example: 妈 (mā) means 'mother'.",
          image: _buildImage('first_tone.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Second Tone",
          body: "The second tone rises from mid to high pitch. It's like asking a question. For example: 麻 (má) means 'hemp'.",
          image: _buildImage('second_tone.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Third Tone",
          body: "The third tone starts mid, dips to low, then rises again. For example: 马 (mǎ) means 'horse'.",
          image: _buildImage('third_tone.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Fourth Tone",
          body: "The fourth tone starts high and drops sharply to low. For example: 骂 (mà) means 'scold'.",
          image: _buildImage('fourth_tone.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Start Learning!!",
          body: "You are now ready to start learning Chinese tones! Click the button below to begin.",
          image: _buildImage('start_learning.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lessontemp()),
                );
              },
      onSkip: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Lessontemp()),
                );
              },
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w700)),
      next: const Icon(Icons.arrow_forward_rounded),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w700)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(24.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Color.fromARGB(255, 20, 0, 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}

class LearningPage extends StatelessWidget {
  const LearningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const Text("This is the learning screen"),
      ),
    );
  }
}
