import 'bloc/welcome_page_two_bloc.dart';
import 'models/welcome_page_two_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';

class WelcomePageTwoScreen extends StatelessWidget {
  const WelcomePageTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomePageTwoBloc>(
      create: (context) => WelcomePageTwoBloc(WelcomePageTwoState(
        welcomePageTwoModelObj: WelcomePageTwoModel(),
      ))
        ..add(WelcomePageTwoInitialEvent()),
      child: WelcomePageTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomePageTwoBloc, WelcomePageTwoState>(
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
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 8.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildStatusRow(context),
                    Spacer(
                      flex: 46,
                    ),
                    Container(
                      height: 342.v,
                      width: 259.h,
                      margin: EdgeInsets.only(left: 18.h),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin: EdgeInsets.only(right: 52.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 95.h,
                                vertical: 105.v,
                              ),
                              decoration: AppDecoration.outlineBlack,
                              child: Container(
                                height: 8.v,
                                width: 12.h,
                                decoration: BoxDecoration(),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 78.v,
                              width: 232.h,
                              margin: EdgeInsets.only(bottom: 119.v),
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "lbl_chin".tr,
                                      style: theme.textTheme.displayLarge,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Text(
                                      "lbl_easy".tr,
                                      style: theme.textTheme.displayLarge,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(
                      flex: 53,
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
  Widget _buildStatusRow(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 3.v),
          child: Text(
            "lbl_9_30".tr,
            style: CustomTextStyles.bodyMediumRobotoPrimary,
          ),
        ),
        Spacer(
          flex: 53,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgPlay,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        Spacer(
          flex: 46,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgWifi,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 4.v),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgIcSignalCellular4Bar,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 4.v),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgBattery,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 4.v),
        ),
      ],
    );
  }
}
