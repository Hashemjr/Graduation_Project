import '../models/medalliontile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';
import 'package:grad_project/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class MedalliontileItemWidget extends StatelessWidget {
  MedalliontileItemWidget(
    this.medalliontileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MedalliontileItemModel medalliontileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 172.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
          height: 189.v,
          width: 172.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 177.v,
                  width: 170.h,
                  decoration: BoxDecoration(),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 19.h,
                    vertical: 18.v,
                  ),
                  decoration: AppDecoration.outlineGrayCc.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder23,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: medalliontileItemModelObj?.courseImage,
                        height: 49.adaptSize,
                        width: 49.adaptSize,
                      ),
                      SizedBox(height: 17.v),
                      SizedBox(
                        width: 124.h,
                        child: Text(
                          medalliontileItemModelObj.courseTitle!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleSmallBlack90001,
                        ),
                      ),
                      SizedBox(height: 19.v),
                      CustomElevatedButton(
                        height: 28.v,
                        width: 132.h,
                        text: "msg_bronze_certified".tr,
                        buttonStyle: CustomButtonStyles.fillGrayTL9,
                        buttonTextStyle:
                            CustomTextStyles.labelLargeInterGray50001,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
