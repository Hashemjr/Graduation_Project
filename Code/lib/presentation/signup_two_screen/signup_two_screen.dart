import 'bloc/signup_two_bloc.dart';
import 'models/signup_two_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';
import 'package:grad_project/core/utils/validation_functions.dart';
import 'package:grad_project/widgets/custom_elevated_button.dart';
import 'package:grad_project/widgets/custom_icon_button.dart';
import 'package:grad_project/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupTwoScreen extends StatelessWidget {
  SignupTwoScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignupTwoBloc>(
        create: (context) =>
            SignupTwoBloc(SignupTwoState(signupTwoModelObj: SignupTwoModel()))
              ..add(SignupTwoInitialEvent()),
        child: SignupTwoScreen());
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
                    child: SizedBox(
                        width: double.maxFinite,
                        child: Column(children: [
                          SizedBox(height: 38.v),
                          Expanded(
                              child: SingleChildScrollView(
                                  child: SizedBox(
                                      height: 878.v,
                                      width: double.maxFinite,
                                      child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgBackground,
                                                height: 620.v,
                                                width: 360.h,
                                                alignment: Alignment.center),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRedOpenedBook234x142,
                                                height: 234.v,
                                                width: 142.h,
                                                radius:
                                                    BorderRadius.circular(71.h),
                                                alignment:
                                                    Alignment.bottomLeft),
                                            _buildUserNameColumn(context),
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 193.v),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
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
                                                        ]))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 211.v),
                                                    child: Text(
                                                        "lbl_sign_in_using".tr,
                                                        style: CustomTextStyles
                                                            .bodySmallPrimary))),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgGmailLogo,
                                                height: 45.adaptSize,
                                                width: 45.adaptSize,
                                                alignment:
                                                    Alignment.bottomCenter,
                                                margin: EdgeInsets.only(
                                                    bottom: 165.v)),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5.h,
                                                        top: 45.v,
                                                        right: 122.h),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                              "lbl_get_started"
                                                                  .tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .displayMedium),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          right: 3
                                                                              .h),
                                                                  child: Text(
                                                                      "msg_start_learning"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .titleSmallPoppinsErrorContainer)))
                                                        ]))),
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                    height: 251.v,
                                                    width: 122.h,
                                                    margin: EdgeInsets.only(
                                                        top: 7.v),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.topCenter,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgEllipse1912,
                                                              height: 143.v,
                                                              width: 88.h,
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top:
                                                                          9.v)),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgGroup8779,
                                                              height: 129.v,
                                                              width: 120.h,
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top:
                                                                          5.v)),
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
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter)
                                                        ]))),
                                            CustomIconButton(
                                                height: 52.adaptSize,
                                                width: 52.adaptSize,
                                                alignment: Alignment.topLeft,
                                                onTap: () {
                                                  onTapBtnGoBack(context);
                                                },
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgGoBack)),
                                            _buildFirstName(context)
                                          ]))))
                        ]))))));
  }

  /// Section Widget
  Widget _buildUserNameEditText(BuildContext context) {
    return BlocSelector<SignupTwoBloc, SignupTwoState, TextEditingController?>(
        selector: (state) => state.userNameEditTextController,
        builder: (context, userNameEditTextController) {
          return CustomTextFormField(
              controller: userNameEditTextController,
              hintText: "lbl_username".tr,
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
  Widget _buildDayValueEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 2.v),
        child:
            BlocSelector<SignupTwoBloc, SignupTwoState, TextEditingController?>(
                selector: (state) => state.dayValueEditTextController,
                builder: (context, dayValueEditTextController) {
                  return CustomTextFormField(
                      width: 49.h,
                      controller: dayValueEditTextController,
                      hintText: "lbl_day".tr,
                      contentPadding: EdgeInsets.symmetric(horizontal: 8.h));
                }));
  }

  /// Section Widget
  Widget _buildMonthValueEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child:
            BlocSelector<SignupTwoBloc, SignupTwoState, TextEditingController?>(
                selector: (state) => state.monthValueEditTextController,
                builder: (context, monthValueEditTextController) {
                  return CustomTextFormField(
                      width: 54.h,
                      controller: monthValueEditTextController,
                      hintText: "lbl_month".tr,
                      contentPadding: EdgeInsets.symmetric(horizontal: 1.h));
                }));
  }

  /// Section Widget
  Widget _buildYearValueEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child:
            BlocSelector<SignupTwoBloc, SignupTwoState, TextEditingController?>(
                selector: (state) => state.yearValueEditTextController,
                builder: (context, yearValueEditTextController) {
                  return CustomTextFormField(
                      width: 49.h,
                      controller: yearValueEditTextController,
                      hintText: "lbl_year".tr,
                      contentPadding: EdgeInsets.symmetric(horizontal: 4.h));
                }));
  }

  /// Section Widget
  Widget _buildGenderValueEditText(BuildContext context) {
    return BlocSelector<SignupTwoBloc, SignupTwoState, TextEditingController?>(
        selector: (state) => state.genderValueEditTextController,
        builder: (context, genderValueEditTextController) {
          return CustomTextFormField(
              width: 115.h,
              controller: genderValueEditTextController,
              hintText: "lbl_gender".tr,
              contentPadding: EdgeInsets.symmetric(horizontal: 5.h));
        });
  }

  /// Section Widget
  Widget _buildSignupButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_signup".tr,
        onPressed: () {
          onTapSignupButton(context);
        });
  }

  /// Section Widget
  Widget _buildUserNameColumn(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 35.h, right: 35.h, bottom: 239.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildUserNameEditText(context),
                  SizedBox(height: 35.v),
                  Row(children: [
                    _buildDayValueEditText(context),
                    _buildMonthValueEditText(context),
                    _buildYearValueEditText(context)
                  ]),
                  SizedBox(height: 35.v),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    _buildGenderValueEditText(context),
                    CustomImageView(
                        imagePath: ImageConstant.imgPolygon1,
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                        radius: BorderRadius.circular(2.h),
                        margin: EdgeInsets.only(top: 2.v, bottom: 4.v))
                  ]),
                  SizedBox(height: 38.v),
                  _buildSignupButton(context),
                  SizedBox(height: 16.v),
                  Padding(
                      padding: EdgeInsets.only(left: 35.h, right: 49.h),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
                                child: Text("msg_already_have_account".tr,
                                    style: theme.textTheme.bodySmall)),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtLogIn(context);
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(left: 5.h),
                                    child: Text("lbl_log_in2".tr,
                                        style: theme.textTheme.titleMedium)))
                          ])),
                  SizedBox(height: 4.v),
                  Align(
                      alignment: Alignment.center,
                      child: Text("lbl_or".tr,
                          style: CustomTextStyles.titleLargePoppinsPrimary))
                ])));
  }

  /// Section Widget
  Widget _buildFirstNameEditText(BuildContext context) {
    return BlocSelector<SignupTwoBloc, SignupTwoState, TextEditingController?>(
        selector: (state) => state.firstNameEditTextController,
        builder: (context, firstNameEditTextController) {
          return CustomTextFormField(
              width: 140.h,
              controller: firstNameEditTextController,
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
  Widget _buildLastNameEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child:
            BlocSelector<SignupTwoBloc, SignupTwoState, TextEditingController?>(
                selector: (state) => state.lastNameEditTextController,
                builder: (context, lastNameEditTextController) {
                  return CustomTextFormField(
                      width: 140.h,
                      controller: lastNameEditTextController,
                      hintText: "lbl_last_name".tr,
                      textInputAction: TextInputAction.done,
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
  Widget _buildFirstName(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(top: 253.v),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildFirstNameEditText(context),
                  _buildLastNameEditText(context)
                ])));
  }

  /// Navigates to the signupOneScreen when the action is triggered.
  onTapSignupButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupOneScreen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLogIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the chooseAccountOneScreen when the action is triggered.
  onTapBtnGoBack(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chooseAccountOneScreen,
    );
  }
}
