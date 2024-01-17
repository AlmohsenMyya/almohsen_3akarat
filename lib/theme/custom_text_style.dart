import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumReadexProPrimaryContainer =>
      theme.textTheme.bodyMedium!.readexPro.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumff16161a => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF16161A),
      );
  static get bodyMediumff74778b => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF74778B),
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodySmallSFProDisplay => theme.textTheme.bodySmall!.sFProDisplay;
  static get bodySmallSecondaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodySmallff16161a => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF16161A),
      );
  static get bodySmallff74778b => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XFF74778B),
      );
  // Headline text style
  static get headlineSmallGray300 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray300,
      );
  static get headlineSmallSemiBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallWhiteA700 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get headlineSmallff16161a => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFF16161A),
      );
  static get headlineSmallff1786f9 => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFF1786F9),
      );
  // Label text style
  static get labelLargeInterBluegray900 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.blueGray900,
        fontSize: 13.fSize,
      );
  static get labelLargeOnError => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get labelLargeOnErrorSemiBold => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get labelLargePrimaryContainerBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePrimaryContainerSemiBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProDisplayPrimary =>
      theme.textTheme.labelLarge!.sFProDisplay.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeSecondaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeff16161a => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF16161A),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeff1786f9 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF1786F9),
        fontWeight: FontWeight.w700,
      );
  static get labelMediumOnError => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumOnPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w800,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumSFProDisplayGray300 =>
      theme.textTheme.labelMedium!.sFProDisplay.copyWith(
        color: appTheme.gray300,
      );
  static get labelMediumSecondaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumff66687a => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFF66687A),
      );
  // Title text style
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBold_2 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray300,
      );
  static get titleMediumGray50 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get titleMediumPrimaryBold => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimarySemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBluegray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray500,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallBluegray500Medium =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray500,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray500_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray500,
      );
  static get titleSmallBluegray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray600,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallExtraBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get titleSmallGray300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray300,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimaryBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallff16161a => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF16161A),
      );
  static get titleSmallff16161aMedium => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF16161A),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallff1786f9 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF1786F9),
      );
  static get titleSmallff66687a => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF66687A),
        fontWeight: FontWeight.w800,
      );
  static get titleSmallff66687aMedium => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF66687A),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallff74778b => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF74778B),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallff74778b_1 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF74778B),
      );
}

extension on TextStyle {
  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get readexPro {
    return copyWith(
      fontFamily: 'Readex Pro',
    );
  }
}
