import 'bloc/choose_account_one_bloc.dart';
import 'models/choose_account_one_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';

class ChooseAccountOneScreen extends StatelessWidget {
  const ChooseAccountOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChooseAccountOneBloc>(
        create: (context) => ChooseAccountOneBloc(ChooseAccountOneState(
            chooseAccountOneModelObj: ChooseAccountOneModel()))
          ..add(ChooseAccountOneInitialEvent()),
        child: ChooseAccountOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChooseAccountOneBloc, ChooseAccountOneState>(
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
                                                        _buildChooseAccountOne(
                                                            context),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child:
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      onTapSignup(
                                                                          context);
                                                                    },
                                                                    child: Container(
                                                                        margin: EdgeInsets.only(
                                                                            left: 95
                                                                                .h,
                                                                            right: 95
                                                                                .h,
                                                                            bottom: 14
                                                                                .v),
                                                                        padding: EdgeInsets.symmetric(
                                                                            horizontal: 44
                                                                                .h),
                                                                        decoration: AppDecoration.fillPrimary.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder27),
                                                                        child: Container(
                                                                            width:
                                                                                74.h,
                                                                            margin: EdgeInsets.only(left: 7.h),
                                                                            child: Text("lbl_signup".tr, maxLines: null, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleLargePoppinsBlack900.copyWith(height: 1.57)))))),
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
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgEllipse191,
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

  /// Section Widget
  Widget _buildChooseAccountOne(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 15.h, top: 125.v, right: 3.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                    decoration: AppDecoration.outlinePrimary,
                    child: Text("lbl_choose".tr,
                        style: theme.textTheme.displaySmall)),
                Container(
                    decoration: AppDecoration.outlinePrimary1,
                    child: Text("lbl_choose".tr,
                        style: theme.textTheme.displaySmall))
              ]),
              SizedBox(height: 22.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEcu11,
                    height: 157.adaptSize,
                    width: 157.adaptSize,
                    radius: BorderRadius.circular(78.h),
                    margin: EdgeInsets.only(top: 17.v, bottom: 22.v),
                    onTap: () {
                      onTapImgEcuEleven(context);
                    }),
                Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: SizedBox(
                        height: 196.v,
                        child: VerticalDivider(width: 2.h, thickness: 2.v))),
                CustomImageView(
                    imagePath: ImageConstant.img3dOthers1,
                    height: 169.adaptSize,
                    width: 169.adaptSize,
                    radius: BorderRadius.circular(84.h),
                    margin: EdgeInsets.only(left: 4.h, top: 5.v, bottom: 22.v),
                    onTap: () {
                      onTapImgDOthersOne(context);
                    })
              ])
            ])));
  }

  /// Navigates to the chooseAccountTwoScreen when the action is triggered.
  onTapImgEcuEleven(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chooseAccountTwoScreen,
    );
  }

  /// Navigates to the chooseAccountScreen when the action is triggered.
  onTapImgDOthersOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chooseAccountScreen,
    );
  }

  /// Navigates to the signupTwoScreen when the action is triggered.
  onTapSignup(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupTwoScreen,
    );
  }
}
