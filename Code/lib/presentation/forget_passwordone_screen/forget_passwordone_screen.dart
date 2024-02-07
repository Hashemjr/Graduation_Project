import 'bloc/forget_passwordone_bloc.dart';
import 'models/forget_passwordone_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:chineasy/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ForgetPasswordoneScreen extends StatelessWidget {
  const ForgetPasswordoneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ForgetPasswordoneBloc>(
        create: (context) => ForgetPasswordoneBloc(ForgetPasswordoneState(
            forgetPasswordoneModelObj: ForgetPasswordoneModel()))
          ..add(ForgetPasswordoneInitialEvent()),
        child: ForgetPasswordoneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgetPasswordoneBloc, ForgetPasswordoneState>(
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
                          colors: [appTheme.black900, appTheme.gray90001])),
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Column(children: [
                        SizedBox(height: 98.v),
                        Expanded(
                            child: SingleChildScrollView(
                                child: SizedBox(
                                    height: 702.v,
                                    width: double.maxFinite,
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgSmilingManWearing,
                                              height: 136.v,
                                              width: 159.h,
                                              alignment: Alignment.topRight,
                                              margin: EdgeInsets.only(
                                                  top: 111.v, right: 4.h)),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 31.h, right: 129.h),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("lbl_forget".tr,
                                                            style: theme
                                                                .textTheme
                                                                .displayMedium),
                                                        Text("lbl_password".tr,
                                                            style: theme
                                                                .textTheme
                                                                .displayMedium)
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .customBorderTL40),
                                                  child: Container(
                                                      height: 481.v,
                                                      width: double.maxFinite,
                                                      decoration: AppDecoration
                                                          .gradientDeepOrangeAToRedA
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .customBorderTL40),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgRedOpenedBook,
                                                                height: 136.v,
                                                                width: 147.h,
                                                                alignment: Alignment
                                                                    .bottomLeft),
                                                            _buildForgetPasswordBackground(
                                                                context)
                                                          ]))))
                                        ]))))
                      ])))));
    });
  }

  /// Section Widget
  Widget _buildForgetPasswordBackground(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 35.h, top: 37.v, right: 35.h),
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
                                style: CustomTextStyles.titleMediumPoppins))
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
