import 'package:flutter/material.dart';
import 'package:chineasy/core/app_export.dart';

class AppDecoration {
  // Background decorations
  static BoxDecoration get background2 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.black900,
            appTheme.gray90001,
          ],
        ),
      );

  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Gradient decorations
  static BoxDecoration get gradientDeepOrangeAToRedA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.16, 0.06),
          end: Alignment(1, 1.06),
          colors: [
            appTheme.deepOrangeA70033,
            appTheme.red30033,
            appTheme.redA70033,
          ],
        ),
      );
  static BoxDecoration get gradientGrayToRed => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.gray90003,
            appTheme.red900,
          ],
        ),
      );
  static BoxDecoration get gradientOnErrorContainerToRed => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.07, 1),
          end: Alignment(0.99, 0.01),
          colors: [
            theme.colorScheme.onErrorContainer.withOpacity(0.6),
            appTheme.red90001.withOpacity(0.6),
          ],
        ),
      );
  static BoxDecoration get gradientOnErrorContainerToRed90001 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray100.withOpacity(0.5),
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.07, 1),
          end: Alignment(0.99, 0.01),
          colors: [
            theme.colorScheme.onErrorContainer,
            appTheme.red90001,
          ],
        ),
      );
  static BoxDecoration get gradientOnErrorContainerToRed900011 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.07, 1),
          end: Alignment(0.99, 0.01),
          colors: [
            theme.colorScheme.onErrorContainer,
            appTheme.red90001,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToOnPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.71, 0.89),
          colors: [
            theme.colorScheme.primary,
            appTheme.red200D1,
            theme.colorScheme.onPrimary,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToOnPrimary1 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.71, 0.89),
          colors: [
            theme.colorScheme.primary,
            appTheme.red200D1,
            theme.colorScheme.onPrimary,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration();
  static BoxDecoration get outlineGray => BoxDecoration();
  static BoxDecoration get outlineGray90099 => BoxDecoration();
  static BoxDecoration get outlineGrayCc => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.gray100Cc,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration();
  static BoxDecoration get outlinePrimary1 => BoxDecoration();
  static BoxDecoration get outlineRed => BoxDecoration();
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get circleBorder36 => BorderRadius.circular(
        36.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL17 => BorderRadius.vertical(
        bottom: Radius.circular(17.h),
      );
  static BorderRadius get customBorderBL24 => BorderRadius.vertical(
        bottom: Radius.circular(24.h),
      );
  static BorderRadius get customBorderTL36 => BorderRadius.vertical(
        top: Radius.circular(36.h),
      );
  static BorderRadius get customBorderTL40 => BorderRadius.vertical(
        top: Radius.circular(40.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get roundedBorder32 => BorderRadius.circular(
        32.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
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
