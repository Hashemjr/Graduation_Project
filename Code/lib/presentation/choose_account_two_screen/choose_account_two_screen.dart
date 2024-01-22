import 'bloc/choose_account_two_bloc.dart';
import 'models/choose_account_two_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';
import 'package:grad_project/widgets/custom_elevated_button.dart';

class ChooseAccountTwoScreen extends StatelessWidget {
  const ChooseAccountTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChooseAccountTwoBloc>(
        create: (context) => ChooseAccountTwoBloc(ChooseAccountTwoState(
            chooseAccountTwoModelObj: ChooseAccountTwoModel()))
          ..add(ChooseAccountTwoInitialEvent()),
        child: ChooseAccountTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChooseAccountTwoBloc, ChooseAccountTwoState>(
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
                          colors: [appTheme.black90001, appTheme.gray90001])),
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Column(children: [
                        SizedBox(height: 45.v),
                        Expanded(
                            child: SingleChildScrollView(
                                child: SizedBox(
                                    height: 834.v,
                                    width: double.maxFinite,
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: SizedBox(
                                                  height: 699.v,
                                                  width: double.maxFinite,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgBackground,
                                                            height: 620.v,
                                                            width: 360.h,
                                                            alignment: Alignment
                                                                .topCenter),
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 84
                                                                            .h,
                                                                        top: 125
                                                                            .v,
                                                                        right: 80
                                                                            .h),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      Container(
                                                                          decoration: AppDecoration
                                                                              .outlinePrimary1,
                                                                          child: Text(
                                                                              "lbl_choose".tr,
                                                                              style: theme.textTheme.displaySmall)),
                                                                      SizedBox(
                                                                          height:
                                                                              17.v),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgEcu11177x177,
                                                                          height: 177
                                                                              .adaptSize,
                                                                          width: 177
                                                                              .adaptSize,
                                                                          radius:
                                                                              BorderRadius.circular(88.h)),
                                                                      SizedBox(
                                                                          height:
                                                                              8.v),
                                                                      Divider()
                                                                    ]))),
                                                        CustomElevatedButton(
                                                            height: 55.v,
                                                            width: 169.h,
                                                            text:
                                                                "lbl_signup".tr,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        210.v),
                                                            onPressed: () {
                                                              onTapSignup(
                                                                  context);
                                                            },
                                                            alignment: Alignment
                                                                .bottomCenter),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgRedOpenedBook234x170,
                                                            height: 234.v,
                                                            width: 170.h,
                                                            radius: BorderRadius
                                                                .circular(79.h),
                                                            alignment: Alignment
                                                                .bottomLeft)
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10.h,
                                                      top: 49.v,
                                                      right: 132.h),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            width: 166.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right:
                                                                        51.h),
                                                            decoration:
                                                                AppDecoration
                                                                    .outlineBlack,
                                                            child: Text(
                                                                "msg_welcome_to_joyful"
                                                                    .tr,
                                                                maxLines: null,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: CustomTextStyles
                                                                    .titleLargePaytoneOnePrimary
                                                                    .copyWith(
                                                                        height:
                                                                            1.02))),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Container(
                                                                width: 162.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 54
                                                                            .h),
                                                                child: Text(
                                                                    "msg_embrace_the_happiness"
                                                                        .tr,
                                                                    maxLines: 5,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: CustomTextStyles
                                                                        .bodySmallOoohBabyPrimary)))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: SizedBox(
                                                  height: 251.v,
                                                  width: 122.h,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgEllipse191143x88,
                                                            height: 143.v,
                                                            width: 88.h,
                                                            alignment: Alignment
                                                                .topRight,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 9.v)),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgGroup8779,
                                                            height: 129.v,
                                                            width: 120.h,
                                                            alignment: Alignment
                                                                .topCenter,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 5.v)),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgIcon7,
                                                            height: 177.v,
                                                            width: 118.h,
                                                            alignment: Alignment
                                                                .bottomCenter),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgIcon3,
                                                            height: 132.v,
                                                            width: 122.h,
                                                            alignment: Alignment
                                                                .topCenter)
                                                      ])))
                                        ]))))
                      ])))));
    });
  }

  /// Navigates to the signupTwoScreen when the action is triggered.
  onTapSignup(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupTwoScreen,
    );
  }
}
