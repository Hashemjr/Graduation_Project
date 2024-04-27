import 'bloc/profile_leaderboard_bloc.dart';
import 'models/profile_leaderboard_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:chineasy/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// ignore: must_be_immutable
class ProfileLeaderboardScreen extends StatelessWidget {
  ProfileLeaderboardScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileLeaderboardBloc>(
      create: (context) => ProfileLeaderboardBloc(ProfileLeaderboardState(
        profileLeaderboardModelObj: ProfileLeaderboardModel(),
      ))
        ..add(ProfileLeaderboardInitialEvent()),
      child: ProfileLeaderboardScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileLeaderboardBloc, ProfileLeaderboardState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
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
              child: SingleChildScrollView(
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
                    _buildOneStack(context),
                    SizedBox(height: 14.v),
                    Padding(
                      padding: EdgeInsets.only(right: 45.h, left: 120.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: FractionalOffset(150.0,
                                0.0), // Adjust these values to move the text
                            child: Text(
                              "lbl_leaderboard".tr.toUpperCase(),
                              style: CustomTextStyles
                                  .titleSmallInterDeeporangeA700,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 29.h,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                NavigatorService.pushNamed(
                                    AppRoutes.profileStateTestPage);
                              },
                              child: Text(
                                "lbl_stats".tr,
                                style:
                                    CustomTextStyles.titleSmallInterGray50001,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 9.v),
                    SizedBox(
                      height: 494.v,
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
                              decoration: AppDecoration
                                  .gradientOnErrorContainerToRed
                                  .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL36,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 116.h),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgFirstPlaceBadge,
                                          height: 25.v,
                                          width: 17.h,
                                          margin: EdgeInsets.only(top: 19.v),
                                          icon: '',
                                        ),
                                        Container(
                                          height: 46.v,
                                          width: 39.h,
                                          margin: EdgeInsets.only(left: 5.h),
                                          child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgAvatar27,
                                                height: 34.adaptSize,
                                                width: 34.adaptSize,
                                                radius: BorderRadius.vertical(
                                                  bottom: Radius.circular(17.h),
                                                ),
                                                alignment: Alignment.bottomLeft,
                                                icon: '',
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgCrownObliquely,
                                                height: 20.v,
                                                width: 21.h,
                                                alignment: Alignment.topRight,
                                                icon: '',
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
                                            "lbl_harrypotter10".tr,
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
                                          imagePath:
                                              ImageConstant.imgRewardBadgeWith,
                                          height: 25.v,
                                          width: 17.h,
                                          margin: EdgeInsets.only(
                                            top: 5.v,
                                            bottom: 4.v,
                                          ),
                                          icon: '',
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgAvatar27,
                                          height: 34.adaptSize,
                                          width: 34.adaptSize,
                                          radius: BorderRadius.vertical(
                                            bottom: Radius.circular(17.h),
                                          ),
                                          margin: EdgeInsets.only(left: 5.h),
                                          icon: '',
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 6.v,
                                            bottom: 4.v,
                                          ),
                                          child: Text(
                                            "lbl_harrypotter12".tr,
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
                                      username: "lbl_harrypotter10".tr,
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
                                          padding: EdgeInsets.symmetric(
                                              vertical: 6.v),
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
                                          icon: '',
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 6.v,
                                            bottom: 4.v,
                                          ),
                                          child: Text(
                                            "lbl_harrypotter10".tr,
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
                                      username: "lbl_harrypotter10".tr,
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
                                      username: "lbl_harrypotter10".tr,
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
                                      username: "lbl_harrypotter10".tr,
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
                                      username: "lbl_harrypotter10".tr,
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
                                      username: "lbl_harrypotter10".tr,
                                    ),
                                  ),
                                  SizedBox(height: 10.v),
                                  Padding(
                                    padding: EdgeInsets.only(right: 116.h),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 6.v),
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
                                          icon: '',
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 3.v,
                                            bottom: 7.v,
                                          ),
                                          child: Text(
                                            "lbl_harrypotter10".tr,
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
              index: 2,
              onTap: (index) {
                if (index == 0) {
                  // Navigate to the first screen
                  NavigatorService.pushNamed(
                    AppRoutes.coursesTestContainerPage,
                  );
                } else if (index == 1) {
                  // Navigate to the second screen
                  NavigatorService.pushNamed(
                    AppRoutes.homePageContainerScreen,
                  );
                } else if (index == 2) {
                  // Navigate to the third screen
                  NavigatorService.pushNamed(
                    AppRoutes.profileStateTestPage,
                  );
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
            icon: '',
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBackgroundBlur188x200,
            height: 188.v,
            width: 200.h,
            alignment: Alignment.centerRight,
            icon: '',
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 38.v,
                right: 3.h,
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
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.only(bottom: 5.v),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusStyle.circleBorder36,
                            ),
                            child: Container(
                              height: 72.adaptSize,
                              width: 72.adaptSize,
                              padding: EdgeInsets.symmetric(horizontal: 3.h),
                              decoration: AppDecoration
                                  .gradientPrimaryToOnPrimary
                                  .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder36,
                              ),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      height: 46.v,
                                      width: 50.h,
                                      margin: EdgeInsets.only(top: 9.v),
                                      decoration: BoxDecoration(),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgPeepsAvatarAlpha2,
                                    height: 65.adaptSize,
                                    width: 65.adaptSize,
                                    alignment: Alignment.bottomCenter,
                                    icon: '',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCameraIconPng,
                          height: 21.adaptSize,
                          width: 21.adaptSize,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(left: 4.h),
                          icon: '',
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgFireFlamePng1,
                          height: 41.v,
                          width: 40.h,
                          alignment: Alignment.topRight,
                          icon: '',
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 53.adaptSize,
                    width: 53.adaptSize,
                    margin: EdgeInsets.only(
                      left: 77.h,
                      top: 8.v,
                      bottom: 34.v,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white.withOpacity(
                            0.6), // You can adjust the color of the border
                        width: 1.0, // You can adjust the width of the border
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGearPng1,
                          height: 37.adaptSize,
                          width: 37.adaptSize,
                          alignment: Alignment.center,
                          icon: '',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 26.v),
              child: Text(
                "lbl_harrypotter10".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 9.v),
              child: Text(
                "lbl_level_1".tr,
                style: CustomTextStyles.bodyMediumOutfitGray400,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOneStack(BuildContext context) {
    return SizedBox(
      height: 32.v,
      width: 298.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup289345,
            height: 32.v,
            width: 298.h,
            alignment: Alignment.center,
            icon: '',
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.fromLTRB(3.h, 3.v, 3.h, 3.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlineGradientButton(
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
                        theme.colorScheme.onErrorContainer,
                        appTheme.red90001,
                      ],
                    ),
                    corners: Corners(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                    child: CustomOutlinedButton(
                      width: 24.h,
                      text: "lbl_1".tr,
                    ),
                  ),
                  Spacer(
                    flex: 66,
                  ),
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
                      icon: '',
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
                            style: CustomTextStyles.titleSmallInterfffffefd,
                          ),
                          TextSpan(
                            text: "lbl_1000".tr,
                            style: CustomTextStyles.titleSmallInter7fffffff,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Spacer(
                    flex: 33,
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: SizedBox(
                      height: 25.v,
                      width: 24.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup288910,
                            height: 25.v,
                            width: 24.h,
                            alignment: Alignment.center,
                            icon: '',
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "lbl_2".tr,
                              style: CustomTextStyles.titleSmallInter,
                            ),
                          ),
                        ],
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

  /// Common widget
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
          icon: '',
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 6.v,
            bottom: 4.v,
          ),
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
}
