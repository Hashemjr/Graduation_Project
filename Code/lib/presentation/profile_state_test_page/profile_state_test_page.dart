import '../profile_state_test_page/widgets/medalliontilelist_item_widget.dart';
import 'bloc/profile_state_test_bloc.dart';
import 'models/medalliontilelist_item_model.dart';
import 'models/profile_state_test_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:chineasy/widgets/custom_icon_button.dart';
import 'package:chineasy/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// ignore_for_file: must_be_immutable
class ProfileStateTestPage extends StatelessWidget {
  const ProfileStateTestPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileStateTestBloc>(
      create: (context) => ProfileStateTestBloc(ProfileStateTestState(
        profileStateTestModelObj: ProfileStateTestModel(),
      ))
        ..add(ProfileStateTestInitialEvent()),
      child: ProfileStateTestPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
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
                _buildBackgroundShowStack(context),
                SizedBox(height: 14.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 30.h),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            NavigatorService.pushNamed(
                                AppRoutes.profileLeaderboardScreen);
                          },
                          child: Text(
                            "lbl_leaderboard".tr.toUpperCase(),
                            style: CustomTextStyles.titleSmallInterGray50001,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 29.h),
                          child: Text(
                            "lbl_stats".tr,
                            style:
                                CustomTextStyles.titleSmallInterDeeporangeA700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30.v),
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
                              icon: '',
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
                  Padding(
                    padding: EdgeInsets.only(
                      left: 70.h,
                      top: 10.v,
                      bottom: 37.v,
                    ),
                    child: CustomIconButton(
                      height: 48.adaptSize,
                      width: 48.adaptSize,
                      padding: EdgeInsets.all(5.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGearPng1,
                        radius: BorderRadius.circular(30.0),
                        icon: '', // Adjust the border corner radius here
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

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return OutlineGradientButton(
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
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: CustomOutlinedButton(
        width: 24.h,
        text: "lbl_1".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: Padding(
        padding: EdgeInsets.only(left: 43.h),
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
            text: "lbl_2".tr,
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
                            width: 225.h,
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
                            opacity: 0.4,
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

  /// Section Widget
  Widget _buildState1Row(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 12.h,
        right: 18.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 155.h,
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 10.v,
            ),
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
                  padding: EdgeInsets.only(
                    top: 8.v,
                    bottom: 7.v,
                  ),
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
                  padding: EdgeInsets.only(
                    right: 30.h,
                    // bottom: 3.v,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "lbl_3".tr,
                        style: CustomTextStyles.titleMediumInter,
                      ),
                      //SizedBox(height: 1.v),
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
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 10.v,
            ),
            decoration:
                AppDecoration.gradientOnErrorContainerToRed90001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder24,
              border: Border.all(color: Colors.transparent),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 8.v,
                    bottom: 7.v,
                  ),
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
                  padding: EdgeInsets.only(
                    left: 16.h,
                    bottom: 3.v,
                  ),
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
                            TextSpan(
                              text: " ",
                            ),
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

  /// Section Widget
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
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 9.h,
                );
              },
              itemCount:
                  profileStateTestModelObj?.medalliontilelistItemList.length ??
                      0,
              itemBuilder: (context, index) {
                MedalliontilelistItemModel model = profileStateTestModelObj
                        ?.medalliontilelistItemList[index] ??
                    MedalliontilelistItemModel();
                return MedalliontilelistItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
