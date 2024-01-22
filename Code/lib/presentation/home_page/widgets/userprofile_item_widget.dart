import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 148.v,
        width: 272.h,
        margin: EdgeInsets.only(
          left: 171.h,
          bottom: 3.v,
        ),
        decoration: AppDecoration.outlineRed,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomImageView(
              imagePath: userprofileItemModelObj?.userImage,
              height: 127.v,
              width: 209.h,
              alignment: Alignment.bottomRight,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: 146.v,
                width: 230.h,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 146.v,
                        width: 230.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            20.h,
                          ),
                          gradient: LinearGradient(
                            begin: Alignment(0.07, 1),
                            end: Alignment(0.99, 0.01),
                            colors: [
                              appTheme.gray90002,
                              appTheme.red90001,
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 18.h,
                          top: 42.v,
                        ),
                        child: Text(
                          userprofileItemModelObj.foodText!,
                          style: CustomTextStyles.displaySmallPoppins,
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
