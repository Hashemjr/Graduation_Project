import '../profile_stats_screen/widgets/medalliontile_item_widget.dart';
import 'bloc/profile_stats_bloc.dart';
import 'models/medalliontile_item_model.dart';
import 'models/profile_stats_model.dart';
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
class ProfileStatsScreen extends StatelessWidget {
  ProfileStatsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileStatsBloc>(
        create: (context) => ProfileStatsBloc(
            ProfileStatsState(profileStatsModelObj: ProfileStatsModel()))
          ..add(ProfileStatsInitialEvent()),
        child: ProfileStatsScreen());
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
                    child: SingleChildScrollView(
                        child: Column(children: [
                      _buildFpdlOne(context),
                      SizedBox(height: 12.v),
                      _buildOne1(context),
                      SizedBox(height: 14.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Row(children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtLeaderboard(context);
                                    },
                                    child: Text(
                                        "lbl_leaderboard".tr.toUpperCase(),
                                        style: CustomTextStyles
                                            .titleSmallGray500)),
                                Padding(
                                    padding: EdgeInsets.only(left: 29.h),
                                    child: Text("lbl_stats".tr,
                                        style: CustomTextStyles
                                            .titleSmallDeeporangeA700))
                              ]))),
                      SizedBox(height: 30.v),
                      _buildView(context),
                      SizedBox(height: 31.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(left: 17.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_certifications".tr,
                                        style: CustomTextStyles
                                            .titleSmallff9098a3),
                                    TextSpan(
                                        text: "lbl_6".tr,
                                        style:
                                            CustomTextStyles.titleSmallffb6b6b6)
                                  ]),
                                  textAlign: TextAlign.left))),
                      SizedBox(height: 15.v),
                      _buildMedallionTile(context),
                      SizedBox(height: 253.v),
                      _buildUserName(context),
                      SizedBox(height: 59.v),
                      _buildPassword(context),
                      SizedBox(height: 7.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: 115.h,
                              margin: EdgeInsets.only(right: 29.h),
                              child: Text("msg_forget_password".tr,
                                  maxLines: null,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodySmall!.copyWith(
                                      decoration: TextDecoration.underline)))),
                      SizedBox(height: 80.v),
                      _buildSignup(context),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 62.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                        width: 137.h,
                                        child: Text("msg_don_t_have_account".tr,
                                            maxLines: null,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodySmall)),
                                    Text("lbl_signup2".tr,
                                        style: theme.textTheme.titleMedium)
                                  ]))),
                      SizedBox(height: 9.v),
                      Text("lbl_or".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleLargePoppinsPrimary),
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
                                        radius: BorderRadius.circular(71.h),
                                        alignment: Alignment.centerLeft),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                            width: 92.h,
                                            margin: EdgeInsets.only(top: 1.v),
                                            child: Text("lbl_sign_in_using".tr,
                                                maxLines: null,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: CustomTextStyles
                                                    .bodySmallPrimary))),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgGmailLogo,
                                        height: 45.adaptSize,
                                        width: 45.adaptSize,
                                        alignment: Alignment.topRight,
                                        margin: EdgeInsets.only(
                                            top: 24.v, right: 27.h))
                                  ])))
                    ])))),
            bottomNavigationBar: _buildNavCourses(context),
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
  Widget _buildFpdlOne(BuildContext context) {
    return SizedBox(
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
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgFpdl2,
                        height: 220.v,
                        width: 199.h,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                            margin: EdgeInsets.only(right: 3.h, bottom: 3.v),
                            decoration: AppDecoration.outlinePrimary3,
                            child: Text("lbl_40".tr,
                                style: CustomTextStyles.titleMediumSemiBold)))
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
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Card(
                            clipBehavior: Clip.antiAlias,
                            elevation: 0,
                            margin: EdgeInsets.only(bottom: 5.v),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder38),
                            child: Container(
                                height: 72.adaptSize,
                                width: 72.adaptSize,
                                padding: EdgeInsets.symmetric(horizontal: 3.h),
                                decoration: AppDecoration.gradientPrimaryToRedD
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder38),
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                              height: 46.v,
                                              width: 50.h,
                                              margin: EdgeInsets.only(top: 9.v),
                                              decoration: BoxDecoration())),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgPeepsAvatarAlpha2,
                                          height: 65.adaptSize,
                                          width: 65.adaptSize,
                                          alignment: Alignment.bottomCenter)
                                    ])))),
                    CustomImageView(
                        imagePath: ImageConstant.imgCameraIconPng,
                        height: 21.adaptSize,
                        width: 21.adaptSize,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 4.h)),
                    Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                            padding: EdgeInsets.only(left: 43.h, bottom: 34.v),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgFireFlamePng1,
                                      height: 41.v,
                                      width: 40.h,
                                      margin: EdgeInsets.only(bottom: 20.v)),
                                  Container(
                                      height: 53.adaptSize,
                                      width: 53.adaptSize,
                                      margin: EdgeInsets.only(top: 8.v),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomIconButton(
                                                height: 53.adaptSize,
                                                width: 53.adaptSize,
                                                alignment: Alignment.center,
                                                child: CustomImageView()),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgGearPng1,
                                                height: 37.adaptSize,
                                                width: 37.adaptSize,
                                                alignment: Alignment.center)
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
                      style: CustomTextStyles.bodyMediumOutfitGray400))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Text("lbl_friends".tr,
                  style: CustomTextStyles.bodyMediumOutfitGray400))
        ]));
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return OutlineGradientButton(
        padding: EdgeInsets.only(left: 2.h, top: 2.v, right: 2.h, bottom: 2.v),
        strokeWidth: 2.h,
        gradient: LinearGradient(
            begin: Alignment(0.07, 1),
            end: Alignment(0.99, 0.01),
            colors: [appTheme.gray90002, appTheme.red90001]),
        corners: Corners(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12)),
        child: CustomOutlinedButton(width: 24.h, text: "lbl_1".tr));
  }

  /// Section Widget
  Widget _buildOne1(BuildContext context) {
    return SizedBox(
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
              child: Padding(
                  padding: EdgeInsets.fromLTRB(3.h, 3.v, 2.h, 3.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildOne(context),
                        Spacer(flex: 66),
                        Opacity(
                            opacity: 0.6,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgSignal,
                                height: 9.v,
                                width: 10.h,
                                margin:
                                    EdgeInsets.only(top: 7.v, bottom: 8.v))),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 2.h, top: 4.v, bottom: 3.v),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "lbl_750".tr,
                                      style:
                                          CustomTextStyles.titleSmallfffffefd),
                                  TextSpan(
                                      text: "lbl_1000".tr,
                                      style:
                                          CustomTextStyles.titleSmall7fffffff)
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
                                          imagePath:
                                              ImageConstant.imgGroup288910,
                                          height: 25.v,
                                          width: 24.h,
                                          alignment: Alignment.center),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Text("lbl_22".tr,
                                              style: CustomTextStyles
                                                  .titleSmallPrimary))
                                    ])))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h, right: 18.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: 66.v,
              width: 155.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 66.v,
                        width: 153.h,
                        decoration: BoxDecoration())),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.h, vertical: 13.v),
                        decoration: AppDecoration.gradientGrayToRed90001
                            .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder23),
                        child: Row(children: [
                          Padding(
                              padding: EdgeInsets.only(top: 6.v, bottom: 5.v),
                              child: CustomIconButton(
                                  height: 27.adaptSize,
                                  width: 27.adaptSize,
                                  padding: EdgeInsets.all(4.h),
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgGroup288897))),
                          Container(
                              width: 51.h,
                              margin: EdgeInsets.only(left: 31.h, top: 1.v),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_33".tr,
                                        style: CustomTextStyles
                                            .titleMediumInterffffffff),
                                    TextSpan(
                                        text: "lbl_quizzes".tr,
                                        style: CustomTextStyles
                                            .labelLargeInterff9098a3)
                                  ]),
                                  textAlign: TextAlign.center))
                        ])))
              ])),
          Container(
              margin: EdgeInsets.only(left: 18.h),
              decoration: AppDecoration.outlineRed9009901
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder23),
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 7.h, vertical: 13.v),
                  decoration: AppDecoration.gradientGrayToRed90001
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder23),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            height: 27.adaptSize,
                            width: 27.adaptSize,
                            margin: EdgeInsets.only(top: 4.v, bottom: 6.v),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgIconLeaderboard,
                                  height: 19.adaptSize,
                                  width: 19.adaptSize,
                                  alignment: Alignment.center),
                              Opacity(
                                  opacity: 0.2,
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgGroup288897Gray100,
                                      height: 27.adaptSize,
                                      width: 27.adaptSize,
                                      alignment: Alignment.center))
                            ])),
                        Container(
                            width: 80.h,
                            margin: EdgeInsets.only(left: 16.h),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "lbl_23".tr,
                                      style: CustomTextStyles
                                          .titleMediumInterffffffff),
                                  TextSpan(
                                      text: "lbl_leaderboard".tr,
                                      style: CustomTextStyles
                                          .labelLargeInterff9098a3),
                                  TextSpan(text: " ")
                                ]),
                                textAlign: TextAlign.left))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildMedallionTile(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 189.v,
            child: BlocSelector<ProfileStatsBloc, ProfileStatsState,
                    ProfileStatsModel?>(
                selector: (state) => state.profileStatsModelObj,
                builder: (context, profileStatsModelObj) {
                  return ListView.separated(
                      padding: EdgeInsets.only(left: 17.h),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 8.h);
                      },
                      itemCount:
                          profileStatsModelObj?.medalliontileItemList.length ??
                              0,
                      itemBuilder: (context, index) {
                        MedalliontileItemModel model = profileStatsModelObj
                                ?.medalliontileItemList[index] ??
                            MedalliontileItemModel();
                        return MedalliontileItemWidget(model);
                      });
                })));
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 35.h, right: 36.h),
        child: BlocSelector<ProfileStatsBloc, ProfileStatsState,
                TextEditingController?>(
            selector: (state) => state.userNameController,
            builder: (context, userNameController) {
              return CustomTextFormField(
                  controller: userNameController,
                  hintText: "lbl_username".tr,
                  validator: (value) {
                    if (!isText(value)) {
                      return "err_msg_please_enter_valid_text".tr;
                    }
                    return null;
                  },
                  contentPadding: EdgeInsets.symmetric(horizontal: 5.h));
            }));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 35.h, right: 36.h),
        child: BlocSelector<ProfileStatsBloc, ProfileStatsState,
                TextEditingController?>(
            selector: (state) => state.passwordController,
            builder: (context, passwordController) {
              return CustomTextFormField(
                  controller: passwordController,
                  hintText: "lbl_password".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_password".tr;
                    }
                    return null;
                  },
                  obscureText: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 7.h));
            }));
  }

  /// Section Widget
  Widget _buildSignup(BuildContext context) {
    return Container(
        width: 289.h,
        margin: EdgeInsets.symmetric(horizontal: 35.h),
        padding: EdgeInsets.symmetric(horizontal: 75.h),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder27),
        child: Container(
            width: 126.h,
            margin: EdgeInsets.only(left: 11.h),
            child: Text("lbl_login".tr,
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.titleLargePoppinsBlack900
                    .copyWith(height: 1.57))));
  }

  /// Section Widget
  Widget _buildNavCourses(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates to the profileLeaderboardScreen when the action is triggered.
  onTapTxtLeaderboard(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileLeaderboardScreen,
    );
  }
}
