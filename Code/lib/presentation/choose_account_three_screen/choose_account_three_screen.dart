import 'bloc/choose_account_three_bloc.dart';
import 'models/choose_account_three_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';

class ChooseAccountThreeScreen extends StatelessWidget {
  const ChooseAccountThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ChooseAccountThreeBloc>(
      create: (context) => ChooseAccountThreeBloc(ChooseAccountThreeState(
        chooseAccountThreeModelObj: ChooseAccountThreeModel(),
      ))
        ..add(ChooseAccountThreeInitialEvent()),
      child: ChooseAccountThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChooseAccountThreeBloc, ChooseAccountThreeState>(
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
                    SizedBox(height: 8.v),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            _buildStatusRow(context),
                            SizedBox(height: 273.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                margin: EdgeInsets.only(left: 104.h),
                                decoration: AppDecoration.outlinePrimary,
                                child: Text(
                                  "lbl_choose".tr,
                                  style: theme.textTheme.displaySmall,
                                ),
                              ),
                            ),
                            SizedBox(height: 384.v),
                            _buildBackgroundStack(context),
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
  Widget _buildStatusRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildBackgroundStack(BuildContext context) {
    return SizedBox(
      height: 234.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBackground,
                  height: 31.v,
                  width: 360.h,
                ),
                SizedBox(height: 10.v),
                Container(
                  width: 169.h,
                  margin: EdgeInsets.symmetric(horizontal: 95.h),
                  padding: EdgeInsets.symmetric(horizontal: 44.h),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder27,
                  ),
                  child: Container(
                    width: 74.h,
                    margin: EdgeInsets.only(left: 7.h),
                    child: Text(
                      "lbl_signup".tr,
                      maxLines: null,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style:
                          CustomTextStyles.titleLargePoppinsBlack900.copyWith(
                        height: 1.57,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.v),
                Container(
                  decoration: AppDecoration.outlinePrimary1,
                  child: Text(
                    "lbl_choose".tr,
                    style: theme.textTheme.displaySmall,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: 234.v,
              width: 76.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRedOpenedBook,
                    height: 234.v,
                    width: 76.h,
                    radius: BorderRadius.circular(
                      38.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgAsset52,
                    height: 181.v,
                    width: 28.h,
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 8.v),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
