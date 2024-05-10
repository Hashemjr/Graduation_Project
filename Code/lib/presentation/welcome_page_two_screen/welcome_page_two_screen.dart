import 'package:flutter/material.dart';
import 'package:chineasy/core/app_export.dart';

class WelcomePageTwoScreen extends StatelessWidget {
  const WelcomePageTwoScreen({Key? key})
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
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 8.v,
                  width: 12.h,
                  margin: EdgeInsets.only(
                    left: 110.h,
                    top: 105.v,
                  ),
                  decoration: BoxDecoration(),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(23.h, 144.v, 10.h, 123.v),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 7.v),
                        child: Text(
                          "Chin",
                          style: theme.textTheme.displayLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 7.v),
                        child: Text(
                          "easy",
                          style: theme.textTheme.displayLarge,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgDragon,
                width: 200.h,
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  bottom: 80.v,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    //);
  }
}
