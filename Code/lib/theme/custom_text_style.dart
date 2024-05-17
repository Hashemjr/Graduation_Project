import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeAlataBlack900 =>
      theme.textTheme.bodyLarge!.alata.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get bodyLargeAlataBlack90001 =>
      theme.textTheme.bodyLarge!.alata.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargePoppinsPrimary =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
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
  static get bodyMediumPoppinsRed400 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.red400,
        fontSize: 15.fSize,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.7),
      );
  static get bodyMediumRed400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.red400,
      );
  static get bodySmallOnError => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Display text style
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
  static get headlineSmallGray90001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray90001,
        fontSize: 24.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallOnErrorContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
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
  static get labelLargeGray500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get labelLargeGray50001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50001,
      );
  static get labelLargeGray50003 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50003,
      );
  static get labelLargeInterErrorContainer =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 13.fSize,
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
  static get titleLargeInterBlack900 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 21.fSize,
      );
  static get titleLargeOutfitPrimary =>
      theme.textTheme.titleLarge!.outfit.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePaytoneOnePrimary =>
      theme.textTheme.titleLarge!.paytoneOne.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w400,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInter => theme.textTheme.titleMedium!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOutfit => theme.textTheme.titleMedium!.outfit.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPoppins =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumPoppinsMedium =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsRed400 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.red400,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsSemiBold =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray500,
      );
  static get titleSmallGray50001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50001,
      );
  static get titleSmallGray50003 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray50003,
      );
  static get titleSmallGray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray90002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInter => theme.textTheme.titleSmall!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInter7fffffff =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: Color(0X7FFFFFFF),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterBlack900 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterBlack900SemiBold =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.3),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterBluegray400 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterDeeporangeA700 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.deepOrangeA700,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterErrorContainer =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get titleSmallInterGray500 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterGray50001 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray50001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterGray50002 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray50002,
        fontWeight: FontWeight.w600,
      );
      static get titleSmallInterSilver50002 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.silver90003,
        fontWeight: FontWeight.w600,
      );
      static get titleSmallInterGold50002 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gold90003,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterLime900a2 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.lime900A2,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterff9098a3 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: Color(0XFF9098A3),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterff9098a3SemiBold =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: Color(0XFF9098A3),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterffb6b6b6 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: Color(0XFFB6B6B6),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterfffffefd =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: Color(0XFFFFFEFD),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallMontserratDeeporangeA700 =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.deepOrangeA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
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

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
