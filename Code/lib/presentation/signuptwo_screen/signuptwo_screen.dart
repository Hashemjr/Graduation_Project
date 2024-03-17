import 'package:flutter/material.dart';
import 'bloc/signuptwo_bloc.dart';
import 'models/signuptwo_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:chineasy/widgets/custom_elevated_button.dart';
<<<<<<< HEAD
=======
import 'package:chineasy/widgets/custom_icon_button.dart';
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
import 'package:chineasy/widgets/custom_pin_code_text_field.dart';

class SignuptwoScreen extends StatefulWidget {
  const SignuptwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SignuptwoBloc>(
<<<<<<< HEAD
      create: (context) =>
          SignuptwoBloc(SignuptwoState(signuptwoModelObj: SignuptwoModel()))
            ..add(SignuptwoInitialEvent()),
=======
      create: (context) => SignuptwoBloc(SignuptwoState(signuptwoModelObj: SignuptwoModel()))
        ..add(SignuptwoInitialEvent()),
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
      child: SignuptwoScreen(),
    );
  }

  @override
  _SignuptwoScreenState createState() => _SignuptwoScreenState();
}

class _SignuptwoScreenState extends State<SignuptwoScreen> {
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
          child: SizedBox(
            height: SizeUtils.height,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
<<<<<<< HEAD
                    decoration:
                        AppDecoration.gradientDeepOrangeAToRedA.copyWith(
=======
                    decoration: AppDecoration.gradientDeepOrangeAToRedA.copyWith(
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                      borderRadius: BorderRadiusStyle.customBorderTL40,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
<<<<<<< HEAD
                        SizedBox(height: 15.v),
=======
                        SizedBox(height: 15
                            .v),
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                        SizedBox(
                          height: 27.v,
                          width: 90.h,
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 3.v,
                                  width: 20.h,
                                  margin: EdgeInsets.only(right: 19.h),
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.primary,
                                    borderRadius: BorderRadius.circular(1.h),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  height: 3.v,
                                  width: 20.h,
                                  margin: EdgeInsets.only(left: 19.h),
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.primary,
                                    borderRadius: BorderRadius.circular(1.h),
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgStar327x27,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                radius: BorderRadius.circular(4.h),
                                color: Colors.white,
                                alignment: Alignment.centerRight,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgStar227x27,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
<<<<<<< HEAD
                                radius: BorderRadius.circular(4.h),
                                color: Colors.white,
=======
                                radius: BorderRadius.circular(4.h),color: Colors.white,
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                                alignment: Alignment.center,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgStar127x27,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
<<<<<<< HEAD
                                radius: BorderRadius.circular(4.h),
                                color: Colors.white,
=======
                                radius: BorderRadius.circular(4.h),color: Colors.white,
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                                alignment: Alignment.centerLeft,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 0.v),
                        Text(
                          "lbl_otp_verfication".tr,
                          style: theme.textTheme.headlineLarge,
                        ),
                        SizedBox(
                          width: 221.h,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_enter_code_from2".tr,
                                  style: CustomTextStyles.labelLargeffa3a3a3,
                                ),
                                TextSpan(
                                  text: "lbl_email".tr,
<<<<<<< HEAD
                                  style:
                                      CustomTextStyles.labelLargeffa3a3a3Bold,
=======
                                  style: CustomTextStyles.labelLargeffa3a3a3Bold,
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 0.v),
<<<<<<< HEAD
                        Text("lbl_02_40".tr,
                            style: CustomTextStyles.titleSmallSemiBold),
                        SizedBox(height: 69.v),
                        Padding(
                          padding: EdgeInsets.only(left: 39.h, right: 46.h),
                          child: BlocSelector<SignuptwoBloc, SignuptwoState,
                              TextEditingController?>(
=======
                        Text("lbl_02_40".tr, style: CustomTextStyles.titleSmallSemiBold),
                        SizedBox(height: 69.v),
                        Padding(
                          padding: EdgeInsets.only(left: 39.h, right: 46.h),
                          child: BlocSelector<SignuptwoBloc, SignuptwoState, TextEditingController?>(
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                            selector: (state) => state.otpController,
                            builder: (context, otpController) {
                              return CustomPinCodeTextField(
                                context: context,
                                controller: otpController,
                                onChanged: (value) {
                                  otpController?.text = value;
                                },
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 19.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 2.v),
<<<<<<< HEAD
                              child: Text("msg_didn_t_receive_the".tr,
                                  style: theme.textTheme.labelLarge),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("lbl_resend".tr,
                                  style: CustomTextStyles.labelLargePrimary),
=======
                              child: Text("msg_didn_t_receive_the".tr, style: theme.textTheme.labelLarge),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text("lbl_resend".tr, style: CustomTextStyles.labelLargePrimary),
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                            ),
                          ],
                        ),
                        SizedBox(height: 50.v),
                        CustomElevatedButton(
                          text: "lbl_submit".tr,
                          margin: EdgeInsets.only(left: 35.h, right: 36.h),
                          onPressed: () {
                            onTapSubmit(context);
                          },
                        ),
                        SizedBox(height: 16.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 70.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
<<<<<<< HEAD
                                  padding:
                                      EdgeInsets.only(top: 3.v, bottom: 0.v),
                                  child: Text("msg_already_have_account".tr,
                                      style: theme.textTheme.bodySmall),
=======
                                  padding: EdgeInsets.only(top: 3.v, bottom: 0.v),
                                  child: Text("msg_already_have_account".tr, style: theme.textTheme.bodySmall),
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                                ),
                                GestureDetector(
                                  onTap: () {
                                    onTapTxtLogIn(context);
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 5.h),
<<<<<<< HEAD
                                    child: Text("lbl_log_in".tr,
                                        style: CustomTextStyles
                                            .titleMediumPoppins),
=======
                                    child: Text("lbl_log_in".tr, style: CustomTextStyles.titleMediumPoppins),
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 0.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            height: 156.v,
                            width: 220.h,
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
<<<<<<< HEAD
                                  imagePath:
                                      ImageConstant.imgRedOpenedBook156x171,
=======
                                  imagePath: ImageConstant.imgRedOpenedBook156x171,
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                                  height: 156.v,
                                  width: 171.h,
                                  alignment: Alignment.centerLeft,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgGmailLogo,
                                  height: 45.adaptSize,
                                  width: 45.adaptSize,
                                  alignment: Alignment.bottomRight,
<<<<<<< HEAD
                                  margin: EdgeInsets.only(
                                      right: 15.h, bottom: 57.v),
=======
                                  margin: EdgeInsets.only(right: 15.h, bottom: 57.v),
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 35.v),
<<<<<<< HEAD
                                    child: Text("lbl_sign_in_using".tr,
                                        style:
                                            CustomTextStyles.bodySmallPrimary),
=======
                                    child: Text("lbl_sign_in_using".tr, style: CustomTextStyles.bodySmallPrimary),
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
<<<<<<< HEAD
                                    padding:
                                        EdgeInsets.only(top: 2.v, right: 25.h),
                                    child: Text("lbl_or".tr,
                                        style:
                                            CustomTextStyles.titleLargePrimary),
=======
                                    padding: EdgeInsets.only(top: 2.v, right: 25.h),
                                    child: Text("lbl_or".tr, style: CustomTextStyles.titleLargePrimary),
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
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
    );
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
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 110.h),
                                      child: Text("msg_start_learning".tr,
                                          style: CustomTextStyles
                                              .titleSmallGray500)))
                            ])),
                        Padding(
<<<<<<< HEAD
                          padding: EdgeInsets.only(
                              left:
                                  15.6.h), // Adjust the left padding as needed
=======
                          padding: EdgeInsets.only(left: 15.6.h), // Adjust the left padding as needed
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
<<<<<<< HEAD
                  alignment: Alignment.topLeft,
=======
                    alignment: Alignment.topLeft,
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
                ),
              )
            ])));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.loginScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLogIn(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.loginScreen);
  }

  /// Navigates to the signuponeScreen when the action is triggered.
  onTapBtnGoBack(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.signuponeScreen);
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> 745dc441913e5d902d5c69af130cc3f3de232b4a
