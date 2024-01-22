import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';
import 'package:grad_project/core/utils/validation_functions.dart';
import 'package:grad_project/widgets/custom_elevated_button.dart';
import 'package:grad_project/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
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
                          SizedBox(height: 45.v),
                          Expanded(
                              child: SingleChildScrollView(
                                  child: SizedBox(
                                      height: 871.v,
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
                                                          _buildLoginForm(
                                                              context),
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
                                                        left: 31.h, top: 39.v),
                                                    child: Text(
                                                        "lbl_welcome".tr,
                                                        style: theme.textTheme
                                                            .displayMedium))),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 31.h, top: 81.v),
                                                    child: Text("lbl_back".tr,
                                                        style: theme.textTheme
                                                            .displayMedium))),
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
                                                                      .imgEllipse1916,
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
                                                        ])))
                                          ]))))
                        ]))))));
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 35.h, top: 142.v, right: 31.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              BlocSelector<LoginBloc, LoginState, TextEditingController?>(
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
                  }),
              SizedBox(height: 59.v),
              BlocSelector<LoginBloc, LoginState, TextEditingController?>(
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
                  }),
              SizedBox(height: 11.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                      onTap: () {
                        onTapTxtForgetPassword(context);
                      },
                      child: Text("msg_forget_password".tr,
                          style: theme.textTheme.bodySmall!.copyWith(
                              decoration: TextDecoration.underline)))),
              SizedBox(height: 80.v),
              CustomElevatedButton(
                  text: "lbl_login".tr,
                  onPressed: () {
                    onTapLOGIN(context);
                  }),
              SizedBox(height: 14.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                    padding: EdgeInsets.only(top: 3.v, bottom: 2.v),
                    child: Text("msg_don_t_have_account".tr,
                        style: theme.textTheme.bodySmall)),
                GestureDetector(
                    onTap: () {
                      onTapTxtSIGNUP(context);
                    },
                    child: Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text("lbl_signup2".tr,
                            style: theme.textTheme.titleMedium)))
              ]),
              SizedBox(height: 6.v),
              Text("lbl_or".tr,
                  style: CustomTextStyles.titleLargePoppinsPrimary)
            ])));
  }

  /// Navigates to the forgetPasswordOneScreen when the action is triggered.
  onTapTxtForgetPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.forgetPasswordOneScreen,
    );
  }

  /// Navigates to the homePageTwoScreen when the action is triggered.
  onTapLOGIN(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageTwoScreen,
    );
  }

  /// Navigates to the signupTwoScreen when the action is triggered.
  onTapTxtSIGNUP(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupTwoScreen,
    );
  }
}
