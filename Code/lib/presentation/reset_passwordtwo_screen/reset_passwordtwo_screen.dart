import 'bloc/reset_passwordtwo_bloc.dart';
import 'models/reset_passwordtwo_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:flutter/material.dart';

class ResetPasswordtwoScreen extends StatelessWidget {
  const ResetPasswordtwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPasswordtwoBloc>(
      create: (context) => ResetPasswordtwoBloc(ResetPasswordtwoState(
        resetPasswordtwoModelObj: ResetPasswordtwoModel(),
      ))
        ..add(ResetPasswordtwoInitialEvent()),
      child: ResetPasswordtwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordtwoBloc, ResetPasswordtwoState>(
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
                    appTheme.black900,
                    appTheme.gray90001,
                  ],
                ),
              ),
              child: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    _buildBackgroundSection(context),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 31.h,
                          top: 93.v,
                          right: 129.h,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_reset".tr,
                              style: theme.textTheme.displayMedium,
                            ),
                            Text(
                              "lbl_password".tr,
                              style: theme.textTheme.displayMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgHappySmilingYoung,
                      height: 192.v,
                      width: 185.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 161.v),
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
  Widget _buildBackgroundSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: AppDecoration.gradientDeepOrangeAToRedA.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL40,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 38.v),
            Text(
              "lbl_success".tr,
              style: CustomTextStyles.displaySmallPoppinsBold,
            ),
            SizedBox(height: 87.v),
            Container(
              width: 307.h,
              margin: EdgeInsets.only(
                left: 25.h,
                right: 27.h,
              ),
              child: Text(
                "msg_your_password_reset".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.headlineMediumPoppinsPrimary,
              ),
            ),
            SizedBox(height: 78.v),
            CustomImageView(
              imagePath: ImageConstant.imgRedOpenedBook,
              height: 136.v,
              width: 147.h,
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
      ),
    );
  }
}
