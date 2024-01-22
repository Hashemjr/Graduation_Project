import 'bloc/forget_password_bloc.dart';
import 'models/forget_password_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';
import 'package:grad_project/widgets/custom_elevated_button.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ForgetPasswordBloc>(
        create: (context) => ForgetPasswordBloc(
            ForgetPasswordState(forgetPasswordModelObj: ForgetPasswordModel()))
          ..add(ForgetPasswordInitialEvent()),
        child: ForgetPasswordScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgetPasswordBloc, ForgetPasswordState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
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
                        SizedBox(height: 98.v),
                        Expanded(
                            child: SingleChildScrollView(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 31.h),
                                  child: Text("lbl_forget".tr,
                                      style: theme.textTheme.displayMedium)),
                              SizedBox(
                                  height: 759.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: SizedBox(
                                                height: 629.v,
                                                width: double.maxFinite,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgBackground,
                                                          height: 513.v,
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
                                                              .bottomCenter,
                                                          child: Container(
                                                              width: 92.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          55.v),
                                                              child: Text(
                                                                  "lbl_sign_in_using"
                                                                      .tr,
                                                                  maxLines:
                                                                      null,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: CustomTextStyles
                                                                      .bodySmallPrimary))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          88.v),
                                                              child: Text(
                                                                  "lbl_or".tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: CustomTextStyles
                                                                      .titleLargePoppinsPrimary))),
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
                                                                      10.v)),
                                                      _buildForgetPasswordColumn(
                                                          context)
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 31.h),
                                                child: Text("lbl_password".tr,
                                                    style: theme.textTheme
                                                        .displayMedium))),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgSmilingManWearing,
                                            height: 136.v,
                                            width: 159.h,
                                            alignment: Alignment.topRight,
                                            margin: EdgeInsets.only(
                                                top: 53.v, right: 4.h))
                                      ]))
                            ])))
                      ])))));
    });
  }

  /// Section Widget
  Widget _buildForgetPasswordColumn(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 35.h, top: 70.v, right: 35.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Text("lbl_success".tr,
                  style: CustomTextStyles.displaySmallPoppinsBold),
              SizedBox(height: 13.v),
              Container(
                  width: 221.h,
                  margin: EdgeInsets.only(left: 38.h, right: 28.h),
                  child: Text("msg_please_check_your".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyMediumPrimary)),
              SizedBox(height: 140.v),
              CustomElevatedButton(
                  text: "lbl_done".tr,
                  onPressed: () {
                    onTapDONE(context);
                  }),
              SizedBox(height: 13.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 42.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 5.v),
                            child: Text("msg_can_t_get_the_email".tr,
                                style: CustomTextStyles
                                    .labelLargeSecondaryContainer)),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text("lbl_resend".tr,
                                style: theme.textTheme.titleMedium))
                      ]))
            ])));
  }

  /// Navigates to the resetPasswordScreen when the action is triggered.
  onTapDONE(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.resetPasswordScreen,
    );
  }
}
