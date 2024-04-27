import '../models/coursescard1_item_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Coursescard1ItemWidget extends StatelessWidget {
  Coursescard1ItemWidget(
    this.coursescard1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Coursescard1ItemModel coursescard1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 148.v,
        width: 297.h,
        decoration: AppDecoration.outlineGray90099,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Container(
                  height: 140.v,
                  width: 297.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 5.v,
                  ),
                  decoration: AppDecoration.gradientGrayToRed.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse192,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        radius: BorderRadius.circular(
                          20.h,
                        ),
                        alignment: Alignment.bottomLeft,
                        icon: '',
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse193,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        radius: BorderRadius.circular(
                          20.h,
                        ),
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 20.h),
                        icon: '',
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          margin: EdgeInsets.only(left: 38.h),
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
                                icon: '',
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  coursescard1ItemModelObj.userText!,
                                  style:
                                      CustomTextStyles.titleMediumPoppinsRed400,
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
            CustomImageView(
              imagePath: coursescard1ItemModelObj.courseImage,
              height: 140.v,
              width: 172.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(right: 2.h),
              icon: '',
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 115.h,
                margin: EdgeInsets.only(
                  left: 12.h,
                  top: 25.v,
                ),
                child: Text(
                  coursescard1ItemModelObj.courseText!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.headlineSmallSemiBold.copyWith(
                    height: 1.46,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 5.v,
                ),
                child: Text(
                  coursescard1ItemModelObj.commonText!,
                  style: CustomTextStyles.bodyMediumRed400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
