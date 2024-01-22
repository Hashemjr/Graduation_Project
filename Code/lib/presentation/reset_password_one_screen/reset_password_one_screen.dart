import 'bloc/reset_password_one_bloc.dart';
import 'models/reset_password_one_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';

class ResetPasswordOneScreen extends StatelessWidget {
  const ResetPasswordOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPasswordOneBloc>(
      create: (context) => ResetPasswordOneBloc(ResetPasswordOneState(
        resetPasswordOneModelObj: ResetPasswordOneModel(),
      ))
        ..add(ResetPasswordOneInitialEvent()),
      child: ResetPasswordOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordOneBloc, ResetPasswordOneState>(
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
                  colors: [
                    appTheme.black90001,
                    appTheme.gray90001,
                  ],
                ),
              ),
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    SizedBox(height: 93.v),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 31.h),
                              child: Text(
                                "lbl_reset".tr,
                                style: theme.textTheme.displayMedium,
                              ),
                            ),
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
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgBackground,
                                            height: 513.v,
                                            width: 360.h,
                                            alignment: Alignment.topCenter,
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRedOpenedBook234x142,
                                            height: 234.v,
                                            width: 142.h,
                                            radius: BorderRadius.circular(
                                              71.h,
                                            ),
                                            alignment: Alignment.bottomLeft,
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                              width: 92.h,
                                              margin:
                                                  EdgeInsets.only(bottom: 55.v),
                                              child: Text(
                                                "lbl_sign_in_using".tr,
                                                maxLines: null,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: CustomTextStyles
                                                    .bodySmallPrimary,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 88.v),
                                              child: Text(
                                                "lbl_or".tr,
                                                textAlign: TextAlign.center,
                                                style: CustomTextStyles
                                                    .titleLargePoppinsPrimary,
                                              ),
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgGmailLogo,
                                            height: 45.adaptSize,
                                            width: 45.adaptSize,
                                            alignment: Alignment.bottomCenter,
                                            margin:
                                                EdgeInsets.only(bottom: 10.v),
                                          ),
                                          _buildSuccessMessage(context),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 31.h),
                                      child: Text(
                                        "lbl_password".tr,
                                        style: theme.textTheme.displayMedium,
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgHappySmilingYoung,
                                    height: 192.v,
                                    width: 185.h,
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(top: 7.v),
                                  ),
                                ],
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
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSuccessMessage(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 26.h,
          top: 70.v,
          right: 26.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "lbl_success".tr,
              style: CustomTextStyles.displaySmallPoppinsBold,
            ),
            SizedBox(height: 87.v),
            SizedBox(
              width: 307.h,
              child: Text(
                "msg_your_password_reset".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.headlineMediumPoppinsPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
