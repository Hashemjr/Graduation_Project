import 'bloc/reset_password_bloc.dart';
import 'models/reset_password_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';
import 'package:grad_project/core/utils/validation_functions.dart';
import 'package:grad_project/widgets/custom_elevated_button.dart';
import 'package:grad_project/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPasswordBloc>(
        create: (context) => ResetPasswordBloc(
            ResetPasswordState(resetPasswordModelObj: ResetPasswordModel()))
          ..add(ResetPasswordInitialEvent()),
        child: ResetPasswordScreen());
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
                          SizedBox(height: 93.v),
                          Expanded(
                              child: SingleChildScrollView(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 31.h),
                                    child: Text("lbl_reset".tr,
                                        style: theme.textTheme.displayMedium)),
                                SizedBox(
                                    height: 762.v,
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
                                                        _buildResetPasswordForm(
                                                            context),
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
                                                                        10.v))
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
                                                  top: 56.v, right: 4.h))
                                        ]))
                              ])))
                        ]))))));
  }

  /// Section Widget
  Widget _buildResetPasswordForm(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 35.h, top: 131.v, right: 35.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              BlocSelector<ResetPasswordBloc, ResetPasswordState,
                      TextEditingController?>(
                  selector: (state) => state.newpasswordController,
                  builder: (context, newpasswordController) {
                    return CustomTextFormField(
                        controller: newpasswordController,
                        hintText: "lbl_new_password".tr,
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
              SizedBox(height: 62.v),
              BlocSelector<ResetPasswordBloc, ResetPasswordState,
                      TextEditingController?>(
                  selector: (state) => state.confirmpasswordController,
                  builder: (context, confirmpasswordController) {
                    return CustomTextFormField(
                        controller: confirmpasswordController,
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
                  }),
              SizedBox(height: 67.v),
              CustomElevatedButton(
                  text: "lbl_submit".tr,
                  onPressed: () {
                    onTapSubmit(context);
                  })
            ])));
  }

  /// Navigates to the resetPasswordOneScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.resetPasswordOneScreen,
    );
  }
}
