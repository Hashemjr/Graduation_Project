import 'bloc/home_page_container_bloc.dart';
import 'models/home_page_container_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:chineasy/presentation/courses_test_container_page/courses_test_container_page.dart';
import 'package:chineasy/presentation/profile_state_test_page/profile_state_test_page.dart';
import 'package:chineasy/widgets/custom_bottom_bar.dart';
import 'package:chineasy/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePageContainerScreen extends StatelessWidget {
  HomePageContainerScreen({Key? key})
      : super(
          key: key,
        );

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
            bottomNavigationBar: _buildNavigationBar(context),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: CustomImageView(
                imagePath: ImageConstant.imgThumbsUp,
                height: 26.5.v,
                width: 26.5.h,
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
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
                SizedBox(width: 12),
                Padding(
                  padding: EdgeInsets.only(top: 15.5), // Adjusted top padding
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_welcome_harry".tr,
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
                CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 48,
                  width: 48,
                  margin: EdgeInsets.only(top: 12.v),
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
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 10.h), // Adjusted horizontal padding
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 2.h), // Adjusted horizontal padding
              child: _buildCulture(
                context,
                currentLesson: "lbl_active_level".tr,
                text: "lbl_see_course".tr,
              ),
            ),
            SizedBox(height: 11.v),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: 2.h), // Adjusted horizontal margin
              padding: EdgeInsets.all(20.h),
              decoration:
                  AppDecoration.gradientOnErrorContainerToRed900011.copyWith(
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
                          margin: EdgeInsets.only(
                            top: 12.v,
                            bottom: 15.v,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 84.adaptSize,
                                width: 84.adaptSize,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: CircularProgressIndicator(
                                  value: 0.72, // Represents 72 percent
                                  strokeWidth:
                                      10.0, // Adjust the thickness of the circular line
                                  backgroundColor: Colors
                                      .transparent, // Make the background color transparent
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.white), // Glow white color
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  decoration: AppDecoration.outlinePrimary1,
                                  child: Text(
                                    "lbl_72".tr,
                                    style: CustomTextStyles
                                        .titleMediumPoppinsSemiBold,
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
                                  style: CustomTextStyles
                                      .titleMediumPoppinsSemiBold
                                      .copyWith(
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
                    text: "msg_continue_studying".tr,
                    buttonStyle: CustomButtonStyles.fillPrimary,
                    buttonTextStyle: CustomTextStyles.titleSmallGray900,
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
                    child: Container(
                      margin: EdgeInsets.only(top: 13.v),
                      decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgGoldenOpenBoo,
                            height: 82.v,
                            width: 86.h,
                            margin: EdgeInsets.only(top: 14.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 5.h,
                              top: 25.v,
                              bottom: 0.v,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  decoration: AppDecoration.outlineBlack,
                                  child: Text(
                                    "lbl".tr,
                                    style: CustomTextStyles
                                        .headlineSmallOnErrorContainer,
                                  ),
                                ),
                                SizedBox(height: 0.v),
                                Text(
                                  "lbl_meaning_travel".tr,
                                  style:
                                      CustomTextStyles.bodyLargeAlataBlack900,
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgDone,
                            height: 42.v,
                            width: 51.h,
                            margin: EdgeInsets.only(
                              left: 5.h,
                              top: 33.v,
                              bottom: 20.v,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgVoicePic,
                            height: 33.v,
                            width: 40.h,
                            margin: EdgeInsets.only(
                              left: 5.h,
                              top: 38.v,
                              bottom: 24.v,
                            ),
                          ),
                        ],
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
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20.h),
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
            Padding(
              padding: EdgeInsets.only(right: 6.h),
              child: _buildCulture(
                context,
                currentLesson: "lbl_culture".tr,
                text: "lbl_view_all".tr,
              ),
            ),
          ],
        ),
      ),
    );
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
              Align(
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
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text(
                    "lbl_clothing".tr,
                    style: theme.textTheme.headlineSmall,
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
              Align(
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
                      Align(
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text(
                            "lbl_craft".tr,
                            style: theme.textTheme.headlineSmall,
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

  /// Section Widget
  Widget _buildNavigationBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
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

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Courses:
        return AppRoutes.coursesTestContainerPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profileStateTestPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.coursesTestContainerPage:
        return CoursesTestContainerPage.builder(context);
      case AppRoutes.profileStateTestPage:
        return ProfileStateTestPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
