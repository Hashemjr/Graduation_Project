import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeAlataBlack90001 =>
      theme.textTheme.bodyLarge!.alata.copyWith(
        color: appTheme.black90001,
      );
  static get bodyMediumMontserratDeeporangeA700 =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: appTheme.deepOrangeA700,
        fontSize: 14.fSize,
      );
  static get bodyMediumOutfitGray400 =>
      theme.textTheme.bodyMedium!.outfit.copyWith(
        color: appTheme.gray400,
        fontSize: 14.fSize,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.7),
      );
  static get bodyMediumRed400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.red400,
      );
  static get bodyMediumRobotoPrimary =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get bodySmallGray30001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray30001,
      );
  static get bodySmallOoohBabyPrimary =>
      theme.textTheme.bodySmall!.ooohBaby.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.85),
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallSFProTextDeeporangeA700 =>
      theme.textTheme.bodySmall!.sFProText.copyWith(
        color: appTheme.deepOrangeA700,
      );
  static get bodySmallSFProTextGray90003 =>
      theme.textTheme.bodySmall!.sFProText.copyWith(
        color: appTheme.gray90003,
      );
  static get bodySmallSFProTextRed900 =>
      theme.textTheme.bodySmall!.sFProText.copyWith(
        color: appTheme.red900,
      );
  static get bodySmallSFProTextRed90003 =>
      theme.textTheme.bodySmall!.sFProText.copyWith(
        color: appTheme.red90003,
      );
  // Display text style
  static get displayLargePrimary => theme.textTheme.displayLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get displaySmallPoppins =>
      theme.textTheme.displaySmall!.poppins.copyWith(
        fontSize: 35.fSize,
      );
  static get displaySmallPoppinsBold =>
      theme.textTheme.displaySmall!.poppins.copyWith(
        fontWeight: FontWeight.w700,
      );
  // Headline text style
  static get headlineMediumPoppinsPrimary =>
      theme.textTheme.headlineMedium!.poppins.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.7),
        fontSize: 28.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallGray90002 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray90002,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallSemiBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeBlue400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blue400,
      );
  static get labelLargeGray50002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50002,
      );
  static get labelLargeInterBluegray400 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterGray50001 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray50001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeInterff9098a3 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: Color(0XFF9098A3),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProTextDeeporangeA700 =>
      theme.textTheme.labelLarge!.sFProText.copyWith(
        color: appTheme.deepOrangeA700,
      );
  static get labelLargeSecondaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeffa3a3a3 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFA3A3A3),
      );
  static get labelLargeffa3a3a3Bold => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFA3A3A3),
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeInterBlack90001 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOutfitPrimary =>
      theme.textTheme.titleLarge!.outfit.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePaytoneOnePrimary =>
      theme.textTheme.titleLarge!.paytoneOne.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 20.fSize,
      );
  static get titleLargePoppinsBlack900 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargePoppinsPrimary =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterffffffff =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOutfit => theme.textTheme.titleMedium!.outfit.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumRed400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red400,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmall7fffffff => theme.textTheme.titleSmall!.copyWith(
        color: Color(0X7FFFFFFF),
      );
  static get titleSmallBlack90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
      );
  static get titleSmallBlack90001_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001.withOpacity(0.3),
      );
  static get titleSmallDeeporangeA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepOrangeA700,
      );
  static get titleSmallGray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray500,
      );
  static get titleSmallGray50003 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50003,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallLime900a2 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lime900A2,
      );
  static get titleSmallMontserratDeeporangeA700 =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.deepOrangeA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPoppinsErrorContainer =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsGray50002 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray50002,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsGray900 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.gray900,
      );
  static get titleSmallPoppinsPrimary =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPoppinsPrimary15 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 15.fSize,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallRobotoBluegray800 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallff9098a3 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF9098A3),
      );
  static get titleSmallff9098a3_1 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF9098A3),
      );
  static get titleSmallffb6b6b6 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFB6B6B6),
      );
  static get titleSmallfffffefd => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFFFFEFD),
      );
}

extension on TextStyle {
  TextStyle get alata {
    return copyWith(
      fontFamily: 'Alata',
    );
  }

  TextStyle get outfit {
    return copyWith(
      fontFamily: 'Outfit',
    );
  }

  TextStyle get ooohBaby {
    return copyWith(
      fontFamily: 'Oooh Baby',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get paytoneOne {
    return copyWith(
      fontFamily: 'Paytone One',
    );
  }

  TextStyle get oxygen {
    return copyWith(
      fontFamily: 'Oxygen',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get righteous {
    return copyWith(
      fontFamily: 'Righteous',
    );
  }
}
