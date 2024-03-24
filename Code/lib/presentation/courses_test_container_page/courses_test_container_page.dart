import '../courses_test_container_page/widgets/coursescard1_item_widget.dart';
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

class CoursesTestContainerPage extends StatelessWidget {
  const CoursesTestContainerPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CoursesTestContainerBloc>(
      create: (context) => CoursesTestContainerBloc(
        CoursesTestContainerState(
          coursesTestContainerModelObj: CoursesTestContainerModel(),
        ),
      )..add(CoursesTestContainerInitialEvent()),
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
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Container(
            width: SizeUtils.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  appTheme.black900,
                  appTheme.gray90001,
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 16.v),
                _buildJourneyToFluency(context),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28.h),
                  child: Text(
                    "msg_mandarin_courses".tr,
                    style: CustomTextStyles.titleLargeOutfitPrimary,
                  ),
                ),
                SizedBox(height: 16.v),
                _buildCourseSection(context),
                SizedBox(height: 20.v), // Adjusted height for gradient
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildJourneyToFluency(BuildContext context) {
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
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
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                    bottomLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12),
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
            title: Row(
              children: [
                AppbarTitle(
                  text: "msg_journey_to_fluency".tr,
                  margin: EdgeInsets.only(left: 8.h),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {
                      // Handle search icon tap
                    },
                    icon: Icon(Icons.search),
                    color: Colors.white,
                    iconSize: 32,
                  ),
                ),
              ],
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

  Widget _buildCourseSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildCoursesCard1(context),
        SizedBox(height: 5.v),
        _buildCoursesCard1(context),
        SizedBox(height: 5.v),
        _buildCoursesCard1(context),
      ],
    );
  }

  Widget _buildCoursesCard1(BuildContext context) {
    return SizedBox(
      height: 241.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 21.v),
              child: BlocSelector<CoursesTestContainerBloc,
                  CoursesTestContainerState, CoursesTestContainerModel?>(
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
                        height: 5.v,
                      );
                    },
                    itemCount: coursesTestContainerModelObj
                            ?.coursescard1ItemList.length ??
                        0,
                    itemBuilder: (context, index) {
                      Coursescard1ItemModel model = coursesTestContainerModelObj
                              ?.coursescard1ItemList[index] ??
                          Coursescard1ItemModel();
                      return Coursescard1ItemWidget(
                        model,
                      );
                    },
                  );
                },
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgHomePrimary,
            height: 108.v,
            width: 79.h,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}
