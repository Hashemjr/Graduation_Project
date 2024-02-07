import 'bloc/reset_password_bloc.dart';
import 'models/reset_password_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:chineasy/core/utils/validation_functions.dart';
import 'package:chineasy/widgets/custom_elevated_button.dart';
import 'package:chineasy/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

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
                        colors: [appTheme.black900, appTheme.gray90001])),
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            height: SizeUtils.height,
                            width: double.maxFinite,
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                      decoration: AppDecoration
                                          .gradientDeepOrangeAToRedA
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderTL40),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(height: 99.v),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 35.h, right: 36.h),
                                                child: BlocSelector<
                                                        ResetPasswordBloc,
                                                        ResetPasswordState,
                                                        TextEditingController?>(
                                                    selector: (state) => state
                                                        .newpasswordController,
                                                    builder: (context,
                                                        newpasswordController) {
                                                      return CustomTextFormField(
                                                          controller:
                                                              newpasswordController,
                                                          hintText:
                                                              "lbl_new_password"
                                                                  .tr,
                                                          textInputType:
                                                              TextInputType
                                                                  .visiblePassword,
                                                          validator: (value) {
                                                            if (value == null ||
                                                                (!isValidPassword(
                                                                    value,
                                                                    isRequired:
                                                                        true))) {
                                                              return "err_msg_please_enter_valid_password"
                                                                  .tr;
                                                            }
                                                            return null;
                                                          },
                                                          obscureText: true,
                                                          contentPadding:
                                                              EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          7.h));
                                                    })),
                                            SizedBox(height: 62.v),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 35.h, right: 36.h),
                                                child: BlocSelector<
                                                        ResetPasswordBloc,
                                                        ResetPasswordState,
                                                        TextEditingController?>(
                                                    selector: (state) => state
                                                        .confirmpasswordController,
                                                    builder: (context,
                                                        confirmpasswordController) {
                                                      return CustomTextFormField(
                                                          controller:
                                                              confirmpasswordController,
                                                          hintText:
                                                              "msg_confirm_password"
                                                                  .tr,
                                                          textInputAction:
                                                              TextInputAction
                                                                  .done,
                                                          textInputType:
                                                              TextInputType
                                                                  .visiblePassword,
                                                          validator: (value) {
                                                            if (value == null ||
                                                                (!isValidPassword(
                                                                    value,
                                                                    isRequired:
                                                                        true))) {
                                                              return "err_msg_please_enter_valid_password"
                                                                  .tr;
                                                            }
                                                            return null;
                                                          },
                                                          obscureText: true,
                                                          contentPadding:
                                                              EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          7.h));
                                                    })),
                                            SizedBox(height: 67.v),
                                            CustomElevatedButton(
                                                text: "lbl_submit".tr,
                                                margin: EdgeInsets.only(
                                                    left: 35.h, right: 36.h),
                                                onPressed: () {
                                                  onTapSubmit(context);
                                                }),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRedOpenedBook,
                                                height: 136.v,
                                                width: 147.h,
                                                alignment: Alignment.centerLeft)
                                          ]))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgSmilingManWearing,
                                  height: 136.v,
                                  width: 159.h,
                                  alignment: Alignment.topRight,
                                  margin:
                                      EdgeInsets.only(top: 210.v, right: 4.h)),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 31.h, top: 93.v, right: 129.h),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("lbl_reset".tr,
                                                style: theme
                                                    .textTheme.displayMedium),
                                            Text("lbl_password".tr,
                                                style: theme
                                                    .textTheme.displayMedium)
                                          ])))
                            ])))))));
  }

  /// Navigates to the resetPasswordtwoScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.resetPasswordtwoScreen,
    );
  }
}
