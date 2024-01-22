import 'bloc/welcome_page_three_bloc.dart';
import 'models/welcome_page_three_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';

class WelcomePageThreeScreen extends StatelessWidget {
  const WelcomePageThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomePageThreeBloc>(
      create: (context) => WelcomePageThreeBloc(WelcomePageThreeState(
        welcomePageThreeModelObj: WelcomePageThreeModel(),
      ))
        ..add(WelcomePageThreeInitialEvent()),
      child: WelcomePageThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WelcomePageThreeBloc, WelcomePageThreeState>(
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
                    _buildStatus(context),
                    Spacer(
                      flex: 29,
                    ),
                    SizedBox(
                      width: 225.h,
                      child: Divider(
                        indent: 18.h,
                      ),
                    ),
                    Spacer(
                      flex: 16,
                    ),
                    Container(
                      height: 8.v,
                      width: 12.h,
                      margin: EdgeInsets.only(left: 118.h),
                      decoration: BoxDecoration(),
                    ),
                    SizedBox(height: 36.v),
                    Padding(
                      padding: EdgeInsets.only(left: 45.h),
                      child: Text(
                        "lbl_chin".tr,
                        style: theme.textTheme.displayLarge,
                      ),
                    ),
                    Spacer(
                      flex: 54,
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
  Widget _buildStatus(BuildContext context) {
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
