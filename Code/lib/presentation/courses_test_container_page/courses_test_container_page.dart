import '../courses_test_container_page/widgets/coursescard1_item_widget.dart';
import '../courses_test_container_page/widgets/coursescard1_item_widget copy.dart';
import '../courses_test_container_page/widgets/coursescard1_item_widget copy 2.dart';
import 'bloc/courses_test_container_bloc.dart';
import 'models/courses_test_container_model.dart';
import 'models/coursescard1_item_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:chineasy/widgets/app_bar/appbar_title.dart';
import 'package:chineasy/widgets/app_bar/appbar_trailing_image.dart';
import 'package:chineasy/widgets/app_bar/custom_app_bar.dart';
import 'package:chineasy/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// ignore_for_file: must_be_immutable
class CoursesTestContainerPage extends StatelessWidget {
  const CoursesTestContainerPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CoursesTestContainerBloc>(
      create: (context) => CoursesTestContainerBloc(CoursesTestContainerState(
        coursesTestContainerModelObj: CoursesTestContainerModel(),
      ))
        ..add(CoursesTestContainerInitialEvent()),
      child: CoursesTestContainerPage(),
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
                _buildOne(context),
                SizedBox(height: 20 .v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 28.h),
                      child: Column(
                        children: [
                          Text(
                            "msg_mandarin_courses".tr,
                            style: CustomTextStyles.titleLargeOutfitPrimary,
                          ),
                          SizedBox(height: 20.v),
                          SizedBox(
                            height: 175.v,
                            width: 300.h,
                            child: Stack(
                              children: [
                                _buildCoursesCard1(context),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 175.v,
                            width: 300.h,
                            child: Stack(
                              children: [
                                _buildCoursesCard2(context),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 175.v,
                            width: 300.h,
                            child: Stack(
                              children: [
                                _buildCoursesCard3(context),
                              ],
                            ),
                          ),  
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      bottomNavigationBar: CurvedNavigationBar(
    backgroundColor: Colors.transparent,
    items: <Widget>[
      Icon(Icons.import_contacts_rounded, size: 28.v,color: Color.fromARGB(255, 191, 37, 17),),
      Icon(Icons.home_filled, size: 28.v,color: Color.fromARGB(255, 191, 37, 17),),
      Icon(Icons.person_rounded, size: 28.v,color: Color.fromARGB(255, 191, 37, 17),),
    ],
    animationDuration: Duration(milliseconds: 150),
    height:75,
    index: 0,
    onTap: (index) {
      if (index == 0) {
    // Navigate to the first screen
    NavigatorService.pushNamed(
      AppRoutes.coursesTestContainerPage,
    );
  } else if (index == 1) {
     //Navigate to the second screen
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
  ),),
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return SizedBox(
      height: 241.v,
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.h),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder24,
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgBiglevelCard,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "lbl_level_12".tr,
                      style: CustomTextStyles.titleLargeInterBlack900,
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "msg_250_points_to_next".tr,
                      style: CustomTextStyles.titleSmallInterBlack900SemiBold,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  SizedBox(
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
                        ),
                       Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(3.h, 3.v, 2.h, 3.v),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                  flex: 62,
                                ),
                                Opacity(
                                  opacity: 0.6,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgSignal,
                                    height: 9.v,
                                    width: 10.h,
                                    margin: EdgeInsets.only(
                                      top: 6.v,
                                      bottom: 9.v,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 3.h,
                                    top: 3.v,
                                    bottom: 4.v,
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
                                Spacer(
                                  flex: 37,
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
                                          imagePath:
                                              ImageConstant.imgGroup289382,
                                          height: 25.v,
                                          width: 24.h,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "lbl_2".tr,
                                            style: CustomTextStyles
                                                .titleSmallInter,
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
                  ),
                  SizedBox(height: 12.v),
                ],
              ),
            ),
          ),
          CustomAppBar(
            title: AppbarTitle(
              text: "msg_journey_to_fluency".tr,
              margin: EdgeInsets.only(left: 65.h),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgRewind,
                margin: EdgeInsets.symmetric(horizontal: 15.h),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCoursesCard1(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 0.v),
        child: BlocSelector<CoursesTestContainerBloc, CoursesTestContainerState,
            CoursesTestContainerModel?>(
          selector: (state) => state.coursesTestContainerModelObj,
          builder: (context, coursesTestContainerModelObj) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 13.v,
                );
              },
              itemCount:
                  coursesTestContainerModelObj?.coursescard1ItemList.length ??
                      0,
              itemBuilder: (context, index) {
                Coursescard1ItemModel model =
                    coursesTestContainerModelObj?.coursescard1ItemList[index] ??
                        Coursescard1ItemModel();
                return Coursescard1ItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
    Widget _buildCoursesCard2(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 0.v),
        child: BlocSelector<CoursesTestContainerBloc, CoursesTestContainerState,
            CoursesTestContainerModel?>(
          selector: (state) => state.coursesTestContainerModelObj,
          builder: (context, coursesTestContainerModelObj) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 13.v,
                );
              },
              itemCount:
                  coursesTestContainerModelObj?.coursescard1ItemList.length ??
                      0,
              itemBuilder: (context, index) {
                Coursescard1ItemModel model =
                    coursesTestContainerModelObj?.coursescard1ItemList[index] ??
                        Coursescard1ItemModel();
                return Coursescard1ItemWidget1(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
  Widget _buildCoursesCard3(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 0.v),
        child: BlocSelector<CoursesTestContainerBloc, CoursesTestContainerState,
            CoursesTestContainerModel?>(
          selector: (state) => state.coursesTestContainerModelObj,
          builder: (context, coursesTestContainerModelObj) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 13.v,
                );
              },
              itemCount:
                  coursesTestContainerModelObj?.coursescard1ItemList.length ??
                      0,
              itemBuilder: (context, index) {
                Coursescard1ItemModel model =
                    coursesTestContainerModelObj?.coursescard1ItemList[index] ??
                        Coursescard1ItemModel();
                return Coursescard1ItemWidget2(
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
