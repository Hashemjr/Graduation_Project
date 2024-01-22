import 'package:flutter/material.dart';
import 'package:grad_project/core/app_export.dart';

class AppDecoration {
  // Background decorations
  static BoxDecoration get background2 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.black90001,
            appTheme.gray90001,
          ],
        ),
      );

  // Card decorations
  static BoxDecoration get card => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.07, 1),
          end: Alignment(0.99, 0.01),
          colors: [
            appTheme.gray90002,
            appTheme.red90001,
          ],
        ),
      );

  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90001,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillCyan => BoxDecoration(
        color: appTheme.cyan300,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillGray20002 => BoxDecoration(
        color: appTheme.gray20002,
      );
  static BoxDecoration get fillGray300 => BoxDecoration(
        color: appTheme.gray300,
      );
  static BoxDecoration get fillGray40033 => BoxDecoration(
        color: appTheme.gray40033,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Gradient decorations
  static BoxDecoration get gradientGrayToRed => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.07, 1),
          end: Alignment(0.99, 0.01),
          colors: [
            appTheme.gray90002,
            appTheme.red90001,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToRed900 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.gray90003,
            appTheme.red900,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToRed90001 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray100.withOpacity(0.5),
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.07, 1),
          end: Alignment(0.99, 0.01),
          colors: [
            appTheme.gray90002,
            appTheme.red90001,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToRedD => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.71, 0.89),
          colors: [
            theme.colorScheme.primary,
            appTheme.red200D1,
            appTheme.red900D3,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration();
  static BoxDecoration get outlineGray => BoxDecoration();
  static BoxDecoration get outlineGrayCc => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.gray100Cc,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnError => BoxDecoration();
  static BoxDecoration get outlinePrimary => BoxDecoration();
  static BoxDecoration get outlinePrimary1 => BoxDecoration();
  static BoxDecoration get outlinePrimary2 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(0.3),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary3 => BoxDecoration();
  static BoxDecoration get outlineRed => BoxDecoration();
  static BoxDecoration get outlineRed9009901 => BoxDecoration();
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder23 => BorderRadius.circular(
        23.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL17 => BorderRadius.vertical(
        bottom: Radius.circular(17.h),
      );
  static BorderRadius get customBorderBL24 => BorderRadius.vertical(
        bottom: Radius.circular(24.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        2.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder27 => BorderRadius.circular(
        27.h,
      );
  static BorderRadius get roundedBorder32 => BorderRadius.circular(
        32.h,
      );
  static BorderRadius get roundedBorder38 => BorderRadius.circular(
        38.h,
      );
  static BorderRadius get roundedBorder6 => BorderRadius.circular(
        6.h,
      );
  static BorderRadius get roundedBorder71 => BorderRadius.circular(
        71.h,
      );
  static BorderRadius get roundedBorder78 => BorderRadius.circular(
        78.h,
      );
  static BorderRadius get roundedBorder84 => BorderRadius.circular(
        84.h,
      );
  static BorderRadius get roundedBorder88 => BorderRadius.circular(
        88.h,
      );
  static BorderRadius get roundedBorder9 => BorderRadius.circular(
        9.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
