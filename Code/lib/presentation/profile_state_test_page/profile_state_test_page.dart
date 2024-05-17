import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../profile_state_test_page/widgets/medalliontilelist_item_widget.dart';
import 'bloc/profile_state_test_bloc.dart';
import 'models/medalliontilelist_item_model.dart';
import 'models/profile_state_test_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:chineasy/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:chineasy/level_progress_bar.dart';
class ProfileStateTestBloc
    extends Bloc<ProfileStateTestEvent, ProfileStateTestState> {
  ProfileStateTestBloc(ProfileStateTestState initialState)
      : super(initialState) {
    on<ProfileStateTestInitialEvent>(_onInitialize);
  }
  void _onInitialize(
    ProfileStateTestInitialEvent event,
    Emitter<ProfileStateTestState> emit,
  ) async {
    emit(state.copyWith(
      profileStateTestModelObj: state.profileStateTestModelObj?.copyWith(
        medalliontilelistItemList: fillMedalliontilelistItemList(),
      ),
    ));
  }

  List<MedalliontilelistItemModel> fillMedalliontilelistItemList() {
    return [
      MedalliontilelistItemModel(
          imageId: ImageConstant.imgMedallions,
          courseName: "Essential Mandarin Course",
          id:'1'),
      MedalliontilelistItemModel(
          imageId: ImageConstant.imgMedallionsBlack900,
          courseName: "Advanced Mandarin Proficiency",
          id:'2'),
      MedalliontilelistItemModel(
          imageId: ImageConstant.medalgold,
          courseName: "Advanced Mandarin Proficiency",
          id:'3'),
    ];
  }
}

class ProfileStateTestPage extends StatefulWidget {
  final int? currentScore;
  final int? maxScore;
  final int? currentLevel;
  final int? nextLevel;
  //final String uid;
   ProfileStateTestPage({
    Key? key,
   required this.currentScore,
    required this.maxScore,
    required this.currentLevel,
    required this.nextLevel,}) : super(key: key);
  
  @override
  _ProfileStateTestPageState createState() => _ProfileStateTestPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileStateTestBloc>(
      create: (context) => ProfileStateTestBloc(ProfileStateTestState(
        profileStateTestModelObj: ProfileStateTestModel(),
      ))
        ..add(ProfileStateTestInitialEvent()),
      child: ProfileStateTestPage(currentScore: null, maxScore: null, currentLevel: null, nextLevel: null,),
    );
  }
}
class _ProfileStateTestPageState extends State<ProfileStateTestPage> {
  PageController _pageController = PageController();
  int _currentIndex = 0;
  late String username = '';
    @override
  void initState() {
    super.initState();
    fetchUsername(); // Call the function to fetch the word of the day
  }

  Future<void> fetchUsername() async {
    String usernameFromFirestore = await getUsernameFromFirestore();
    setState(() {
      username = usernameFromFirestore; // Save the username in the state
    });
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileStateTestBloc, ProfileStateTestState>(
      builder: (context, state) {
        return _buildProfileStateTestPage(context);
      },
    );
  }

