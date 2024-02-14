import 'bloc/choose_accounttwo_bloc.dart';
import 'models/choose_accounttwo_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:chineasy/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ChooseAccounttwoScreen extends StatelessWidget {
  const ChooseAccounttwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ChooseAccounttwoBloc>(
      create: (context) => ChooseAccounttwoBloc(ChooseAccounttwoState(
        chooseAccounttwoModelObj: ChooseAccounttwoModel(),
      ))
        ..add(ChooseAccounttwoInitialEvent()),
      child: ChooseAccounttwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChooseAccounttwoBloc, ChooseAccounttwoState>(
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
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        decoration:
                            AppDecoration.gradientDeepOrangeAToRedA.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL40,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 87.v),
                            Container(
                              decoration: AppDecoration.outlinePrimary,
                              child: Text(
                                "lbl_choose".tr,
                                style: theme.textTheme.displaySmall,
                              ),
                            ),
                            SizedBox(height: 17.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgEcu11177x177,
                              height: 177.adaptSize,
                              width: 177.adaptSize,
                              radius: BorderRadius.circular(
                                88.h,
                              ),
                            ),
                            SizedBox(height: 8.v),
                            SizedBox(
                              width: 196.h,
                              child: Divider(),
                            ),
                            SizedBox(height: 55.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                height: 186.v,
                                width: 265.h,
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgRedOpenedBook156x171,
                                      height: 156.v,
                                      width: 171.h,
                                      alignment: Alignment.bottomLeft,
                                    ),
                                    CustomElevatedButton(
                                      height: 55.v,
                                      width: 169.h,
                                      text: "lbl_signup".tr,
                                      alignment: Alignment.topRight,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    _buildTitleSection(context),
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
  Widget _buildTitleSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 251.v,
        width: 350.h,
        margin: EdgeInsets.only(top: 15 .v,left:10.v),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: 251.v,
                width: 125.h,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBackGray90002,
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                    top:15.v, right: 106.h
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_welcome_to".tr,
                      style: CustomTextStyles.titleLargePaytoneOnePrimary,
                    ),
                    Container(
                      decoration: AppDecoration.outlineBlack,
                      child: Text(
                        "msg_joyful_mandarin".tr,
                        style: CustomTextStyles.titleLargePaytoneOnePrimary,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 200.h,
                        margin: EdgeInsets.only(top: 5.v,right: 8.h),
                        child: Text(
                          "msg_embrace_the_happiness".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyLarge?.copyWith(
                              fontSize: 22.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
