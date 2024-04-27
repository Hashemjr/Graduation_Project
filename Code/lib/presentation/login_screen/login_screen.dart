import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:chineasy/widgets/custom_elevated_button.dart';
import 'package:chineasy/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
        ..add(LoginInitialEvent()),
      child: LoginScreen(),
    );
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
              colors: [appTheme.black900, appTheme.gray90001],
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Form(
              key: _formKey,
              child: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(top: 218.v),
                        decoration:
                            AppDecoration.gradientDeepOrangeAToRedA.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL40,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(left: 35.h, right: 36.h),
                              child: BlocSelector<LoginBloc, LoginState,
                                  TextEditingController?>(
                                selector: (state) => state.userNameController,
                                builder: (context, userNameController) {
                                  return CustomTextFormField(
                                    controller: userNameController,
                                    hintText: "lbl_username".tr,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "username is required".tr;
                                      }
                                      return null;
                                    },
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 5.h),
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: 59.v),
                            Padding(
                              padding: EdgeInsets.only(left: 35.h, right: 36.h),
                              child: BlocSelector<LoginBloc, LoginState,
                                  TextEditingController?>(
                                selector: (state) => state.passwordController,
                                builder: (context, passwordController) {
                                  return CustomTextFormField(
                                    controller: passwordController,
                                    hintText: "lbl_password".tr,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "password is required".tr;
                                      }
                                      return null;
                                    },
                                    obscureText: true,
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 7.h),
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: 11.v),
                            Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () {
                                  onTapTxtForgetPassword(context);
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(right: 31.h),
                                  child: Text(
                                    "msg_forget_password".tr,
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 80.v),
                            CustomElevatedButton(
                              text: "lbl_login2".tr,
                              margin: EdgeInsets.only(left: 35.h, right: 36.h),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  onTapLoginButton(context);
                                }
                              },
                            ),
                            SizedBox(height: 14.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 3.v, bottom: 2.v),
                                  child: Text(
                                    "msg_don_t_have_account".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    onTapTxtSIGNUP(context);
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text(
                                      "lbl_signup2".tr,
                                      style:
                                          CustomTextStyles.titleMediumPoppins,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 3.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                height: 156.v,
                                width: 220.h,
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgRedOpenedBook156x171,
                                      height: 156.v,
                                      width: 171.h,
                                      alignment: Alignment.centerLeft,
                                      icon: '',
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgGmailLogo,
                                      height: 45.adaptSize,
                                      width: 45.adaptSize,
                                      alignment: Alignment.bottomRight,
                                      margin: EdgeInsets.only(
                                          right: 21.h, bottom: 49.v),
                                      icon: '',
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 43.v),
                                        child: Text(
                                          "lbl_sign_in_using".tr,
                                          style:
                                              CustomTextStyles.bodySmallPrimary,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 2.v, right: 25.h),
                                        child: Text(
                                          "lbl_or".tr,
                                          style: CustomTextStyles
                                              .titleLargePrimary,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    _buildTitleHead(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitleHead(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(top: 45.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 102.v,
              width: 201.h,
              margin: EdgeInsets.only(top: 39.v, bottom: 109.v),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "lbl_welcome".tr,
                      style: theme.textTheme.displayMedium,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "lbl_back".tr,
                      style: theme.textTheme.displayMedium,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 251.v,
              width: 122.h,
              margin: EdgeInsets.only(left: 5.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgBack,
                    height: 147.v,
                    width: 120.h,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 5.v),
                    icon: '',
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
                            icon: '',
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgIcon3,
                            height: 132.v,
                            width: 122.h,
                            alignment: Alignment.topCenter,
                            icon: '',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTapTxtForgetPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.forgetPasswordScreen,
    );
  }

  onTapTxtSIGNUP(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupScreen,
    );
  }

  onTapLoginButton(BuildContext context) {
    // Here's where we can add the password validation check
    final bloc = BlocProvider.of<LoginBloc>(context);
    final state = bloc.state;

    if (state.passwordController!.text.length < 8) {
      // Show a pop-up message if the password is less than 8 characters
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Password Error",
              style: TextStyle(color: Colors.black),
            ),
            content: Text(
              "Your password must be at least 8 characters long.",
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
            ],
            backgroundColor: Colors.white,
          );
        },
      );
    } else {
      // Navigate to home page
      NavigatorService.pushNamed(AppRoutes.homePageContainerScreen);
    }
  }
}
