import 'bloc/signup_bloc.dart';
import 'models/signup_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';
import 'package:grad_project/widgets/custom_icon_button.dart';
import 'package:grad_project/widgets/custom_pin_code_text_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

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
                        colors: [appTheme.black90001, appTheme.gray90001])),
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
                                            alignment: Alignment.bottomCenter,
                                            child: SizedBox(
                                                height: 736.v,
                                                width: double.maxFinite,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomLeft,
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
                                                          imagePath: ImageConstant
                                                              .imgRedOpenedBook234x142,
                                                          height: 234.v,
                                                          width: 142.h,
                                                          radius: BorderRadius
                                                              .circular(71.h),
                                                          alignment: Alignment
                                                              .bottomLeft),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
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
                                                                    SizedBox(
                                                                        height: 27
                                                                            .v,
                                                                        width: 90
                                                                            .h,
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.centerLeft,
                                                                            children: [
                                                                              Align(alignment: Alignment.centerRight, child: Container(height: 3.v, width: 20.h, margin: EdgeInsets.only(right: 19.h), decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(1.h)))),
                                                                              Align(alignment: Alignment.centerLeft, child: Container(height: 3.v, width: 20.h, margin: EdgeInsets.only(left: 19.h), decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(1.h)))),
                                                                              CustomImageView(imagePath: ImageConstant.imgStar32, height: 27.adaptSize, width: 27.adaptSize, radius: BorderRadius.circular(4.h), alignment: Alignment.centerRight),
                                                                              CustomImageView(imagePath: ImageConstant.imgStar22, height: 27.adaptSize, width: 27.adaptSize, radius: BorderRadius.circular(4.h), alignment: Alignment.center),
                                                                              CustomImageView(imagePath: ImageConstant.imgStar12, height: 27.adaptSize, width: 27.adaptSize, radius: BorderRadius.circular(4.h), alignment: Alignment.centerLeft)
                                                                            ])),
                                                                    SizedBox(
                                                                        height:
                                                                            57.v),
                                                                    Container(
                                                                        width: 221
                                                                            .h,
                                                                        margin: EdgeInsets.only(
                                                                            left:
                                                                                35.h,
                                                                            right: 32.h),
                                                                        child: RichText(
                                                                            text: TextSpan(children: [
                                                                              TextSpan(text: "msg_enter_code_from2".tr, style: CustomTextStyles.labelLargeffa3a3a3),
                                                                              TextSpan(text: "lbl_email2".tr, style: CustomTextStyles.labelLargeffa3a3a3Bold)
                                                                            ]),
                                                                            textAlign: TextAlign.center)),
                                                                    SizedBox(
                                                                        height:
                                                                            12.v),
                                                                    Text(
                                                                        "lbl_02_40"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .titleSmallPoppinsPrimary15),
                                                                    SizedBox(
                                                                        height:
                                                                            37.v),
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: 4
                                                                                .h,
                                                                            right: 10
                                                                                .h),
                                                                        child: BlocSelector<
                                                                                SignupBloc,
                                                                                SignupState,
                                                                                TextEditingController?>(
                                                                            selector: (state) =>
                                                                                state.otpController,
                                                                            builder: (context, otpController) {
                                                                              return CustomPinCodeTextField(
                                                                                  context: context,
                                                                                  controller: otpController,
                                                                                  onChanged: (value) {
                                                                                    otpController?.text = value;
                                                                                  });
                                                                            })),
                                                                    SizedBox(
                                                                        height:
                                                                            20.v),
                                                                    Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Padding(
                                                                              padding: EdgeInsets.only(bottom: 2.v),
                                                                              child: Text("msg_didn_t_receive_the".tr, style: theme.textTheme.labelLarge)),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(left: 3.h),
                                                                              child: Text("lbl_resend".tr, style: CustomTextStyles.labelLargePrimary))
                                                                        ]),
                                                                    SizedBox(
                                                                        height:
                                                                            53.v),
                                                                    _buildSignupSection(
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
                                                                              Padding(padding: EdgeInsets.only(left: 5.h), child: Text("lbl_log_in2".tr, style: theme.textTheme.titleMedium))
                                                                            ]))),
                                                                    SizedBox(
                                                                        height:
                                                                            4.v),
                                                                    Text(
                                                                        "lbl_or"
                                                                            .tr,
                                                                        style: CustomTextStyles
                                                                            .titleLargePoppinsPrimary)
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      bottom: 211
                                                                          .v),
                                                              child: Text(
                                                                  "lbl_sign_in_using"
                                                                      .tr,
                                                                  style: CustomTextStyles
                                                                      .bodySmallPrimary))),
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 299
                                                                          .v),
                                                              child: Text(
                                                                  "msg_re_write_password"
                                                                      .tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyMedium))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgGmailLogo,
                                                          height: 45.adaptSize,
                                                          width: 45.adaptSize,
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          margin:
                                                              EdgeInsets.only(
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
                                                      Text("lbl_get_started".tr,
                                                          style: theme.textTheme
                                                              .displayMedium),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          3.h),
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
                                                margin:
                                                    EdgeInsets.only(top: 7.v),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgEllipse1915,
                                                          height: 143.v,
                                                          width: 88.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 9.v)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgGroup8779,
                                                          height: 129.v,
                                                          width: 120.h,
                                                          alignment: Alignment
                                                              .topCenter,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 5.v)),
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
                                                          alignment: Alignment
                                                              .topCenter)
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(top: 230.v),
                                                child: Text(
                                                    "lbl_otp_verfication".tr,
                                                    style: theme.textTheme
                                                        .headlineLarge))),
                                        Padding(
                                            padding: EdgeInsets.only(left: 1.h),
                                            child: CustomIconButton(
                                                height: 52.adaptSize,
                                                width: 52.adaptSize,
                                                alignment: Alignment.topLeft,
                                                onTap: () {
                                                  onTapBtnGoBack(context);
                                                },
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgGoBack)))
                                      ]))))
                    ])))));
  }

  /// Section Widget
  Widget _buildSignupSection(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapSignupSection(context);
        },
        child: Container(
            width: 289.h,
            padding: EdgeInsets.symmetric(horizontal: 101.h, vertical: 10.v),
            decoration: AppDecoration.fillPrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder27),
            child: Text("lbl_submit".tr,
                style: CustomTextStyles.titleLargePoppinsBlack900)));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapSignupSection(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the signupThreeScreen when the action is triggered.
  onTapBtnGoBack(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signupThreeScreen,
    );
  }
}
