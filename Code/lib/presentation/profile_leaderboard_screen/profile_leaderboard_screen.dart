import 'bloc/profile_leaderboard_bloc.dart';
import 'models/profile_leaderboard_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';
import 'package:grad_project/core/utils/validation_functions.dart';
import 'package:grad_project/widgets/custom_bottom_bar.dart';
import 'package:grad_project/widgets/custom_floating_button.dart';
import 'package:grad_project/widgets/custom_icon_button.dart';
import 'package:grad_project/widgets/custom_outlined_button.dart';
import 'package:grad_project/widgets/custom_text_form_field.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class ProfileLeaderboardScreen extends StatelessWidget {
  ProfileLeaderboardScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileLeaderboardBloc>(
        create: (context) => ProfileLeaderboardBloc(ProfileLeaderboardState(
            profileLeaderboardModelObj: ProfileLeaderboardModel()))
          ..add(ProfileLeaderboardInitialEvent()),
        child: ProfileLeaderboardScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [appTheme.black90001, appTheme.gray90001])),
                child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(child: _buildOne(context)))),
            bottomNavigationBar: _buildNavbar1(context),
            floatingActionButton: CustomFloatingButton(
                height: 53,
                width: 53,
                backgroundColor: theme.colorScheme.primary,
                child: CustomImageView(
                    imagePath: ImageConstant.imgHomeDeepOrangeA700,
                    height: 26.5.v,
                    width: 26.5.h)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
              Expanded(
                  child: Column(children: [
                SizedBox(
                    height: 237.v,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.topLeft, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgFpdl1,
                          height: 191.v,
                          width: 199.h,
                          alignment: Alignment.topRight),
                      Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                              height: 220.v,
                              width: 199.h,
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgFpdl2,
                                        height: 220.v,
                                        width: 199.h,
                                        alignment: Alignment.center),
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                            margin: EdgeInsets.only(
                                                right: 3.h, bottom: 3.v),
                                            decoration:
                                                AppDecoration.outlinePrimary3,
                                            child: Text("lbl_40".tr,
                                                style: CustomTextStyles
                                                    .titleMediumSemiBold)))
                                  ]))),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 50.v),
                              child: Text("lbl_back".tr,
                                  style: theme.textTheme.displayMedium))),
                      Align(
                          alignment: Alignment.topRight,
                          child: Container(
                              height: 95.v,
                              width: 213.h,
                              margin: EdgeInsets.only(top: 38.v, right: 3.h),
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin:
                                                EdgeInsets.only(bottom: 5.v),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder38),
                                            child: Container(
                                                height: 72.adaptSize,
                                                width: 72.adaptSize,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 3.h),
                                                decoration: AppDecoration
                                                    .gradientPrimaryToRedD
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder38),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Container(
                                                              height: 46.v,
                                                              width: 50.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 9.v),
                                                              decoration:
                                                                  BoxDecoration())),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgPeepsAvatarAlpha2,
                                                          height: 65.adaptSize,
                                                          width: 65.adaptSize,
                                                          alignment: Alignment
                                                              .bottomCenter)
                                                    ])))),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgCameraIconPng,
                                        height: 21.adaptSize,
                                        width: 21.adaptSize,
                                        alignment: Alignment.bottomLeft,
                                        margin: EdgeInsets.only(left: 4.h)),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                            width: 170.h,
                                            margin: EdgeInsets.only(
                                                left: 43.h, bottom: 34.v),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgFireFlamePng1,
                                                      height: 41.v,
                                                      width: 40.h,
                                                      margin: EdgeInsets.only(
                                                          bottom: 20.v)),
                                                  Container(
                                                      height: 53.adaptSize,
                                                      width: 53.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          top: 8.v),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomIconButton(
                                                                height: 53
                                                                    .adaptSize,
                                                                width: 53
                                                                    .adaptSize,
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child:
                                                                    CustomImageView()),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgGearPng1,
                                                                height: 37
                                                                    .adaptSize,
                                                                width: 37
                                                                    .adaptSize,
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ]))
                                                ])))
                                  ]))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 75.v),
                              child: Text("lbl_harrypotter10".tr,
                                  style: CustomTextStyles.titleMediumOutfit))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 57.v),
                              child: Text("lbl_level_12".tr,
                                  style: CustomTextStyles
                                      .bodyMediumOutfitGray400))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Text("lbl_friends".tr,
                              style: CustomTextStyles.bodyMediumOutfitGray400))
                    ])),
                SizedBox(height: 12.v),
                SizedBox(
                    height: 32.v,
                    width: 298.h,
                    child: Stack(alignment: Alignment.center, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup289345,
                          height: 32.v,
                          width: 298.h,
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 292.h,
                              margin: EdgeInsets.fromLTRB(3.h, 3.v, 2.h, 3.v),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    OutlineGradientButton(
                                        padding: EdgeInsets.only(
                                            left: 2.h,
                                            top: 2.v,
                                            right: 2.h,
                                            bottom: 2.v),
                                        strokeWidth: 2.h,
                                        gradient: LinearGradient(
                                            begin: Alignment(0.07, 1),
                                            end: Alignment(0.99, 0.01),
                                            colors: [
                                              appTheme.gray90002,
                                              appTheme.red90001
                                            ]),
                                        corners: Corners(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                            bottomLeft: Radius.circular(12),
                                            bottomRight: Radius.circular(12)),
                                        child: CustomOutlinedButton(
                                            width: 24.h, text: "lbl_1".tr)),
                                    Spacer(flex: 66),
                                    Opacity(
                                        opacity: 0.6,
                                        child: CustomImageView(
                                            imagePath: ImageConstant.imgSignal,
                                            height: 9.v,
                                            width: 10.h,
                                            margin: EdgeInsets.only(
                                                top: 7.v, bottom: 8.v))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.h, top: 4.v, bottom: 3.v),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "lbl_750".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallfffffefd),
                                              TextSpan(
                                                  text: "lbl_1000".tr,
                                                  style: CustomTextStyles
                                                      .titleSmall7fffffff)
                                            ]),
                                            textAlign: TextAlign.left)),
                                    Spacer(flex: 33),
                                    Opacity(
                                        opacity: 0.5,
                                        child: SizedBox(
                                            height: 25.v,
                                            width: 24.h,
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgGroup288910,
                                                      height: 25.v,
                                                      width: 24.h,
                                                      alignment:
                                                          Alignment.center),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text("lbl_22".tr,
                                                          style: CustomTextStyles
                                                              .titleSmallPrimary))
                                                ])))
                                  ])))
                    ])),
                SizedBox(height: 14.v),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 45.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("lbl_leaderboard".tr.toUpperCase(),
                                  style: CustomTextStyles
                                      .titleSmallDeeporangeA700),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtPrice(context);
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 29.h),
                                      child: Text("lbl_stats".tr,
                                          style: CustomTextStyles
                                              .titleSmallGray500)))
                            ]))),
                SizedBox(height: 9.v),
                SizedBox(
                    height: 494.v,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.bottomLeft, children: [
                      Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.h, vertical: 7.v),
                              decoration: AppDecoration.gradientGrayToRed90001
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder38),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: 214.h,
                                        margin: EdgeInsets.only(right: 116.h),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgFirstPlaceBadge,
                                                  height: 25.v,
                                                  width: 17.h,
                                                  margin: EdgeInsets.only(
                                                      top: 19.v)),
                                              Container(
                                                  height: 46.v,
                                                  width: 39.h,
                                                  margin: EdgeInsets.only(
                                                      left: 5.h),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topRight,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgAvatar2734x34,
                                                            height:
                                                                34.adaptSize,
                                                            width: 34.adaptSize,
                                                            radius: BorderRadius
                                                                .vertical(
                                                                    bottom: Radius
                                                                        .circular(17
                                                                            .h)),
                                                            alignment: Alignment
                                                                .bottomLeft),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgCrownObliquely,
                                                            height: 20.v,
                                                            width: 21.h,
                                                            alignment: Alignment
                                                                .topRight)
                                                      ])),
                                              Spacer(),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 18.v, bottom: 5.v),
                                                  child: Text(
                                                      "lbl_harrypotter10".tr,
                                                      style: CustomTextStyles
                                                          .titleMediumOutfit))
                                            ])),
                                    SizedBox(height: 10.v),
                                    Container(
                                        width: 212.h,
                                        margin: EdgeInsets.only(right: 116.h),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRewardBadgeWith,
                                              height: 25.v,
                                              width: 17.h,
                                              margin: EdgeInsets.only(
                                                  top: 5.v, bottom: 4.v)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgAvatar2734x34,
                                              height: 34.adaptSize,
                                              width: 34.adaptSize,
                                              radius: BorderRadius.vertical(
                                                  bottom:
                                                      Radius.circular(17.h)),
                                              margin:
                                                  EdgeInsets.only(left: 5.h)),
                                          Spacer(),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 6.v, bottom: 4.v),
                                              child: Text(
                                                  "lbl_harrypotter12".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumOutfit))
                                        ])),
                                    SizedBox(height: 10.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 4.h, right: 116.h),
                                        child: _buildFive(context,
                                            numberText: "lbl_32".tr,
                                            nameText: "lbl_harrypotter10".tr)),
                                    SizedBox(height: 10.v),
                                    Container(
                                        width: 211.h,
                                        margin: EdgeInsets.only(
                                            left: 3.h, right: 116.h),
                                        child: Row(children: [
                                          Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 6.v),
                                              child: Text("lbl_4".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallPoppinsPrimary)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgAvatar2734x34,
                                              height: 34.adaptSize,
                                              width: 34.adaptSize,
                                              radius: BorderRadius.vertical(
                                                  bottom:
                                                      Radius.circular(17.h)),
                                              margin:
                                                  EdgeInsets.only(left: 7.h)),
                                          Spacer(),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 6.v, bottom: 4.v),
                                              child: Text(
                                                  "lbl_harrypotter10".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumOutfit))
                                        ])),
                                    SizedBox(height: 10.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 4.h, right: 116.h),
                                        child: _buildFive(context,
                                            numberText: "lbl_5".tr,
                                            nameText: "lbl_harrypotter10".tr)),
                                    SizedBox(height: 10.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 4.h, right: 116.h),
                                        child: _buildFive(context,
                                            numberText: "lbl_6".tr,
                                            nameText: "lbl_harrypotter10".tr)),
                                    SizedBox(height: 10.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 4.h, right: 116.h),
                                        child: _buildFive(context,
                                            numberText: "lbl_7".tr,
                                            nameText: "lbl_harrypotter10".tr)),
                                    SizedBox(height: 10.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 4.h, right: 116.h),
                                        child: _buildFive(context,
                                            numberText: "lbl_8".tr,
                                            nameText: "lbl_harrypotter10".tr)),
                                    SizedBox(height: 10.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 4.h, right: 116.h),
                                        child: _buildFive(context,
                                            numberText: "lbl_9".tr,
                                            nameText: "lbl_harrypotter10".tr)),
                                    SizedBox(height: 10.v),
                                    Container(
                                        width: 212.h,
                                        margin: EdgeInsets.only(right: 116.h),
                                        child: Row(children: [
                                          Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 6.v),
                                              child: Text("lbl_10".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallPoppinsPrimary)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgAvatar2734x34,
                                              height: 34.adaptSize,
                                              width: 34.adaptSize,
                                              radius: BorderRadius.vertical(
                                                  bottom:
                                                      Radius.circular(17.h)),
                                              margin:
                                                  EdgeInsets.only(left: 6.h)),
                                          Spacer(),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 3.v, bottom: 7.v),
                                              child: Text(
                                                  "lbl_harrypotter10".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumOutfit))
                                        ])),
                                    SizedBox(height: 20.v)
                                  ]))),
                      CustomImageView(
                          imagePath: ImageConstant.imgAvatar2734x34,
                          height: 34.adaptSize,
                          width: 34.adaptSize,
                          radius: BorderRadius.vertical(
                              bottom: Radius.circular(17.h)),
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(left: 37.h)),
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 264.h, top: 26.v, right: 33.h),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Opacity(
                                        opacity: 0.8,
                                        child: Text("lbl_2750_xp".tr,
                                            style: theme.textTheme.titleSmall)),
                                    SizedBox(height: 27.v),
                                    Opacity(
                                        opacity: 0.8,
                                        child: Text("lbl_2550_xp".tr,
                                            style: theme.textTheme.titleSmall)),
                                    SizedBox(height: 26.v),
                                    Opacity(
                                        opacity: 0.8,
                                        child: Text("lbl_2250_xp".tr,
                                            style: theme.textTheme.titleSmall)),
                                    SizedBox(height: 26.v),
                                    Opacity(
                                        opacity: 0.8,
                                        child: Text("lbl_2050_xp".tr,
                                            style: theme.textTheme.titleSmall)),
                                    SizedBox(height: 26.v),
                                    Opacity(
                                        opacity: 0.8,
                                        child: Text("lbl_1750_xp".tr,
                                            style: theme.textTheme.titleSmall)),
                                    SizedBox(height: 25.v),
                                    Opacity(
                                        opacity: 0.8,
                                        child: Text("lbl_1650_xp".tr,
                                            style: theme.textTheme.titleSmall)),
                                    SizedBox(height: 27.v),
                                    Opacity(
                                        opacity: 0.8,
                                        child: Text("lbl_1400_xp".tr,
                                            style: theme.textTheme.titleSmall)),
                                    SizedBox(height: 26.v),
                                    Opacity(
                                        opacity: 0.8,
                                        child: Text("lbl_1200_xp".tr,
                                            style: theme.textTheme.titleSmall)),
                                    SizedBox(height: 26.v),
                                    Opacity(
                                        opacity: 0.8,
                                        child: Text("lbl_1000_xp".tr,
                                            style: theme.textTheme.titleSmall)),
                                    SizedBox(height: 23.v),
                                    Opacity(
                                        opacity: 0.8,
                                        child: Text("lbl_300_xp".tr,
                                            style: theme.textTheme.titleSmall))
                                  ])))
                    ])),
                SizedBox(height: 101.v),
                SizedBox(
                    height: 594.v,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.topLeft, children: [
                      Align(
                          alignment: Alignment.center,
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgBackground,
                                height: 1.v,
                                width: 360.h),
                            SizedBox(height: 146.v),
                            Divider(
                                color:
                                    theme.colorScheme.primary.withOpacity(0.65),
                                indent: 35.h,
                                endIndent: 36.h),
                            SizedBox(height: 59.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 35.h, right: 36.h),
                                child: BlocSelector<
                                        ProfileLeaderboardBloc,
                                        ProfileLeaderboardState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.passwordController,
                                    builder: (context, passwordController) {
                                      return CustomTextFormField(
                                          controller: passwordController,
                                          hintText: "lbl_password".tr,
                                          textInputAction: TextInputAction.done,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          validator: (value) {
                                            if (value == null ||
                                                (!isValidPassword(value,
                                                    isRequired: true))) {
                                              return "err_msg_please_enter_valid_password"
                                                  .tr;
                                            }
                                            return null;
                                          },
                                          obscureText: true,
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 7.h));
                                    })),
                            SizedBox(height: 7.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    width: 115.h,
                                    margin: EdgeInsets.only(right: 29.h),
                                    child: Text("msg_forget_password".tr,
                                        maxLines: null,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodySmall!
                                            .copyWith(
                                                decoration: TextDecoration
                                                    .underline)))),
                            SizedBox(height: 80.v),
                            Container(
                                width: 289.h,
                                margin: EdgeInsets.symmetric(horizontal: 35.h),
                                padding: EdgeInsets.symmetric(horizontal: 75.h),
                                decoration: AppDecoration.fillPrimary.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder27),
                                child: Container(
                                    width: 126.h,
                                    margin: EdgeInsets.only(left: 11.h),
                                    child: Text("lbl_login".tr,
                                        maxLines: null,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles
                                            .titleLargePoppinsBlack900
                                            .copyWith(height: 1.57)))),
                            SizedBox(height: 15.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.only(right: 62.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                              width: 137.h,
                                              child: Text(
                                                  "msg_don_t_have_account".tr,
                                                  maxLines: null,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          Text("lbl_signup2".tr,
                                              style:
                                                  theme.textTheme.titleMedium)
                                        ]))),
                            SizedBox(height: 9.v),
                            Text("lbl_or".tr,
                                textAlign: TextAlign.center,
                                style:
                                    CustomTextStyles.titleLargePoppinsPrimary),
                            SizedBox(height: 10.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                    height: 234.v,
                                    width: 226.h,
                                    child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRedOpenedBook234x142,
                                              height: 234.v,
                                              width: 142.h,
                                              radius:
                                                  BorderRadius.circular(71.h),
                                              alignment: Alignment.centerLeft),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                  width: 92.h,
                                                  margin:
                                                      EdgeInsets.only(top: 1.v),
                                                  child: Text(
                                                      "lbl_sign_in_using".tr,
                                                      maxLines: null,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: CustomTextStyles
                                                          .bodySmallPrimary))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGmailLogo,
                                              height: 45.adaptSize,
                                              width: 45.adaptSize,
                                              alignment: Alignment.topRight,
                                              margin: EdgeInsets.only(
                                                  top: 24.v, right: 27.h))
                                        ])))
                          ])),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 40.h),
                              child: Text("lbl_username".tr,
                                  style: theme.textTheme.bodyMedium)))
                    ]))
              ])),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(
                          left: 40.h, top: 344.v, bottom: 135.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 27.h),
                                child: Row(children: [
                                  Container(
                                      width: 155.h,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.h, vertical: 12.v),
                                      decoration: AppDecoration
                                          .gradientGrayToRed90001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder23),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 8.v, bottom: 6.v),
                                                child: CustomIconButton(
                                                    height: 27.adaptSize,
                                                    width: 27.adaptSize,
                                                    padding:
                                                        EdgeInsets.all(4.h),
                                                    child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgGroup288897))),
                                            Container(
                                                width: 56.h,
                                                margin: EdgeInsets.only(
                                                    left: 28.h, bottom: 4.v),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "lbl_13".tr,
                                                          style: CustomTextStyles
                                                              .titleMediumInterffffffff),
                                                      TextSpan(
                                                          text:
                                                              "lbl_quizzes".tr,
                                                          style: CustomTextStyles
                                                              .labelLargeInterff9098a3)
                                                    ]),
                                                    textAlign: TextAlign.left))
                                          ])),
                                  Container(
                                      margin: EdgeInsets.only(left: 18.h),
                                      decoration: AppDecoration
                                          .outlineRed9009901
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder23),
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 7.h, vertical: 11.v),
                                          decoration: AppDecoration
                                              .gradientGrayToRed90001
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder23),
                                          child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                    height: 27.adaptSize,
                                                    width: 27.adaptSize,
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            vertical: 8.v),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgIconLeaderboard,
                                                              height:
                                                                  19.adaptSize,
                                                              width:
                                                                  19.adaptSize,
                                                              alignment:
                                                                  Alignment
                                                                      .center),
                                                          Opacity(
                                                              opacity: 0.2,
                                                              child: CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgGroup288897Gray100,
                                                                  height: 27
                                                                      .adaptSize,
                                                                  width: 27
                                                                      .adaptSize,
                                                                  alignment:
                                                                      Alignment
                                                                          .center))
                                                        ])),
                                                Container(
                                                    width: 82.h,
                                                    margin: EdgeInsets.only(
                                                        left: 16.h,
                                                        bottom: 6.v),
                                                    child: RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text: "lbl_23".tr,
                                                              style: CustomTextStyles
                                                                  .titleMediumInterffffffff),
                                                          TextSpan(
                                                              text:
                                                                  "lbl_leaderboard"
                                                                      .tr,
                                                              style: CustomTextStyles
                                                                  .labelLargeInterff9098a3),
                                                          TextSpan(text: " ")
                                                        ]),
                                                        textAlign:
                                                            TextAlign.left))
                                              ])))
                                ])),
                            SizedBox(height: 65.v),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                          height: 189.v,
                                          width: 172.h,
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Container(
                                                        height: 177.v,
                                                        width: 170.h,
                                                        decoration:
                                                            BoxDecoration())),
                                                _buildMedallions(context,
                                                    medallionImage:
                                                        ImageConstant
                                                            .imgMedallions,
                                                    advancedMandarinText:
                                                        "msg_essential_mandarin"
                                                            .tr,
                                                    bronzeCertifiedText:
                                                        "msg_bronze_certified"
                                                            .tr)
                                              ])),
                                      SizedBox(
                                          height: 189.v,
                                          width: 172.h,
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Container(
                                                        height: 177.v,
                                                        width: 170.h,
                                                        decoration:
                                                            BoxDecoration())),
                                                _buildMedallions(context,
                                                    medallionImage: ImageConstant
                                                        .imgMedallionsBlack90001,
                                                    advancedMandarinText:
                                                        "msg_advanced_mandarin"
                                                            .tr,
                                                    bronzeCertifiedText:
                                                        "msg_silver_certified"
                                                            .tr)
                                              ]))
                                    ]))
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildNavbar1(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Common widget
  Widget _buildFive(
    BuildContext context, {
    required String numberText,
    required String nameText,
  }) {
    return SizedBox(
        width: 209.h,
        child: Row(children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 6.v),
              child: Text(numberText,
                  style: CustomTextStyles.titleSmallPoppinsPrimary
                      .copyWith(color: theme.colorScheme.primary))),
          CustomImageView(
              imagePath: ImageConstant.imgAvatar2734x34,
              height: 34.adaptSize,
              width: 34.adaptSize,
              radius: BorderRadius.vertical(bottom: Radius.circular(17.h)),
              margin: EdgeInsets.only(left: 8.h)),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(top: 6.v, bottom: 4.v),
              child: Text(nameText,
                  style: CustomTextStyles.titleMediumOutfit
                      .copyWith(color: theme.colorScheme.primary)))
        ]));
  }

  /// Common widget
  Widget _buildMedallions(
    BuildContext context, {
    required String medallionImage,
    required String advancedMandarinText,
    required String bronzeCertifiedText,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 18.v),
        decoration: AppDecoration.outlineGrayCc
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder23),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomImageView(
              imagePath: medallionImage,
              height: 49.adaptSize,
              width: 49.adaptSize),
          SizedBox(height: 20.v),
          SizedBox(
              width: 160.h,
              child: Text(advancedMandarinText,
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleSmallBlack90001
                      .copyWith(color: appTheme.black90001))),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 13.h),
              padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 3.v),
              decoration: AppDecoration.fillGray20002
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder9),
              child: SizedBox(
                  width: 127.h,
                  child: Text(bronzeCertifiedText,
                      maxLines: null,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.labelLargeInterBluegray400
                          .copyWith(color: appTheme.blueGray400))))
        ]));
  }

  /// Navigates to the profileStatsScreen when the action is triggered.
  onTapTxtPrice(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileStatsScreen,
    );
  }
}
