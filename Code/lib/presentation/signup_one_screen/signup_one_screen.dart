import 'bloc/signup_one_bloc.dart';
import 'models/signup_one_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';
import 'package:grad_project/core/utils/validation_functions.dart';
import 'package:grad_project/widgets/custom_elevated_button.dart';
import 'package:grad_project/widgets/custom_icon_button.dart';
import 'package:grad_project/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupOneScreen extends StatelessWidget {
  SignupOneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignupOneBloc>(
        create: (context) =>
            SignupOneBloc(SignupOneState(signupOneModelObj: SignupOneModel()))
              ..add(SignupOneInitialEvent()),
        child: SignupOneScreen());
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
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: SizedBox(
                                                    height: 736.v,
                                                    width: double.maxFinite,
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgBackground,
                                                              height: 620.v,
                                                              width: 360.h,
                                                              alignment: Alignment
                                                                  .topCenter),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgRedOpenedBook234x142,
                                                              height: 234.v,
                                                              width: 142.h,
                                                              radius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          71.h),
                                                              alignment: Alignment
                                                                  .bottomLeft),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              child: Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left:
                                                                          35.h,
                                                                      top: 51.v,
                                                                      right:
                                                                          35.h),
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              SizedBox(
                                                                                  height: 27.v,
                                                                                  width: 58.h,
                                                                                  child: Stack(alignment: Alignment.centerRight, children: [
                                                                                    Align(alignment: Alignment.center, child: Container(height: 3.v, width: 20.h, decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(1.h)))),
                                                                                    CustomImageView(imagePath: ImageConstant.imgStar227x27, height: 27.adaptSize, width: 27.adaptSize, radius: BorderRadius.circular(4.h), alignment: Alignment.centerRight),
                                                                                    CustomImageView(imagePath: ImageConstant.imgStar127x27, height: 27.adaptSize, width: 27.adaptSize, radius: BorderRadius.circular(4.h), alignment: Alignment.centerLeft)
                                                                                  ])),
                                                                              CustomImageView(imagePath: ImageConstant.imgStar327x27, height: 27.adaptSize, width: 27.adaptSize, radius: BorderRadius.circular(4.h), margin: EdgeInsets.only(left: 4.h))
                                                                            ]),
                                                                        SizedBox(
                                                                            height:
                                                                                29.v),
                                                                        _buildBackgroundImage(
                                                                            context),
                                                                        SizedBox(
                                                                            height:
                                                                                30.v),
                                                                        _buildEmailEditText(
                                                                            context),
                                                                        SizedBox(
                                                                            height:
                                                                                33.v),
                                                                        _buildPasswordEditText(
                                                                            context),
                                                                        SizedBox(
                                                                            height:
                                                                                29.v),
                                                                        _buildConfirmPasswordEditText(
                                                                            context),
                                                                        SizedBox(
                                                                            height:
                                                                                38.v),
                                                                        _buildSignupButton(
                                                                            context),
                                                                        SizedBox(
                                                                            height:
                                                                                16.v),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.centerLeft,
                                                                            child: Padding(
                                                                                padding: EdgeInsets.only(left: 35.h, right: 49.h),
                                                                                child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                  Padding(padding: EdgeInsets.only(top: 2.v, bottom: 3.v), child: Text("msg_already_have_account".tr, style: theme.textTheme.bodySmall)),
                                                                                  GestureDetector(
                                                                                      onTap: () {
                                                                                        onTapTxtLogIn(context);
                                                                                      },
                                                                                      child: Padding(padding: EdgeInsets.only(left: 5.h), child: Text("lbl_log_in2".tr, style: theme.textTheme.titleMedium)))
                                                                                ]))),
                                                                        SizedBox(
                                                                            height:
                                                                                4.v),
                                                                        Text(
                                                                            "lbl_or"
                                                                                .tr,
                                                                            style:
                                                                                CustomTextStyles.titleLargePoppinsPrimary)
                                                                      ]))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              child: Padding(
                                                                  padding: EdgeInsets.only(
                                                                      bottom: 211
                                                                          .v),
                                                                  child: Text(
                                                                      "lbl_sign_in_using"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .bodySmallPrimary))),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgGmailLogo,
                                                              height:
                                                                  45.adaptSize,
                                                              width:
                                                                  45.adaptSize,
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          165.v))
                                                        ]))),
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
                                                                      .imgEllipse1913,
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
                                                        .imgGoBack))
                                          ]))))
                        ]))))));
  }

  /// Section Widget
  Widget _buildBackgroundImage(BuildContext context) {
    return BlocSelector<SignupOneBloc, SignupOneState, TextEditingController?>(
        selector: (state) => state.backgroundImageController,
        builder: (context, backgroundImageController) {
          return CustomTextFormField(
              controller: backgroundImageController,
              hintText: "lbl_email".tr,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
              contentPadding: EdgeInsets.symmetric(horizontal: 7.h));
        });
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return BlocSelector<SignupOneBloc, SignupOneState, TextEditingController?>(
        selector: (state) => state.emailEditTextController,
        builder: (context, emailEditTextController) {
          return CustomTextFormField(
              controller: emailEditTextController,
              hintText: "lbl_confirm_email".tr,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
              contentPadding: EdgeInsets.symmetric(horizontal: 7.h));
        });
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return BlocSelector<SignupOneBloc, SignupOneState, TextEditingController?>(
        selector: (state) => state.passwordEditTextController,
        builder: (context, passwordEditTextController) {
          return CustomTextFormField(
              controller: passwordEditTextController,
              hintText: "lbl_password".tr,
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
        });
  }

  /// Section Widget
  Widget _buildConfirmPasswordEditText(BuildContext context) {
    return BlocSelector<SignupOneBloc, SignupOneState, TextEditingController?>(
        selector: (state) => state.confirmPasswordEditTextController,
        builder: (context, confirmPasswordEditTextController) {
          return CustomTextFormField(
              controller: confirmPasswordEditTextController,
              hintText: "msg_confirm_password".tr,
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

  /// Navigates to the signupThreeScreen when the action is triggered.
  onTapSignupButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupThreeScreen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLogIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the signupTwoScreen when the action is triggered.
  onTapBtnGoBack(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupTwoScreen,
    );
  }
}
