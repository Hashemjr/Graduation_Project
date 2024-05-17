import 'dart:ui';
import 'package:chineasy/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray40033,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9.h),
        ),
      );
      static ButtonStyle get fillSilver => ElevatedButton.styleFrom(
        backgroundColor: appTheme.silver400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9.h),
        ),
      );
      static ButtonStyle get fillGold => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gold400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9.h),
        ),
      );
  static ButtonStyle get fillGrayTL91 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray20001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9.h),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineTL122 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.deepOrangeA700.withOpacity(0.53),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
