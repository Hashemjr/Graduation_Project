import 'bloc/signupone_bloc.dart';
import 'models/signupone_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:chineasy/core/utils/validation_functions.dart';
import 'package:chineasy/widgets/custom_elevated_button.dart';
<<<<<<< HEAD
=======
import 'package:chineasy/widgets/custom_icon_button.dart';
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
import 'package:chineasy/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignuponeScreen extends StatelessWidget {
  SignuponeScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignuponeBloc>(
        create: (context) =>
            SignuponeBloc(SignuponeState(signuponeModelObj: SignuponeModel()))
              ..add(SignuponeInitialEvent()),
        child: SignuponeScreen());
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
                                              children: [
                                                SizedBox(height: 20.v),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(height: 30.v),
                                                      SizedBox(
                                                          height: 27.v,
                                                          width: 58.h,
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
<<<<<<< HEAD
=======

>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                                                                    child: Container(
                                                                        height:
                                                                            3.v,
                                                                        width: 20
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                theme.colorScheme.primary,
                                                                            borderRadius: BorderRadius.circular(1.h)))),
<<<<<<< HEAD
                                                                CustomImageView(
=======

                                                                CustomImageView(

>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgStar21,
                                                                    height: 20
                                                                        .adaptSize,
                                                                    width: 20
                                                                        .adaptSize,
                                                                    radius: BorderRadius
                                                                        .circular(4
<<<<<<< HEAD
                                                                            .h),
                                                                    color: Colors
                                                                        .white,
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight),
=======
                                                                            .h),color: Colors.white,
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight),

>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgStar11,
                                                                    height: 20
                                                                        .adaptSize,
                                                                    width: 20
                                                                        .adaptSize,
                                                                    radius: BorderRadius
                                                                        .circular(4
<<<<<<< HEAD
                                                                            .h),
                                                                    color: Colors
                                                                        .white,
=======
                                                                            .h),color: Colors.white,
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft)
                                                              ])),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgStar31,
                                                          height: 20.adaptSize,
                                                          width: 20.adaptSize,
                                                          radius: BorderRadius
<<<<<<< HEAD
                                                              .circular(4.h),
                                                          color: Colors.black,
=======
                                                              .circular(4.h),color: Colors.black,
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 20.h))
                                                    ]),
                                                SizedBox(height: 40.v),
                                                _buildEmailField(context),
                                                SizedBox(height: 40.v),
                                                _buildEmailField1(context),
                                                SizedBox(height: 40.v),
                                                _buildPasswordField(context),
                                                SizedBox(height: 40.v),
                                                _buildConfirmPasswordField(
                                                    context),
                                                SizedBox(height: 40.v),
                                                _buildSignupButton(context),
                                                SizedBox(height: 20.v),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 70.h),
                                                        child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                  padding: EdgeInsets.only(
<<<<<<< HEAD
                                                                      top: 3.v,
                                                                      bottom:
                                                                          0.v),
=======
                                                                      top: 3.v, bottom: 0.v),
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
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
                                                                      padding: EdgeInsets.only(
                                                                          left: 5
                                                                              .h),
                                                                      child: Text(
                                                                          "lbl_log_in"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.titleMediumPoppins)))
                                                            ]))),
                                                SizedBox(height: 0.v),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: SizedBox(
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
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft),
                                                              CustomImageView(
<<<<<<< HEAD
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgGmailLogo,
                                                                  height: 45
                                                                      .adaptSize,
                                                                  width: 45
                                                                      .adaptSize,
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  margin: EdgeInsets.only(
                                                                      right:
                                                                          15.h,
                                                                      bottom: 57
                                                                          .v)),
