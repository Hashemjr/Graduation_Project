import 'bloc/signup_bloc.dart';
import 'models/signup_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:chineasy/core/utils/validation_functions.dart';
import 'package:chineasy/widgets/custom_elevated_button.dart';
import 'package:chineasy/widgets/custom_icon_button.dart';
import 'package:chineasy/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignupBloc>(
        create: (context) =>
            SignupBloc(SignupState(signupModelObj: SignupModel()))
              ..add(SignupInitialEvent()),
        child: SignupScreen());
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
                        colors: [appTheme.black900, appTheme.gray90001])),
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            height: SizeUtils.height,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          decoration: AppDecoration
                                              .gradientDeepOrangeAToRedA
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderTL40),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height: 13.v),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgStar1,
                                                              height:
                                                                  27.adaptSize,
                                                              width:
                                                                  27.adaptSize,
                                                              radius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.h)),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgStar2,
                                                              height:
                                                                  27.adaptSize,
                                                              width:
                                                                  27.adaptSize,
                                                              radius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.h),
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          4.h)),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgStar3,
                                                              height:
                                                                  27.adaptSize,
                                                              width:
                                                                  27.adaptSize,
                                                              radius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.h),
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          4.h))
                                                        ])),
                                                SizedBox(height: 33.v),
                                                _buildFirstAndLastName(context),
                                                SizedBox(height: 35.v),
                                                _buildUserName(context),
                                                SizedBox(height: 36.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 35.h),
                                                    child: Row(children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 2.v),
                                                          child:
                                                              Column(children: [
                                                            Text("lbl_day".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodyMedium),
                                                            SizedBox(
                                                                height: 1.v),
                                                            SizedBox(
                                                                width: 49.h,
                                                                child: Divider(
                                                                    color: theme
                                                                        .colorScheme
                                                                        .primary
                                                                        .withOpacity(
                                                                            0.65)))
                                                          ])),
                                                      _buildMonthValue(context),
                                                      _buildYearValue(context)
                                                    ])),
                                                SizedBox(height: 36.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 35.h),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          _buildGenderValue(
                                                              context),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgDownArrow,
                                                              height: 22
                                                                  .adaptSize,
                                                              width:
                                                                  22.adaptSize,
                                                              radius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          2.h),
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          4.v))
                                                        ])),
                                                SizedBox(height: 38.v),
                                                _buildSignup(context),
                                                SizedBox(height: 16.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 70.h),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 2.v,
                                                                      bottom:
                                                                          3.v),
                                                              child: Text(
                                                                  "msg_already_have_account"
                                                                      .tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodySmall)),
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapTxtLogIn(
                                                                    context);
                                                              },
                                                              child: Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left: 5
                                                                              .h),
                                                                  child: Text(
                                                                      "lbl_log_in"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .titleMediumPoppins)))
                                                        ])),
                                                SizedBox(height: 1.v),
                                                SizedBox(
                                                    height: 156.v,
                                                    width: 220.h,
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgRedOpenedBook156x171,
                                                              height: 156.v,
                                                              width: 171.h,
                                                              alignment: Alignment
                                                                  .centerLeft),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgGmailLogo,
                                                              height: 45
                                                                  .adaptSize,
                                                              width:
                                                                  45.adaptSize,
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          21.h,
                                                                      bottom: 49
                                                                          .v)),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child: Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          top: 43
                                                                              .v),
                                                                  child: Text(
                                                                      "lbl_sign_in_using"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .bodySmallPrimary))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child: Padding(
                                                                  padding: EdgeInsets.only(
                                                                      top: 2.v,
                                                                      right:
                                                                          25.h),
                                                                  child: Text(
                                                                      "lbl_or"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .titleLargePrimary)))
                                                        ]))
                                              ]))),
                                  _buildTitleHead(context)
                                ])))))));
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return BlocSelector<SignupBloc, SignupState, TextEditingController?>(
        selector: (state) => state.firstNameController,
        builder: (context, firstNameController) {
          return CustomTextFormField(
              width: 140.h,
              controller: firstNameController,
              hintText: "lbl_first_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              },
              contentPadding: EdgeInsets.symmetric(horizontal: 5.h));
        });
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: BlocSelector<SignupBloc, SignupState, TextEditingController?>(
            selector: (state) => state.lastNameController,
            builder: (context, lastNameController) {
              return CustomTextFormField(
                  width: 140.h,
                  controller: lastNameController,
                  hintText: "lbl_last_name".tr,
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
  Widget _buildFirstAndLastName(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              _buildFirstName(context),
              _buildLastName(context)
            ])));
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 35.h, right: 36.h),
        child: BlocSelector<SignupBloc, SignupState, TextEditingController?>(
            selector: (state) => state.userNameController,
            builder: (context, userNameController) {
              return CustomTextFormField(
                  controller: userNameController,
                  hintText: "lbl_username".tr,
                  alignment: Alignment.center,
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
  Widget _buildMonthValue(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: BlocSelector<SignupBloc, SignupState, TextEditingController?>(
            selector: (state) => state.monthValueController,
            builder: (context, monthValueController) {
              return CustomTextFormField(
                  width: 54.h,
                  controller: monthValueController,
                  hintText: "lbl_month".tr,
                  contentPadding: EdgeInsets.symmetric(horizontal: 1.h));
            }));
  }

  /// Section Widget
  Widget _buildYearValue(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: BlocSelector<SignupBloc, SignupState, TextEditingController?>(
            selector: (state) => state.yearValueController,
            builder: (context, yearValueController) {
              return CustomTextFormField(
                  width: 49.h,
                  controller: yearValueController,
                  hintText: "lbl_year".tr,
                  contentPadding: EdgeInsets.symmetric(horizontal: 4.h));
            }));
  }

  /// Section Widget
  Widget _buildGenderValue(BuildContext context) {
    return BlocSelector<SignupBloc, SignupState, TextEditingController?>(
        selector: (state) => state.genderValueController,
        builder: (context, genderValueController) {
          return CustomTextFormField(
              width: 115.h,
              controller: genderValueController,
              hintText: "lbl_gender".tr,
              textInputAction: TextInputAction.done,
              contentPadding: EdgeInsets.symmetric(horizontal: 5.h));
        });
  }

  /// Section Widget
  Widget _buildSignup(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_signup".tr,
        margin: EdgeInsets.only(left: 35.h, right: 36.h),
        onPressed: () {
          onTapSignup(context);
        },
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildTitleHead(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            height: 258.v,
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 38.v),
            child: Stack(alignment: Alignment.topLeft, children: [
              Align(
                  alignment: Alignment.center,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 38.v, bottom: 135.v),
                            child: Column(children: [
                              Text("lbl_get_started".tr,
                                  style: theme.textTheme.displayMedium),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 3.h),
                                      child: Text("msg_start_learning".tr,
                                          style: CustomTextStyles
                                              .titleSmallGray500)))
                            ])),
                        SizedBox(
                            height: 251.v,
                            width: 122.h,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgBack,
                                  height: 147.v,
                                  width: 120.h,
                                  alignment: Alignment.topCenter,
                                  margin: EdgeInsets.only(top: 5.v)),
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      height: 251.v,
                                      width: 122.h,
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgIcon7,
                                                height: 177.v,
                                                width: 118.h,
                                                alignment:
                                                    Alignment.bottomCenter),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgIcon3,
                                                height: 132.v,
                                                width: 122.h,
                                                alignment: Alignment.topCenter)
                                          ])))
                            ]))
                      ])),
              CustomIconButton(
                  height: 52.adaptSize,
                  width: 52.adaptSize,
                  alignment: Alignment.topLeft,
                  onTap: () {
                    onTapBtnGoBack(context);
                  },
                  child: CustomImageView(imagePath: ImageConstant.imgGoBack))
            ])));
  }

  /// Navigates to the signuponeScreen when the action is triggered.
  onTapSignup(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signuponeScreen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLogIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the chooseAccountoneScreen when the action is triggered.
  onTapBtnGoBack(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chooseAccountoneScreen,
    );
  }
}
