import 'package:chineasy/presentation/Flashcards/utils/methods.dart';
import 'package:flutter/services.dart';
import 'bloc/home_page_container_bloc.dart';
import 'models/home_page_container_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:chineasy/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import 'package:lottie/lottie.dart';
import 'dart:convert';
import 'dart:async';
import 'dart:math';

// ignore: must_be_immutable
class HomePageContainerScreen extends StatefulWidget {
  HomePageContainerScreen({Key? key}) : super(key: key);

  @override
  _HomePageContainerScreenState createState() =>
      _HomePageContainerScreenState();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomePageContainerBloc>(
      create: (context) => HomePageContainerBloc(HomePageContainerState(
        homePageContainerModelObj: HomePageContainerModel(),
      ))
        ..add(HomePageContainerInitialEvent()),
      child: HomePageContainerScreen(),
    );
  }
}

class _HomePageContainerScreenState extends State<HomePageContainerScreen> {
  late Future<Word> _wordOfTheDay;
  ValueNotifier<double> progressNotifier = ValueNotifier<double>(72.0);
  late String username = '';

  @override
  void initState() {
    super.initState();
    fetchUsername();
    _wordOfTheDay =
        getWordOfTheDay(); // Call the function to fetch the word of the day
  }

  Future<void> fetchUsername() async {
    String usernameFromFirestore = await getUsernameFromFirestore();
    setState(() {
      username = usernameFromFirestore; // Save the username in the state
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageContainerBloc, HomePageContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: SingleChildScrollView(
              child: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.5, 0),
                    end: Alignment(0.5, 1),
                    colors: [
                      appTheme.black900,
                      appTheme.gray90001,
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 547.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgBackgroundBlur,
                            height: 187.v,
                            width: 216.h,
                            alignment: Alignment.topLeft,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgBackgroundBlur188x200,
                            height: 188.v,
                            width: 200.h,
                            alignment: Alignment.topRight,
                          ),
                          _buildHeader(context),
                          _buildContinueStudying(context),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.v),
                    _buildCard1(context),
                    SizedBox(height: 34.v),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: CurvedNavigationBar(
              backgroundColor: Colors.transparent,
              items: <Widget>[
                Icon(
                  Icons.import_contacts_rounded,
                  size: 28.v,
                  color: Color.fromARGB(255, 191, 37, 17),
                ),
                Icon(
                  Icons.home_filled,
                  size: 28.v,
                  color: Color.fromARGB(255, 191, 37, 17),
                ),
                Icon(
                  Icons.person_rounded,
                  size: 28.v,
                  color: Color.fromARGB(255, 191, 37, 17),
                ),
              ],
              animationDuration: Duration(milliseconds: 150),
              height: 75,
              index: 1,
              onTap: (index) async {
                if (index == 0) {
                  await Future.delayed(Duration(milliseconds: 140));
                  // Navigate to the first screen
                  NavigatorService.pushNamed(
                      AppRoutes.coursesTestContainerPage);
                } else if (index == 1) {
                  // Navigate to the second screen
                  NavigatorService.pushNamed(AppRoutes.homePageContainerScreen);
                } else if (index == 2) {
                  await Future.delayed(Duration(milliseconds: 140));
                  // Navigate to the third screen
                  NavigatorService.pushNamed(AppRoutes.profileStateTestPage);
                }
                //Handle button tap
              },
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.fromLTRB(9.h, 21.v, 15.h, 464.v),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  clipBehavior: Clip.none, // This allows overflow
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.red,
                            Colors.white,
                          ],
                        ),
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgAvatar,
                        height: 48,
                        width: 48,
                        radius: BorderRadius.circular(24.h),
                        alignment: Alignment.center,
                      ),
                    ),
                    Positioned(
                      right: -10,
                      top: -17, // Adjust the top position as needed
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFireFlamePng1,
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 12.v),
                Padding(
                  padding: EdgeInsets.only(top: 10.v), // Adjusted top padding
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        username,
                        style: CustomTextStyles.bodyMediumOutfitGray400,
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        "msg_let_s_learn_together".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    NavigatorService.pushNamed(AppRoutes.objectDetectionScreen);
                  },
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCameraIconPng,
                    height: 48,
                    width: 48,
                    margin: EdgeInsets.only(top: 12.v),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
