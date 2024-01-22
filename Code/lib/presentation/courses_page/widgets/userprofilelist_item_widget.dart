import '../models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 148.v,
        width: 297.h,
        decoration: AppDecoration.outlineGray,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 5.v,
                ),
                decoration: AppDecoration.gradientGrayToRed900.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userprofilelistItemModelObj.common!,
                      style: CustomTextStyles.bodyMediumRed400,
                    ),
                    SizedBox(
                      width: 115.h,
                      child: Text(
                        userprofilelistItemModelObj.beginnerCourse!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.headlineSmallSemiBold.copyWith(
                          height: 1.46,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.v,
                      width: 78.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse192,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(
                              20.h,
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse193,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            radius: BorderRadius.circular(
                              20.h,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse194,
                                    height: 40.adaptSize,
                                    width: 40.adaptSize,
                                    radius: BorderRadius.circular(
                                      20.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      userprofilelistItemModelObj.numberText!,
                                      style: CustomTextStyles.titleMediumRed400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: userprofilelistItemModelObj?.commonImage,
              height: 140.v,
              width: 172.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 2.h),
            ),
          ],
        ),
      ),
    );
  }
}
