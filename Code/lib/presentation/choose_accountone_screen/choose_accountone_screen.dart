import 'bloc/choose_accountone_bloc.dart';
import 'models/choose_accountone_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:flutter/material.dart';

class ChooseAccountoneScreen extends StatelessWidget {
  const ChooseAccountoneScreen({Key? key, required String title}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChooseAccountoneBloc>(
        create: (context) => ChooseAccountoneBloc(ChooseAccountoneState(
            chooseAccountoneModelObj: ChooseAccountoneModel()))
          ..add(ChooseAccountoneInitialEvent()),
        child: ChooseAccountoneScreen(title: '',));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChooseAccountoneBloc, ChooseAccountoneState>(
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
                          colors: [appTheme.black900, appTheme.gray90001])),
                  child: SizedBox(
                      height: SizeUtils.height,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                decoration: AppDecoration
                                    .gradientDeepOrangeAToRedA
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.customBorderTL40),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 87.v),
                                      Container(
                                          decoration:
                                              AppDecoration.outlinePrimary,
                                          child: Text("lbl_choose".tr,
                                              style: theme
                                                  .textTheme.displaySmall)),
                                      SizedBox(height: 22.v),
                                      _buildChooseAccount(context),
                                      SizedBox(height: 71.v),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgRedOpenedBook156x171,
                                          height: 156.v,
                                          width: 171.h,
                                          alignment: Alignment.centerLeft)
                                    ]))),
                        _buildTitle(context)
                      ])))));
    });
  }

  /// Section Widget
  Widget _buildChooseAccount(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 15.h, right: 3.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
              width: 165.adaptSize,//169
              radius: BorderRadius.circular(84.h),
              margin: EdgeInsets.only(left: 4.h, top: 5.v, bottom: 22.v),
              onTap: () {
                onTapImgDOthersOne(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            height: 251.v,
            width: 350.h,
            margin: EdgeInsets.only(top: 15 .v,left:10.v),
            child: Stack(
            alignment: Alignment.centerRight, 
            children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                      height: 251.v,
                      width: 125.h,
                      child: Stack(alignment: Alignment.centerRight, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgBackGray90002,
                            height: 147.v,
                            width: 120.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 5.v)),
                        Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                                height: 251.v,
                                width: 122.h,
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgIcon7,
                                          height: 177.v,
                                          width: 118.h,
                                          alignment: Alignment.bottomCenter),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgIcon3,
                                          height: 132.v,
                                          width: 122.h,
                                          alignment: Alignment.topCenter)
                                    ])))
                      ]))),
               Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: EdgeInsets.only(top:15.v, right: 106.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_welcome_to".tr,
                                style: CustomTextStyles
                                    .titleLargePaytoneOnePrimary),
                            Container(
                                decoration: AppDecoration.outlineBlack,
                                child: Text("msg_joyful_mandarin".tr,
                                    style: CustomTextStyles
                                        .titleLargePaytoneOnePrimary)),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    width: 200.h,
                                    margin: EdgeInsets.only(top: 5.v,right: 18.h),//rigth:8
                                    child: Text("msg_embrace_the_happiness".tr,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyLarge?.copyWith(
                                            fontSize: 16.0))))//22
                          ])))
            ])));
  }

  /// Navigates to the chooseAccounttwoScreen when the action is triggered.
  onTapImgEcuEleven(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chooseAccounttwoScreen,
    );
  }

  /// Navigates to the chooseAccountthreeScreen when the action is triggered.
  onTapImgDOthersOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chooseAccountthreeScreen,
    );
  }
}