Widget _buildContinueStudying(BuildContext context) {
  return FutureBuilder<Word>(
    future: _wordOfTheDay,
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return CircularProgressIndicator();
      } else if (snapshot.hasError) {
        return Text('Error: ${snapshot.error}');
      } else if (!snapshot.hasData) {
        return Text('No word of the day available');
      } else {
        Word word = snapshot.data!;
        return Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h), // Adjusted horizontal padding
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.h), // Adjusted horizontal padding
                  child: GestureDetector(
                    onTap: () {
                      NavigatorService.pushNamed(AppRoutes.coursesTestContainerPage);
                    },
                    child: _buildCulture(
                      context,
                      currentLesson: "lbl_active_level".tr,
                      text: "lbl_see_course".tr,
                    ),
                  ),
                ),
                SizedBox(height: 11.v),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 2.h), // Adjusted horizontal margin
                  padding: EdgeInsets.all(20.h),
                  decoration: AppDecoration.gradientOnErrorContainerToRed900011.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder32,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 41.h),
                        child: Row(
                          children: [
                            Container(
                              height: 84.adaptSize,
                              width: 84.adaptSize,
                              margin: EdgeInsets.only(top: 12.v, bottom: 15.v),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    height: 84.adaptSize,
                                    width: 84.adaptSize,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: SimpleCircularProgressBar(
                                      progressColors: const [Color.fromARGB(255, 255, 255, 255)],
                                      backColor: Color.fromARGB(199, 71, 71, 71),
                                      progressStrokeWidth: 10,
                                      backStrokeWidth: 5,
                                      mergeMode: true,
                                      fullProgressColor: Colors.green,
                                      animationDuration: 3,
                                      valueNotifier: progressNotifier,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      decoration: AppDecoration.outlinePrimary1,
                                      child: Text(
                                        "lbl_72".tr,
                                        style: CustomTextStyles.titleMediumPoppinsSemiBold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_beginner_level".tr,
                                    style: CustomTextStyles.titleSmallGray50003,
                                  ),
                                  Text(
                                    "lbl_chapter_2".tr,
                                    style: CustomTextStyles.labelLargeGray50003,
                                  ),
                                  SizedBox(
                                    width: 153.h,
                                    child: Text(
                                      "msg_pinyin_chinese".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles.titleMediumPoppinsSemiBold.copyWith(
                                        height: 1.33,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 12.v),
                                  Text(
                                    "msg_continue_your_journey".tr,
                                    style: CustomTextStyles.bodySmallOnError,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 14.v),
                      CustomElevatedButton(
                        height: 44.v,
                        text: "Mulan Chatbot".tr,
                        buttonStyle: CustomButtonStyles.fillPrimary,
                        buttonTextStyle: CustomTextStyles.titleSmallGray900,
                        onPressed: () {
                          NavigatorService.pushNamed(AppRoutes.chatbotScreen);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.v),
                SizedBox(
                  height: 109.v,
                  width: 330.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: GestureDetector(
                          onTap: () {
                            // Play Lottie animation on tap
                            showDialog(
                              context: context,
                              builder: (context) => Dialog(
                                //backgroundColor: Colors.transparent, // No background color
                                child: Lottie.asset('assets/images/NEW_WORD_Animation.json'),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 5.v),
                            decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start, // Align to the left
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgGoldenOpenBoo,
                                  height: 82.v,
                                  width: 86.h,
                                  margin: EdgeInsets.only(top: 15.v, right: 0.h), // Adjusted margin
                                ),
                                SizedBox(width: 5.h), // Add spacing between image and text
                                Expanded(
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 25.v,right: 95), // Adjusted padding
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            decoration: AppDecoration.outlineBlack,
                                            child: Text(
                                              word.simplified,
                                              style: CustomTextStyles.headlineSmallOnErrorContainer,
                                            ),
                                          ),
                                          SizedBox(height: 0.v), // Adjusted spacing
                                          Text(
                                            word.english,
                                            style: CustomTextStyles.bodyLargeAlataBlack900,
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                // Other widgets...
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 36.v,
                          width: 330.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  height: 33.v,
                                  width: 330.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.vertical(top: Radius.circular(20.h)),
                                    gradient: LinearGradient(
                                      begin: Alignment(0.07, 1),
                                      end: Alignment(0.99, 0.01),
                                      colors: [
                                        theme.colorScheme.onErrorContainer,
                                        appTheme.red90001,
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  decoration: AppDecoration.outlineBlack,
                                  child: Text(
                                    "lbl_word_of_the_day".tr,
                                    style: CustomTextStyles.bodyLargePoppinsPrimary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.v),
                GestureDetector(
                  onTap: () {
                    NavigatorService.pushNamed(AppRoutes.FlashcardsHomePage);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 6.h),
                    child: _buildCulture(
                      context,
                      currentLesson: "lbl_culture".tr,
                      text: "lbl_view_all".tr,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    },
  );
}
}

/// Section Widget
Widget _buildCard(BuildContext context) {
  return Row(
    children: [
      Container(
        height: 95.v,
        width: 167.h,
        margin: EdgeInsets.symmetric(vertical: 17.v),
        decoration: AppDecoration.outlineRed,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 95.v,
                width: 150.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(0.07, 1),
                    end: Alignment(0.99, 0.01),
                    colors: [
                      theme.colorScheme.onErrorContainer,
                      appTheme.red90001,
                    ],
                  ),
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgDecore91x92,
              height: 91.v,
              width: 92.h,
              alignment: Alignment.topRight,
            ),
            GestureDetector(
              onTap: () {
                loadSession(context: context, topic: "Craft");
              },
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 17.h, top: 8.v), // Adjusted top padding
                  child: Text(
                    "lbl_craft".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        height: 98.v,
        width: 171.h,
        margin: EdgeInsets.only(
          left: 2.h,
          top: 16.v,
          bottom: 16.v,
        ),
        decoration: AppDecoration.outlineRed,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 95.v,
                width: 150.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(0.07, 1),
                    end: Alignment(0.99, 0.01),
                    colors: [
                      theme.colorScheme.onErrorContainer,
                      appTheme.red90001,
                    ],
                  ),
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgDecore,
              height: 93.v,
              width: 78.h,
              alignment: Alignment.bottomRight,
            ),
            GestureDetector(
              onTap: () {
                loadSession(context: context, topic: "Costumes");
              },
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text(
                    "lbl_clothing".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        height: 131.v,
        width: 240.h,
        margin: EdgeInsets.only(left: 2.h),
        decoration: AppDecoration.outlineRed,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 131.v,
                width: 206.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(0.07, 1),
                    end: Alignment(0.99, 0.01),
                    colors: [
                      theme.colorScheme.onErrorContainer,
                      appTheme.red90001,
                    ],
                  ),
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgNoodlePic,
              height: 114.v,
              width: 188.h,
              alignment: Alignment.bottomRight,
            ),
            GestureDetector(
              onTap: () {
                loadSession(context: context, topic: "Food");
              },
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 9.h,
                    top: 24.v, // Adjusted top padding
                  ),
                  child: Text(
                    "lbl_food".tr,
                    style: CustomTextStyles.displaySmallPoppins,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: Padding(
          padding: EdgeInsets.only(
            left: 2.h,
            top: 14.v,
            bottom: 14.v,
          ),
          child: Row(
            children: [
              Container(
                height: 102.v,
                width: 179.h,
                decoration: AppDecoration.outlineRed,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 95.v,
                        width: 150.h,
                        margin: EdgeInsets.only(left: 1.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20.h,
                          ),
                          gradient: LinearGradient(
                            begin: Alignment(0.07, 1),
                            end: Alignment(0.99, 0.01),
                            colors: [
                              theme.colorScheme.onErrorContainer,
                              appTheme.red90001,
                            ],
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgDecore99x81,
                      height: 99.v,
                      width: 81.h,
                      alignment: Alignment.centerRight,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgDecore61x40,
                      height: 61.v,
                      width: 40.h,
                      alignment: Alignment.topLeft,
                    ),
                    GestureDetector(
                      onTap: () {
                        loadSession(context: context, topic: "Traditions");
                      },
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 14.h,
                            bottom: 14.v,
                          ),
                          child: Text(
                            "lbl_festivals".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 95.v,
                width: 167.h,
                margin: EdgeInsets.only(
                  left: 2.h,
                  top: 3.v,
                  bottom: 3.v,
                ),
                decoration: AppDecoration.outlineRed,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 95.v,
                        width: 150.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20.h,
                          ),
                          gradient: LinearGradient(
                            begin: Alignment(0.07, 1),
                            end: Alignment(0.99, 0.01),
                            colors: [
                              theme.colorScheme.onErrorContainer,
                              appTheme.red90001,
                            ],
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgDecore91x92,
                      height: 91.v,
                      width: 92.h,
                      alignment: Alignment.topRight,
                    ),
                    GestureDetector(
                      onTap: () {
                        loadSession(context: context, topic: "Craft");
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text(
                            "lbl_craft".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

/// Section Widget
Widget _buildCard1(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: IntrinsicWidth(
      child: _buildCard(context),
    ),
  );
}

/// Common widget
Widget _buildCulture(
  BuildContext context, {
  required String currentLesson,
  required String text,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        currentLesson,
        style: CustomTextStyles.titleMediumPoppinsMedium.copyWith(
          color: theme.colorScheme.primary,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(
          top: 4.v,
          bottom: 2.v,
        ),
        child: Text(
          text,
          style: CustomTextStyles.labelLargeBlue400.copyWith(
            color: appTheme.blue400,
          ),
        ),
      ),
    ],
  );
}

Future<String> getUsernameFromFirestore() async {
  User? user = FirebaseAuth.instance.currentUser;

  if (user != null) {
    String uid = user.uid;

    try {
      DocumentSnapshot snapshot =
          await FirebaseFirestore.instance.collection('users').doc(uid).get();

      if (snapshot.exists) {
        String username = snapshot['username'];
        return username;
      } else {
        return 'User document not found';
      }
    } catch (e) {
      print('Error fetching user data: $e');
      return 'Error fetching user data';
    }
  } else {
    return 'User not signed in';
  }
}

class Word {
  final String simplified;
  final String english;

  Word({required this.simplified, required this.english});

  factory Word.fromJson(Map<String, dynamic> json) {
    return Word(
      simplified: json['simplified'],
      english: json['english'],
    );
  }
}

Future<List<Word>> fetchWords() async {
  final String response =
      await rootBundle.loadString('assets/images/hsk1.json');
  final Map<String, dynamic> data = json.decode(response);
  final List<dynamic> wordsJson = data['words'];
  return wordsJson.map((json) => Word.fromJson(json)).toList();
}

Future<Word> getWordOfTheDay() async {
  List<Word> words = await fetchWords();
  // Get the current time
  DateTime now = DateTime.now();
  // Use the current time to generate a random index within the range of the word list
  int randomIndex = Random(now.millisecondsSinceEpoch).nextInt(words.length);
  // Return the randomly selected word
  return words[randomIndex];
}
