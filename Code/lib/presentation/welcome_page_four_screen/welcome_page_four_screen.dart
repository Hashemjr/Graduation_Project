import 'package:flutter/material.dart';
import 'package:chineasy/core/app_export.dart';

class WelcomePageFourScreen extends StatelessWidget {
  const WelcomePageFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
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
                appTheme.gray900,
              ],
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: CustomImageView(
              imagePath: ImageConstant.imgAsset51800x360,
              width: 360.h,
              alignment: Alignment.center,
              icon: '',
            ),
          ),
        ),
      ),
    );
  }
}
