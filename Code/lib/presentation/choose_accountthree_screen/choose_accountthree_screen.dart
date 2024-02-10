import 'bloc/choose_accountthree_bloc.dart';
import 'models/choose_accountthree_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:chineasy/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ChooseAccountthreeScreen extends StatelessWidget {
  const ChooseAccountthreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ChooseAccountthreeBloc>(
      create: (context) => ChooseAccountthreeBloc(ChooseAccountthreeState(
        chooseAccountthreeModelObj: ChooseAccountthreeModel(),
      ))
        ..add(ChooseAccountthreeInitialEvent()),
      child: ChooseAccountthreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChooseAccountthreeBloc, ChooseAccountthreeState>(
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
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.customBorderTL40,
                        ),
                        child: Container(
                          height: 582.v,
                          width: double.maxFinite,
                          decoration:
                              AppDecoration.gradientDeepOrangeAToRedA.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL40,
                          ),
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgRedOpenedBook156x171,
                                height: 156.v,
                                width: 171.h,
                                alignment: Alignment.bottomLeft,
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 82.h,
                                    top: 87.v,
                                    right: 82.h,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          margin: EdgeInsets.only(right: 7.h),
                                          decoration:
                                              AppDecoration.outlinePrimary,
                                          child: Text(
                                            "lbl_choose".tr,
                                            style: theme.textTheme.displaySmall,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 14.v),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.img3dOthers1177x177,
                                        height: 177.adaptSize,
                                        width: 177.adaptSize,
                                        radius: BorderRadius.circular(
                                          88.h,
                                        ),
                                      ),
                                      SizedBox(height: 4.v),
                                      Divider(),
                                      SizedBox(height: 62.v),
                                      CustomElevatedButton(
                                        height: 55.v,
                                        text: "lbl_signup".tr,
                                        margin: EdgeInsets.only(
                                          left: 15.h,
                                          right: 12.h,
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
                    _buildTitleHeadStack(context),
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
  Widget _buildTitleHeadStack(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 251.v,
        width: 350.h,
        margin: EdgeInsets.only(top: 45.v),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: 251.v,
                width: 122.h,
                child: Stack(
                  alignment: Alignment.center,
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
                  top: 38.v,
                  right: 106.h,
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
                    SizedBox(height: 11.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 183.h,
                        margin: EdgeInsets.only(left: 60.h),
                        child: Text(
                          "msg_embrace_the_happiness".tr,
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyLarge,
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
