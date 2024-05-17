import '../models/medalliontilelist_item_model.dart';
import 'package:chineasy/core/app_export.dart';
import 'package:chineasy/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MedalliontilelistItemWidget extends StatelessWidget {
  MedalliontilelistItemWidget(
    this.medalliontilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  final MedalliontilelistItemModel medalliontilelistItemModelObj;

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
                    vertical: 17.v,
                  ),
                  decoration: AppDecoration.outlineGrayCc.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder24,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: medalliontilelistItemModelObj.imageId,
                        height: 47.adaptSize,
                        width: 50.adaptSize,
                      ),
                      SizedBox(height: 15.v),
                      SizedBox(
                        width: 124.h,
                        child: Text(
                          medalliontilelistItemModelObj.courseName ?? '',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleSmallInterBlack900,
                        ),
                      ),
                      SizedBox(height: 19.v),
                      if (medalliontilelistItemModelObj.id == '1') ...[
                        CustomElevatedButton(
                          height: 28.v,
                          width: 132.h,
                          text: "msg_bronze_certified".tr,
                          buttonStyle: CustomButtonStyles.fillGray,
                          buttonTextStyle:
                              CustomTextStyles.titleSmallInterGray50002,
                        ),
                      ] else if (medalliontilelistItemModelObj.id == '2') ...[
                        CustomElevatedButton(
                          height: 28.v,
                          width: 132.h,
                          text: "Silver Certified",
                          buttonStyle: CustomButtonStyles.fillSilver,
                          buttonTextStyle:
                              CustomTextStyles.titleSmallInterSilver50002,
                        ),
                      ] else if (medalliontilelistItemModelObj.id == '3') ...[
                        CustomElevatedButton(
                          height: 28.v,
                          width: 132.h,
                          text: "Gold Certified",
                          buttonStyle: CustomButtonStyles.fillGold,
                          buttonTextStyle:
                              CustomTextStyles.titleSmallInterGold50002,
                        ),
                      ],
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

