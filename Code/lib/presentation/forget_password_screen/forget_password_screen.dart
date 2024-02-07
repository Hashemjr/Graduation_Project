import 'bloc/forget_password_bloc.dart';
import 'models/forget_password_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:chineasy/core/utils/validation_functions.dart';
import 'package:chineasy/widgets/custom_elevated_button.dart';
import 'package:chineasy/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ForgetPasswordBloc>(
        create: (context) => ForgetPasswordBloc(
            ForgetPasswordState(forgetPasswordModelObj: ForgetPasswordModel()))
          ..add(ForgetPasswordInitialEvent()),
        child: ForgetPasswordScreen());
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
                child: Form(
                    key: _formKey,
                    child: SizedBox(
                        width: double.maxFinite,
                        child: Column(children: [
                          SizedBox(height: 98.v),
                          Expanded(
                              child: SingleChildScrollView(
                                  child: SizedBox(
                                      height: 703.v,
                                      width: double.maxFinite,
                                      child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Card(
                                                    clipBehavior:
                                                        Clip.antiAlias,
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
                                                                .bottomCenter,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgRedOpenedBook,
                                                                  height: 136.v,
                                                                  width: 147.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomLeft),
                                                              _buildLoginSection(
                                                                  context)
                                                            ])))),
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
                                                        left: 31.h,
                                                        right: 129.h),
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
                                                          Text(
                                                              "lbl_password".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .displayMedium)
                                                        ])))
                                          ]))))
                        ]))))));
  }

  /// Section Widget
  Widget _buildLoginSection(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 35.h, right: 35.h, bottom: 99.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: BlocSelector<ForgetPasswordBloc,
                              ForgetPasswordState, TextEditingController?>(
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
                      padding: EdgeInsets.only(left: 16.h, right: 30.h),
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
                                padding: EdgeInsets.only(left: 7.h),
                                child: Text("lbl_login2".tr,
                                    style:
                                        CustomTextStyles.titleMediumPoppins)))
                      ]))
                ])));
  }

  /// Navigates to the forgetPasswordoneScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.forgetPasswordoneScreen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtLOGIN(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
