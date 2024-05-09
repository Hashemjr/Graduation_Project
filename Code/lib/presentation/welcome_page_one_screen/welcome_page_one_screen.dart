import 'package:chineasy/core/app_export.dart';
import 'package:flutter/material.dart';

class WelcomePageOneScreen extends StatelessWidget {
  const WelcomePageOneScreen({Key? key})
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
          child: Container(
            height: SizeUtils.height,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 34.h,
              vertical: 227.v,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(right: 85.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 95.h,
                      vertical: 105.v,
                    ),
                    decoration: AppDecoration.outlineBlack,
                    child: Container(
                      height: 8.v,
                      width: 12.h,
                      decoration: BoxDecoration(),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 78.v,
                    width: 232.h,
                    margin: EdgeInsets.only(bottom: 123.v),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Chin",
                            style: theme.textTheme.displayLarge,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "easy",
                            style: theme.textTheme.displayLarge,
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
    );
  }
}
