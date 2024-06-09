import 'package:chineasy/presentation/courses/Lesson_Temp3/NumberGames.dart';
import 'package:chineasy/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class CountingExercise extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {'number': '1', 'chinese': '一', 'audio': 'yī'},
    {'number': '2', 'chinese': '二', 'audio': 'èr'},
    {'number': '3', 'chinese': '三', 'audio': 'sān'},
    {'number': '4', 'chinese': '四', 'audio': 'sì'},
    {'number': '5', 'chinese': '五', 'audio': 'wǔ'},
    {'number': '6', 'chinese': '六', 'audio': 'liù'},
    {'number': '7', 'chinese': '七', 'audio': 'qī'},
    {'number': '8', 'chinese': '八', 'audio': 'bā'},
    {'number': '9', 'chinese': '九', 'audio': 'jiǔ'},
    {'number': '10', 'chinese': '十', 'audio': 'shí'},
    {'number': '11', 'chinese': '十一', 'audio': 'shí yī'},
    {'number': '12', 'chinese': '十二', 'audio': 'shí èr'},
    {'number': '13', 'chinese': '十三', 'audio': 'shí sān'},
    {'number': '14', 'chinese': '十四', 'audio': 'shí sì'},
    {'number': '15', 'chinese': '十五', 'audio': 'shí wǔ'},
    {'number': '16', 'chinese': '十六', 'audio': 'shí liù'},
    {'number': '17', 'chinese': '十七', 'audio': 'shí qī'},
    {'number': '18', 'chinese': '十八', 'audio': 'shí bā'},
    {'number': '19', 'chinese': '十九', 'audio': 'shí jiǔ'},
    {'number': '20', 'chinese': '二十', 'audio': 'èr shí'},
  ];

  final FlutterTts flutterTts = FlutterTts();

  void playSound(String text) async {
    await flutterTts.setLanguage("zh-CN");
    await flutterTts.speak(text);
  }

  void showReadyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor:Color.fromARGB(255, 86, 6, 0),
        title: Text('Are you ready?'),
        content: Text('You are going to a game or a quiz. Are you ready?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NumberQuizScreen()),
              );
            },
            child: Text('Proceed'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 15),
              child: Text(
                'Counting Exercise',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  var item = items[index];
                  return GestureDetector(
                    onTap: () => playSound(item['audio']),
                    child: Card(
                      color: Color.fromARGB(255, 105, 0, 0), // Custom background color for the card
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            item['number'],
                            style: TextStyle(
                              fontSize: 60, // Increase font size for the number
                              fontWeight: FontWeight.bold,
                              color: Colors.white, // Number color
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            item['chinese'],
                            style: TextStyle(fontSize: 30, color: Colors.white), // Chinese character color
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 0.0),
              child: AnimatedButton(
                onPressed: () => showReadyDialog(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedButton extends StatefulWidget {
  final VoidCallback onPressed;

  const AnimatedButton({required this.onPressed});

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return 
       Padding(
         padding: const EdgeInsets.only(bottom: 20,top: 20),
         child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue, // Background color
            onPrimary: Colors.white, // Foreground color
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 25),
          ),
          onPressed: widget.onPressed,
          child: Text(
            'Done',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
             ),
       );
  }
}

void main() => runApp(MaterialApp(
  home: CountingExercise(),
  theme: ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.dark().copyWith(
      primary: Colors.blue,
      secondary: Colors.blueAccent,
    ),
  ),
));
