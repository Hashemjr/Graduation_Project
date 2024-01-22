import 'bloc/forget_password_one_bloc.dart';
import 'models/forget_password_one_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';
import 'package:grad_project/core/utils/validation_functions.dart';
import 'package:grad_project/widgets/custom_elevated_button.dart';
import 'package:grad_project/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgetPasswordOneScreen extends StatelessWidget {
  ForgetPasswordOneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ForgetPasswordOneBloc>(
        create: (context) => ForgetPasswordOneBloc(ForgetPasswordOneState(
            forgetPasswordOneModelObj: ForgetPasswordOneModel()))
          ..add(ForgetPasswordOneInitialEvent()),
        child: ForgetPasswordOneScreen());
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
                                                                        bottom: 55
                                                                            .v),
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
                                                                        bottom: 88
                                                                            .v),
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
                                                            height:
                                                                45.adaptSize,
                                                            width: 45.adaptSize,
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        10.v)),
                                                        _buildForgetPasswordForm(
                                                            context)
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 31.h),
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
                        ]))))));
  }

  /// Section Widget
  Widget _buildForgetPasswordForm(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 35.h, top: 164.v, right: 35.h),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: BlocSelector<ForgetPasswordOneBloc,
                              ForgetPasswordOneState, TextEditingController?>(
                          selector: (state) => state.emailController,
                          builder: (context, emailController) {
                            return CustomTextFormField(
                                controller: emailController,
                                hintText: "lbl_email_address".tr,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidEmail(value,
                                          isRequired: true))) {
                                    return "err_msg_please_enter_valid_email"
                                        .tr;
                                  }
                                  return null;
                                },
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 9.h));
                          })),
                  SizedBox(height: 133.v),
                  CustomElevatedButton(
                      text: "lbl_submit".tr,
                      onPressed: () {
                        onTapSubmit(context);
                      }),
                  SizedBox(height: 14.v),
                  Padding(
                      padding: EdgeInsets.only(left: 16.h, right: 33.h),
                      child: Row(children: [
                        Padding(
                            padding: EdgeInsets.only(top: 4.v, bottom: 1.v),
                            child: Text("msg_remembered_the_password".tr,
                                style: theme.textTheme.bodySmall)),
                        GestureDetector(
                            onTap: () {
                              onTapTxtLOGIN(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text("lbl_login".tr,
                                    style: theme.textTheme.titleMedium)))
                      ]))
                ])));
  }

  /// Navigates to the forgetPasswordScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.forgetPasswordScreen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLOGIN(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
