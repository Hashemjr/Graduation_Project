import 'package:chineasy/presentation/courses/course_screen.dart';
import 'package:chineasy/theme/theme_helper.dart';
import 'package:flutter/material.dart';

class InsideCoursesScreen extends StatelessWidget {
  const InsideCoursesScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        appBar: null,
        body: ListView(
          children: [
            InsideCourses(),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: InsideCourses(),
    );
  }
}

class InsideCourses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [appTheme.black900, appTheme.gray90001])),
          child: Stack(
            children: [
              Positioned(
                left: -20,
                top: 330,
                child: Container(
                  width: 530,
                  height: 35,
                  decoration: ShapeDecoration(
                    color: Color(0xFF650C01),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(99),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 60,
                top: 59,
                child: SizedBox(
                  width: 250,
                  child: Text(
                    "Chinese HSK 1",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFE16556),
                      fontSize: 35,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.03,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 95,//100
                top: 347,
                child: SizedBox(
                  width: 200,
                  child: Text(
                    'About this course',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.16,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -21,
                top: 575,
                child: Container(
                  width: 600,
                  height: 37,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 800,
                          height: 35,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.95, 0.31),
                              end: Alignment(-0.95, -0.31),
                              colors: [Color(0xFF560900), Color(0xFF9A2212)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(99),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 122,//130
                        top: 15,
                        child: SizedBox(
                          width: 220,
                          child: Text(
                            'After completion badge',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0.16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 50,
                top: 20,
                child: SizedBox(
                  width: 250,
                  child: Text(
                    '',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.14,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bronze_icon_1_x2.svg"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 18,//30
                top: 457,
                child: Container(
                  width: 348,
                  height: 100,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 112,
                          height: 100,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.95, 0.31),
                              end: Alignment(-0.95, -0.31),
                              colors: [Color(0xFF560900), Color(0xFF9A2212)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 237.61,
                        top: 0,
                        child: Container(
                          width: 112,
                          height: 100,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.95, 0.31),
                              end: Alignment(-0.95, -0.31),
                              colors: [Color(0xFF560900), Color(0xFF9A2212)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 118.80,
                        top: 0,
                        child: Container(
                          width: 112,
                          height: 100,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.95, 0.31),
                              end: Alignment(-0.95, -0.31),
                              colors: [Color(0xFF560900), Color(0xFF9A2212)],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 19,
                top: 401,
                child: Text(
                  '150 Words, 300 Example Sentences, with Audio',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.19,
                  ),
                ),
              ),
              Positioned(
                left: 15,
                top: 637,
                child: Container(
                  width: 340,
                  height: 102.92,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 20,
                        top: 0,
                        child: Container(
                          width: 314,
                          height: 102.92,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Color(0xCCF3F2F1)),
                              borderRadius: BorderRadius.circular(24.77),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 91,
                        top: 67,
                        child: Container(
                          width: 132.53,
                          height: 27.20,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 132.53,
                                  height: 27.20,
                                  decoration: ShapeDecoration(
                                    color: Color(0x3FD0C6AA),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(9.91),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 2.48,
                                top: 3.71,
                                child: SizedBox(
                                  width: 127.57,
                                  height: 19.78,
                                  child: Text(
                                    'Bronze Certified',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFFA59E8E),
                                      fontSize: 14.86,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                      letterSpacing: 0.02,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 82,
                        top: 16,
                        child: SizedBox(
                          width: 151,
                          height: 44,
                          child: Text(
                            'Beginner Chinese HSK 1',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: 0.02,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 30,
                        top: 25,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 45.5,
                            height: 47.5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/Vector.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 55,//71
                top: 124,
                child: Container(
                  width: 250,
                  height: 41,
                  child: Stack(
                    children: [
                       Positioned(
            left: 25,
            top: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CourseScreen()),
                );
              },
              child: Container(
                width: 218,
                height: 41,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Enroll Now',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.09,
                    ),
                  ),
                ),
              ),
            ),
          ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 233,
                top: 610,
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/chinese_man.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 302,
                top: 0,
                child: Container(
                  width: 103.02,
                  height: 120.44,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/decore.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 15,//25
                top: 440,
                child: Container(
                  width: 117,
                  height: 78,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/sound_speakers.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 120,//130
                top: 457.07,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-0.13),
                  child: Container(
                    width: 129.18,
                    height: 51.88,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/five_stars.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 255,//265
                top: 420,
                child: Container(
                  width: 110,
                  height: 99,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/cute_childrens_book.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 28,//38
                top: 530,
                child: SizedBox(
                  width: 95,
                  height: 93,
                  child: Text(
                    '450 audio',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.16,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 146,//156
                top: 530,
                child: SizedBox(
                  width: 95.67,
                  height: 93,
                  child: Text(
                    '90 ratings',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.16,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 258,//268
                top: 530,
                child: SizedBox(
                  width: 110.39,
                  height: 93,
                  child: Text(
                    '3.9k enrolled',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.16,
                    ),
                  ),
                ),
              ),
              Positioned(
                left:23,//MediaQuery.of(context).size.width / 2 - 175,
                top: 187,
                
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 50,
                  height: 144,
                  child: Text(
                    "Welcome to our Chinese HSK 1 course, designed to introduce you to the basics of Mandarin Chinese! Whether you're a complete beginner or looking to brush up on your language skills",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      height: 1.2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}