=======
                                                                  imagePath: ImageConstant.imgGmailLogo,
                                                                  height: 45.adaptSize,
                                                                  width: 45.adaptSize,
                                                                  alignment: Alignment.bottomRight,
                                                                  margin: EdgeInsets.only(right: 15.h, bottom: 57.v)),
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  child: Padding(
                                                                      padding: EdgeInsets.only(
                                                                          top: 35
                                                                              .v),
                                                                      child: Text(
                                                                          "lbl_sign_in_using"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.bodySmallPrimary))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  child: Padding(
                                                                      padding: EdgeInsets.only(
                                                                          top: 5
                                                                              .v,
                                                                          right: 25
                                                                              .h),
                                                                      child: Text(
                                                                          "lbl_or"
                                                                              .tr,
                                                                          style:
                                                                              CustomTextStyles.titleLargePrimary)))
                                                            ])))
                                              ]))),
                                  _buildTitleHead(context)
                                ])))))));
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 35.h, right: 36.h),
        child:
            BlocSelector<SignuponeBloc, SignuponeState, TextEditingController?>(
                selector: (state) => state.emailFieldController,
                builder: (context, emailFieldController) {
                  return CustomTextFormField(
                      controller: emailFieldController,
                      hintText: "lbl_email2".tr,
                      textInputType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_email".tr;
                        }
                        return null;
                      },
                      contentPadding: EdgeInsets.symmetric(horizontal: 7.h));
                }));
  }

  /// Section Widget
  Widget _buildEmailField1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 35.h, right: 36.h),
        child:
            BlocSelector<SignuponeBloc, SignuponeState, TextEditingController?>(
                selector: (state) => state.emailFieldController1,
                builder: (context, emailFieldController1) {
                  return CustomTextFormField(
                      controller: emailFieldController1,
                      hintText: "lbl_confirm_email".tr,
                      textInputType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_email".tr;
                        }
                        return null;
                      },
                      contentPadding: EdgeInsets.symmetric(horizontal: 7.h));
                }));
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 35.h, right: 36.h),
        child:
            BlocSelector<SignuponeBloc, SignuponeState, TextEditingController?>(
                selector: (state) => state.passwordFieldController,
                builder: (context, passwordFieldController) {
                  return CustomTextFormField(
                      controller: passwordFieldController,
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
                }));
  }

  /// Section Widget
  Widget _buildConfirmPasswordField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 35.h, right: 36.h),
        child:
            BlocSelector<SignuponeBloc, SignuponeState, TextEditingController?>(
                selector: (state) => state.confirmPasswordFieldController,
                builder: (context, confirmPasswordFieldController) {
                  return CustomTextFormField(
                      controller: confirmPasswordFieldController,
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
                }));
  }

  /// Section Widget
  Widget _buildSignupButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_signup".tr,
        margin: EdgeInsets.only(left: 35.h, right: 36.h),
        onPressed: () {
          onTapSignupButton(context);
        });
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
                                      padding: EdgeInsets.only(right: 108.h),
                                      child: Text("msg_start_learning".tr,
                                          style: CustomTextStyles
                                              .titleSmallGray500)))
                            ])),
                        Padding(
<<<<<<< HEAD
                          padding: EdgeInsets.only(
                              left:
                                  15.5.h), // Adjust the left padding as needed
=======
                          padding: EdgeInsets.only(left: 15.5.h), // Adjust the left padding as needed
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                          child: SizedBox(
                            height: 251.v,
                            width: 122.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgBack,
                                  height: 147.v,
                                  width: 120.h,
                                  alignment: Alignment.topCenter,
                                  margin: EdgeInsets.only(top: 5.v),
                                ),
                                Align(
                                  alignment: Alignment.center,
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
                                          alignment: Alignment.bottomCenter,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgIcon3,
                                          height: 132.v,
                                          width: 122.h,
                                          alignment: Alignment.topCenter,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ])),
              InkWell(
                onTap: () {
                  onTapBtnGoBack(context);
                },
                child: CustomImageView(
                  imagePath: ImageConstant.imgGoBack,
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  alignment: Alignment.topLeft,
                ),
              )
            ])));
  }

  /// Navigates to the signuptwoScreen when the action is triggered.
  onTapSignupButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signuptwoScreen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLogIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapBtnGoBack(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupScreen,
    );
  }
}