 Widget _buildProfileStateTestPage(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: Container(
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
        child: Container(
          width: double.maxFinite,
          decoration: AppDecoration.background2,
          child: Column(
            children: [
  _buildBackgroundBlurStack(context),
  SizedBox(height: 4.v),
  Container(
    decoration: AppDecoration.outlinePrimary1,
    child: Text(
      "lbl_40".tr,
      style: CustomTextStyles.titleMediumPoppinsSemiBold,
    ),
  ),
  SizedBox(height: 2.v),
  Text(
    "lbl_friends".tr,
    style: CustomTextStyles.bodyMediumOutfitGray400,
  ),
  SizedBox(height: 12.v),
  Padding(
    padding: EdgeInsets.symmetric(horizontal: 40.h), // Adjust the padding as needed
    child: LevelProgressBar(
      currentScore: 600,  // Example value
      maxScore: 1000,     // Example value
      currentLevel: 1,    // Example value
      nextLevel: 2,       // Example value
    ),
  ),
  SizedBox(height: 20.v),
  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: () {
          _pageController.animateToPage(0,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut);
        },
        child: Text(
          "lbl_stats".tr.toUpperCase(),
          style: _currentIndex == 0
              ? CustomTextStyles.titleSmallInterDeeporangeA700
              : CustomTextStyles.titleSmallInterGray50001,
        ),
      ),
      SizedBox(width: 35.h),
      GestureDetector(
        onTap: () {
          _pageController.animateToPage(1,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut);
        },
        child: Text(
          "lbl_leaderboard".tr.toUpperCase(),
          style: _currentIndex == 1
              ? CustomTextStyles.titleSmallInterDeeporangeA700
              : CustomTextStyles.titleSmallInterGray50001,
        ),
      ),
    ],
  ),
  SizedBox(height: 20.v),
  Expanded(
    child: PageView(
      controller: _pageController,
      onPageChanged: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      children: [
        _buildStatsPage(context),
        SingleChildScrollView(
          child: _buildLeaderboardPage(context),
        ),
      ],
    ),
  ),
],

          ),
        ),
      ),
      bottomNavigationBar:CurvedNavigationBar(
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
                index: 2,
                onTap: (index) async {
                  if (index == 0) {
                    // Navigate to the first screen
                    await Future.delayed(Duration(milliseconds: 140));
                    NavigatorService.pushNamed(
                      AppRoutes.coursesTestContainerPage,
                    );
                  } else if (index == 1) {
                    // Navigate to the second screen
                    await Future.delayed(Duration(milliseconds: 140));
                    NavigatorService.pushNamed(
                      AppRoutes.homePageContainerScreen,
                    );
                  } else if (index == 2) {
                    // Navigate to the third screen
                    NavigatorService.pushNamed(
                      AppRoutes.profileStateTestPage,
                    );
                  }
                },
              ),
    ),
    
  );
}

  Widget _buildBackgroundBlurStack(BuildContext context) {
    return SizedBox(
      height: 188.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBackgroundBlur,
            height: 187.v,
            width: 216.h,
            alignment: Alignment.centerLeft,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBackgroundBlur188x200,
            height: 188.v,
            width: 200.h,
            alignment: Alignment.centerRight,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 26.v),
              child: Text(
                '${username}',
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 6.v),
              child: Text(
                "lbl_level_1".tr,
                style: CustomTextStyles.bodyMediumOutfitGray400,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 38.v,
                right: 15.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 95.v,
                    width: 83.h,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            height: 72.adaptSize,
                            width: 72.adaptSize,
                            margin: EdgeInsets.only(bottom: 5.v),
                            padding: EdgeInsets.symmetric(horizontal: 3.h),
                            decoration: AppDecoration.gradientPrimaryToOnPrimary
                                .copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder36,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgPeepsAvatarAlpha2,
                              height: 65.adaptSize,
                              width: 65.adaptSize,
                              alignment: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCameraIconPng,
                          height: 21.adaptSize,
                          width: 21.adaptSize,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(left: 4.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgFireFlamePng1,
                          height: 41.v,
                          width: 40.h,
                          alignment: Alignment.topRight,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 70.h,
                      top: 10.v,
                      bottom: 37.v,
                    ),
                    child: GestureDetector(
                      onTap: () => _showPopupMenu(context),
                      child: CustomIconButton(
                        height: 48.adaptSize,
                        width: 48.adaptSize,
                        padding: EdgeInsets.all(5.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGearPng1,
                          radius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatsPage(BuildContext context) {
    return Column(
      children: [
        _buildState1Row(context),
        SizedBox(height: 31.v),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 17.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_certifications".tr,
                    style: CustomTextStyles.titleSmallInterff9098a3,
                  ),
                  TextSpan(
                    text: "lbl_6".tr,
                    style: CustomTextStyles.titleSmallInterffb6b6b6,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        SizedBox(height: 18.v),
        _buildMedallionTileList(context),
        SizedBox(height: 52.v),
      ],
    );
  }

  Widget _buildLeaderboardPage(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          //height: 494.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.h,
                    vertical: 7.v,
                  ),
                  decoration:
                      AppDecoration.gradientOnErrorContainerToRed.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL36,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 116.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFirstPlaceBadge,
                              height: 25.v,
                              width: 17.h,
                              margin: EdgeInsets.only(top: 19.v),
                            ),
                            Container(
                              height: 46.v,
                              width: 39.h,
                              margin: EdgeInsets.only(left: 5.h),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgAvatar27,
                                    height: 34.adaptSize,
                                    width: 34.adaptSize,
                                    radius: BorderRadius.vertical(
                                      bottom: Radius.circular(17.h),
                                    ),
                                    alignment: Alignment.bottomLeft,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgCrownObliquely,
                                    height: 20.v,
                                    width: 21.h,
                                    alignment: Alignment.topRight,
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 18.v,
                                bottom: 5.v,
                              ),
                              child: Text(
                                '${username}',
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.v),
                      Padding(
                        padding: EdgeInsets.only(right: 116.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRewardBadgeWith,
                              height: 25.v,
                              width: 17.h,
                              margin: EdgeInsets.only(
                                top: 5.v,
                                bottom: 4.v,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgAvatar27,
                              height: 34.adaptSize,
                              width: 34.adaptSize,
                              radius: BorderRadius.vertical(
                                bottom: Radius.circular(17.h),
                              ),
                              margin: EdgeInsets.only(left: 5.h),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 6.v,
                                bottom: 4.v,
                              ),
                              child: Text(
                                "Anas__10",
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          right: 116.h,
                        ),
                        child: _buildFiveRow(
                          context,
                          textValue: "lbl_3".tr,
                          username: "MM",
                        ),
                      ),
                      SizedBox(height: 10.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          right: 116.h,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 6.v),
                              child: Text(
                                "lbl_4".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgAvatar27,
                              height: 34.adaptSize,
                              width: 34.adaptSize,
                              radius: BorderRadius.vertical(
                                bottom: Radius.circular(17.h),
                              ),
                              margin: EdgeInsets.only(left: 7.h),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 6.v,
                                bottom: 4.v,
                              ),
                              child: Text(
                                "Riskoo007",
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          right: 116.h,
                        ),
                        child: _buildFiveRow(
                          context,
                          textValue: "lbl_5".tr,
                          username: "GamerB",
                        ),
                      ),
                      SizedBox(height: 10.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          right: 116.h,
                        ),
                        child: _buildFiveRow(
                          context,
                          textValue: "lbl_6".tr,
                          username: "JOEEE",
                        ),
                      ),
                      SizedBox(height: 10.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          right: 116.h,
                        ),
                        child: _buildFiveRow(
                          context,
                          textValue: "lbl_7".tr,
                          username: "Youssef_ECU",
                        ),
                      ),
                      SizedBox(height: 10.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          right: 116.h,
                        ),
                        child: _buildFiveRow(
                          context,
                          textValue: "lbl_8".tr,
                          username: "HarryPotter",
                        ),
                      ),
                      SizedBox(height: 10.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          right: 116.h,
                        ),
                        child: _buildFiveRow(
                          context,
                          textValue: "lbl_9".tr,
                          username: "SHENO",
                        ),
                      ),
                      SizedBox(height: 10.v),
                      Padding(
                        padding: EdgeInsets.only(right: 116.h),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 6.v),
                              child: Text(
                                "lbl_10".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgAvatar27,
                              height: 34.adaptSize,
                              width: 34.adaptSize,
                              radius: BorderRadius.vertical(
                                bottom: Radius.circular(17.h),
                              ),
                              margin: EdgeInsets.only(left: 6.h),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 3.v,
                                bottom: 7.v,
                              ),
                              child: Text(
                                "JJ_15",
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.v),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
//buildonestack
  /// Section Widget
 /* Widget _buildOne(BuildContext context) {
    return OutlineGradientButton(
      padding: EdgeInsets.only(
        left: 2.h,
        top: 2.v,
        right: 2.h,
        bottom: 2.v,
      ),
      strokeWidth: 8.h,
      gradient: LinearGradient(
        begin: Alignment(0.07, 1),
        end: Alignment(0.99, 0.01),
        colors: [
          theme.colorScheme.onErrorContainer,
          appTheme.red90001,
        ],
      ),
      corners: Corners(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: CustomOutlinedButton(
        width: 24.h,
        text: "1",
      ),
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: Padding(
        padding: EdgeInsets.only(left: 50.h),
        child: OutlineGradientButton(
          padding: EdgeInsets.only(
            left: 2.h,
            top: 2.v,
            right: 2.h,
            bottom: 2.v,
          ),
          strokeWidth: 2.h,
          gradient: LinearGradient(
            begin: Alignment(0.07, 1),
            end: Alignment(0.99, 0.01),
            colors: [
              theme.colorScheme.onErrorContainer.withOpacity(0.53),
              appTheme.red90001.withOpacity(0.53),
            ],
          ),
          corners: Corners(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: CustomOutlinedButton(
            width: 24.h,
            text: "2",
            buttonStyle: CustomButtonStyles.outlineTL122,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBackgroundShowStack(BuildContext context) {
    return SizedBox(
      height: 32.v,
      width: 298.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 32.v,
                  width: 298.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        top: 1.5.h, // Adjust position as needed
                        left: 1.h, // Adjust position as needed
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width:200.h,
                            height: 27.h,
                            decoration: AppDecoration.gradientDeepOrangeAToRedA,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 1.5.h, // Adjust position as needed
                        left: 1.h, // Adjust position as needed
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Opacity(
                            opacity: 1,
                            child: Container(
                              width: 288.h,
                              height: 27.h,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.deepOrange.withOpacity(0.4),
                                    Colors.red.withOpacity(0.4)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 298.h,
                          margin: EdgeInsets.only(right: 10.h),
                          child: Row(
                            children: [
                              _buildOne(context),
                              Spacer(),
                              Opacity(
                                opacity: 0.6,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgSignal,
                                  height: 9.v,
                                  width: 10.h,
                                  margin: EdgeInsets.only(
                                    top: 7.v,
                                    bottom: 8.v,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 2.h,
                                  top: 4.v,
                                  bottom: 3.v,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_750".tr,
                                        style: CustomTextStyles
                                            .titleSmallInterfffffefd,
                                      ),
                                      TextSpan(
                                        text: "lbl_1000".tr,
                                        style: CustomTextStyles
                                            .titleSmallInter7fffffff,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              _buildTwo(context),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
*/

  Widget _buildFiveRow(
    BuildContext context, {
    required String textValue,
    required String username,
  }) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 6.v),
          child: Text(
            textValue,
            style: theme.textTheme.titleSmall!.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgAvatar27,
          height: 34.adaptSize,
          width: 34.adaptSize,
          radius: BorderRadius.vertical(
            bottom: Radius.circular(17.h),
          ),
          margin: EdgeInsets.only(left: 8.h),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(top: 6.v, bottom: 4.v),
          child: Text(
            username,
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildState1Row(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.h, right: 18.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 155.h,
            padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 10.v),
            decoration:
                AppDecoration.gradientOnErrorContainerToRed90001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder24,
              border: Border.all(color: Colors.transparent),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.v, bottom: 7.v),
                  child: SizedBox(
                    child: Padding(
                      padding: EdgeInsets.all(4.h),
                      child: Image.asset(
                        ImageConstant.imgQuizicon,
                        width: 27.h,
                        height: 27.h,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 30.h),
                  child: Column(
                    children: [
                      Text(
                        "lbl_3".tr,
                        style: CustomTextStyles.titleMediumInter,
                      ),
                      Text(
                        "lbl_quizzes".tr,
                        style: CustomTextStyles.labelLargeInterErrorContainer,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 155.h,
            margin: EdgeInsets.only(left: 18.h),
            padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 10.v),
            decoration:
                AppDecoration.gradientOnErrorContainerToRed90001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder24,
              border: Border.all(color: Colors.transparent),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.v, bottom: 7.v),
                  child: SizedBox(
                    child: Padding(
                      padding: EdgeInsets.all(4.h),
                      child: Image.asset(
                        ImageConstant.imgLeadboardIcon,
                        width: 27.h,
                        height: 27.h,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h, bottom: 3.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_22".tr,
                        style: CustomTextStyles.titleMediumInter,
                      ),
                      SizedBox(height: 1.v),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_leaderboard".tr,
                              style: CustomTextStyles.labelLargeInterff9098a3,
                            ),
                            TextSpan(text: " "),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMedallionTileList(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 189.v,
        child: BlocSelector<ProfileStateTestBloc, ProfileStateTestState,
            ProfileStateTestModel?>(
          selector: (state) => state.profileStateTestModelObj,
          builder: (context, profileStateTestModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 12.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 9.h);
              },
              itemCount:
                  profileStateTestModelObj?.medalliontilelistItemList.length ??
                      0,
              itemBuilder: (context, index) {
                MedalliontilelistItemModel model =
                    profileStateTestModelObj?.medalliontilelistItemList[index] ??
                        MedalliontilelistItemModel();
                return MedalliontilelistItemWidget(model);
              },
            );
          },
        ),
      ),
    );
  }
  void _showPopupMenu(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.all(10),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                    print("Change Username Selected");
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person,
                            color: const Color.fromARGB(
                                255, 0, 0, 0)), // Profile icon
                        SizedBox(width: 10),
                        Text('Change Username',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18)),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  thickness: 1.5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                    NavigatorService.pushNamed(
                      AppRoutes.resetPasswordScreen,
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock,
                            color: const Color.fromARGB(
                                255, 0, 0, 0)), // Lock icon
                        SizedBox(width: 10),
                        Text('Change Password',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18)),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  thickness: 1.5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                    print("Change Email Selected");
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.mail,
                            color: const Color.fromARGB(
                                255, 0, 0, 0)), // Mail icon
                        SizedBox(width: 10),
                        Text('Change Email',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18)),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  thickness: 1.5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                    NavigatorService.pushNamed(
                      AppRoutes.loginScreen,
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.exit_to_app,
                            color: const Color.fromARGB(
                                255, 0, 0, 0)), // Logout icon
                        SizedBox(width: 10),
                        Text('Logout',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
Future<String> getUsernameFromFirestore() async {
  User? user = FirebaseAuth.instance.currentUser;

  if (user != null) {
    String uid = user.uid;

    try {
      DocumentSnapshot snapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(uid)
          .get();

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
